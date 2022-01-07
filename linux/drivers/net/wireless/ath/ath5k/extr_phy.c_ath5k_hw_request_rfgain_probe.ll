; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_request_rfgain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_request_rfgain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@AR5K_RFGAIN_ACTIVE = common dso_local global i64 0, align 8
@AR5K_PHY_PAPD_PROBE_TXPOWER = common dso_local global i32 0, align 4
@AR5K_PHY_PAPD_PROBE_TX_NEXT = common dso_local global i32 0, align 4
@AR5K_PHY_PAPD_PROBE = common dso_local global i32 0, align 4
@AR5K_RFGAIN_READ_REQUESTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*)* @ath5k_hw_request_rfgain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_request_rfgain_probe(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %3 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AR5K_RFGAIN_ACTIVE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 4
  %17 = load i32, i32* @AR5K_PHY_PAPD_PROBE_TXPOWER, align 4
  %18 = call i32 @AR5K_REG_SM(i64 %16, i32 %17)
  %19 = load i32, i32* @AR5K_PHY_PAPD_PROBE_TX_NEXT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AR5K_PHY_PAPD_PROBE, align 4
  %22 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %11, i32 %20, i32 %21)
  %23 = load i64, i64* @AR5K_RFGAIN_READ_REQUESTED, align 8
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
