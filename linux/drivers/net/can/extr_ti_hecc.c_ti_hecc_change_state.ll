; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_change_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ti_hecc_priv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.can_frame = type { i8** }
%struct.sk_buff = type { i32 }

@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@HECC_CANTEC = common dso_local global i32 0, align 4
@HECC_CANREC = common dso_local global i32 0, align 4
@HECC_CANLNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @ti_hecc_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_hecc_change_state(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_hecc_priv*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ti_hecc_priv* %13, %struct.ti_hecc_priv** %7, align 8
  %14 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %15 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sk_buff* @alloc_can_err_skb(i32 %16, %struct.can_frame** %8)
  store %struct.sk_buff* %17, %struct.sk_buff** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @max(i32 %25, i32 %26)
  %28 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %29 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %33 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @can_change_state(i32 %34, %struct.can_frame* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @max(i32 %39, i32 %40)
  %42 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %31
  %45 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %46 = load i32, i32* @HECC_CANTEC, align 4
  %47 = call i8* @hecc_read(%struct.ti_hecc_priv* %45, i32 %46)
  %48 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 6
  store i8* %47, i8** %51, align 8
  %52 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %53 = load i32, i32* @HECC_CANREC, align 4
  %54 = call i8* @hecc_read(%struct.ti_hecc_priv* %52, i32 %53)
  %55 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 7
  store i8* %54, i8** %58, align 8
  br label %59

59:                                               ; preds = %44, %31
  %60 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %61 = load i32, i32* @HECC_CANLNT, align 4
  %62 = call i8* @hecc_read(%struct.ti_hecc_priv* %60, i32 %61)
  store i8* %62, i8** %10, align 8
  %63 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %64 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %63, i32 0, i32 0
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @can_rx_offload_queue_sorted(i32* %64, %struct.sk_buff* %65, i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %24, %70, %59
  ret void
}

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(i32, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @can_change_state(i32, %struct.can_frame*, i32, i32) #1

declare dso_local i8* @hecc_read(%struct.ti_hecc_priv*, i32) #1

declare dso_local i32 @can_rx_offload_queue_sorted(i32*, %struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
