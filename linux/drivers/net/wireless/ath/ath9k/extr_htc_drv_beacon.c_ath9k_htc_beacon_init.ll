; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_4__, %struct.ath_hw* }
%struct.TYPE_4__ = type { i64 }
%struct.ath_hw = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath_beacon_config = type { i32, i32 }

@DEFAULT_SWBA_RESPONSE = common dso_local global i32 0, align 4
@MIN_SWBA_RESPONSE = common dso_local global i32 0, align 4
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ath_beacon_config*, i32)* @ath9k_htc_beacon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_beacon_init(%struct.ath9k_htc_priv* %0, %struct.ath_beacon_config* %1, i32 %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ath_beacon_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %11, i32 0, i32 1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %15 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DEFAULT_SWBA_RESPONSE, align 4
  %18 = call i32 @TU_TO_USEC(i32 %17)
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @DEFAULT_SWBA_RESPONSE, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @MIN_SWBA_RESPONSE, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %32 = call i32 @WMI_CMD(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %37 = call i32 @ath9k_hw_reset_tsf(%struct.ath_hw* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %40 = call i32 @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv* %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %42 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %43 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %46 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ath9k_hw_beaconinit(%struct.ath_hw* %41, i32 %44, i32 %47)
  %49 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_be32(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %57 = call i32 @WMI_CMD_BUF(i32 %56, i32* %9)
  ret void
}

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_hw_reset_tsf(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_beaconinit(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
