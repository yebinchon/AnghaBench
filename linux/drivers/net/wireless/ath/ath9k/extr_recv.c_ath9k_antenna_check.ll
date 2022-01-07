; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_antenna_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_antenna_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__, %struct.ath_hw* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ath_hw = type { %struct.ath9k_hw_capabilities }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath_rx_status = type { i64 }
%struct.ath_common = type { i64 }

@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_BT_ANT_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rx_status*)* @ath9k_antenna_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_antenna_check(%struct.ath_softc* %0, %struct.ath_rx_status* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_rx_status*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_hw_capabilities*, align 8
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %4, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  %10 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  store %struct.ath_hw* %10, %struct.ath_hw** %5, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %7, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %29 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %41 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %42 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ath_setdefantenna(%struct.ath_softc* %40, i64 %43)
  br label %45

45:                                               ; preds = %39, %32
  br label %50

46:                                               ; preds = %23
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %45
  %51 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %6, align 8
  %52 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATH9K_HW_CAP_BT_ANT_DIV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %59 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %64 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %65 = call i32 @ath_ant_comb_scan(%struct.ath_softc* %63, %struct.ath_rx_status* %64)
  br label %66

66:                                               ; preds = %62, %57
  br label %71

67:                                               ; preds = %50
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %70 = call i32 @ath_ant_comb_scan(%struct.ath_softc* %68, %struct.ath_rx_status* %69)
  br label %71

71:                                               ; preds = %22, %67, %66
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_setdefantenna(%struct.ath_softc*, i64) #1

declare dso_local i32 @ath_ant_comb_scan(%struct.ath_softc*, %struct.ath_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
