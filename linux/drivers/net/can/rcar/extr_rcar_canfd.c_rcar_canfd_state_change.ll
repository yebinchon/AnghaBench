; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.rcar_canfd_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_frame = type { i64 }
%struct.sk_buff = type { i32 }

@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"state: new %d, old %d: txerr %u, rxerr %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @rcar_canfd_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_state_change(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcar_canfd_channel*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.can_frame*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %14)
  store %struct.rcar_canfd_channel* %15, %struct.rcar_canfd_channel** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.net_device_stats* %17, %struct.net_device_stats** %8, align 8
  %18 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %7, align 8
  %19 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 96
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 96
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %28, i32* %11, align 4
  br label %38

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %32, %29
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %7, align 8
  %41 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %39, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %7, align 8
  %49 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @netdev_dbg(%struct.net_device* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %55, %struct.can_frame** %12)
  store %struct.sk_buff* %56, %struct.sk_buff** %13, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %45
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %101

64:                                               ; preds = %45
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  br label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  br label %79

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  store i32 %80, i32* %9, align 4
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @can_change_state(%struct.net_device* %81, %struct.can_frame* %82, i32 %83, i32 %84)
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %91 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %94 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = call i32 @netif_rx(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %59, %79, %38
  ret void
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
