; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_reconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_2__*, %struct.ath_beacon_config }
%struct.TYPE_2__ = type { i32 }
%struct.ath_beacon_config = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported beaconing mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_beacon_reconfig(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %5 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  %9 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %9, i32 0, i32 1
  store %struct.ath_beacon_config* %10, %struct.ath_beacon_config** %4, align 8
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 128, label %16
    i32 131, label %20
    i32 129, label %24
    i32 130, label %24
  ]

16:                                               ; preds = %1
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %18 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %19 = call i32 @ath9k_htc_beacon_config_sta(%struct.ath9k_htc_priv* %17, %struct.ath_beacon_config* %18)
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %22 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %23 = call i32 @ath9k_htc_beacon_config_adhoc(%struct.ath9k_htc_priv* %21, %struct.ath_beacon_config* %22)
  br label %32

24:                                               ; preds = %1, %1
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %26 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %27 = call i32 @ath9k_htc_beacon_config_ap(%struct.ath9k_htc_priv* %25, %struct.ath_beacon_config* %26)
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %30 = load i32, i32* @CONFIG, align 4
  %31 = call i32 @ath_dbg(%struct.ath_common* %29, i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %24, %20, %16
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i32 @ath9k_htc_beacon_config_sta(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_htc_beacon_config_adhoc(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_htc_beacon_config_ap(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
