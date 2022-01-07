; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_read_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_read_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_frame = type { i32, i64, i32 }
%struct.at91_priv = type { i32 }

@AT91_MID_MIDE = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@AT91_MSR_MRTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@AT91_MSR_MMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.can_frame*)* @at91_read_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_read_mb(%struct.net_device* %0, i32 %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.at91_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.at91_priv* %11, %struct.at91_priv** %7, align 8
  %12 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @AT91_MID(i32 %13)
  %15 = call i32 @at91_read(%struct.at91_priv* %12, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AT91_MID_MIDE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 0
  %23 = load i32, i32* @CAN_EFF_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CAN_EFF_FLAG, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %28 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 18
  %32 = load i32, i32* @CAN_SFF_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AT91_MSR(i32 %38)
  %40 = call i32 @at91_read(%struct.at91_priv* %37, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 15
  %44 = call i32 @get_can_dlc(i32 %43)
  %45 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @AT91_MSR_MRTR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load i32, i32* @CAN_RTR_FLAG, align 4
  %53 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %54 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %76

57:                                               ; preds = %36
  %58 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @AT91_MDL(i32 %59)
  %61 = call i32 @at91_read(%struct.at91_priv* %58, i32 %60)
  %62 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %63 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 0
  %66 = inttoptr i64 %65 to i32*
  store i32 %61, i32* %66, align 4
  %67 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @AT91_MDH(i32 %68)
  %70 = call i32 @at91_read(%struct.at91_priv* %67, i32 %69)
  %71 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %72 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 4
  %75 = inttoptr i64 %74 to i32*
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %57, %51
  %77 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @AT91_MID(i32 %78)
  %80 = load i32, i32* @AT91_MID_MIDE, align 4
  %81 = call i32 @at91_write(%struct.at91_priv* %77, i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %84 = call i32 @get_mb_rx_last(%struct.at91_priv* %83)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @AT91_MSR_MMI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %86, %76
  %92 = phi i1 [ false, %76 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @at91_rx_overflow_err(%struct.net_device* %97)
  br label %99

99:                                               ; preds = %96, %91
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @AT91_MID(i32) #1

declare dso_local i32 @AT91_MSR(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @AT91_MDL(i32) #1

declare dso_local i32 @AT91_MDH(i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_mb_rx_last(%struct.at91_priv*) #1

declare dso_local i32 @at91_rx_overflow_err(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
