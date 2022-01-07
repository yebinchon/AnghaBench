; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath9k_cmn_spectral_scan_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath9k_cmn_spectral_scan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32 }
%struct.ath_spec_scan_priv = type { i32, %struct.TYPE_4__, %struct.ath_hw* }
%struct.TYPE_4__ = type { i32 }
%struct.ath_hw = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.ath_hw*)* }
%struct.TYPE_5__ = type { i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)* }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"spectrum analyzer not implemented on this hardware\0A\00", align 1
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_spectral_scan_trigger(%struct.ath_common* %0, %struct.ath_spec_scan_priv* %1) #0 {
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_spec_scan_priv*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %3, align 8
  store %struct.ath_spec_scan_priv* %1, %struct.ath_spec_scan_priv** %4, align 8
  %7 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %4, align 8
  %8 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %7, i32 0, i32 2
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %5, align 8
  %10 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = call %struct.TYPE_6__* @ath9k_hw_ops(%struct.ath_hw* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %17, align 8
  %19 = icmp ne i32 (%struct.ath_hw*)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %22 = call i32 @ath_err(%struct.ath_common* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %64

23:                                               ; preds = %14
  %24 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %64

30:                                               ; preds = %23
  %31 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %32 = call %struct.TYPE_5__* @ath_ps_ops(%struct.ath_common* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %33, align 8
  %35 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %36 = call i32 %34(%struct.ath_common* %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %38 = call i32 @ath9k_hw_getrxfilter(%struct.ath_hw* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %39, i32 %44)
  %46 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %47 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %4, align 8
  %48 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %4, align 8
  %49 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ath9k_cmn_spectral_scan_config(%struct.ath_common* %46, %struct.ath_spec_scan_priv* %47, i32 %50)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %53 = call %struct.TYPE_6__* @ath9k_hw_ops(%struct.ath_hw* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %54, align 8
  %56 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %57 = call i32 %55(%struct.ath_hw* %56)
  %58 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %59 = call %struct.TYPE_5__* @ath_ps_ops(%struct.ath_common* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %60, align 8
  %62 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %63 = call i32 %61(%struct.ath_common* %62)
  br label %64

64:                                               ; preds = %30, %29, %20, %13
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.TYPE_6__* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local %struct.TYPE_5__* @ath_ps_ops(%struct.ath_common*) #1

declare dso_local i32 @ath9k_hw_getrxfilter(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_cmn_spectral_scan_config(%struct.ath_common*, %struct.ath_spec_scan_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
