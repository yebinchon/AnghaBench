; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath9k_cmn_spectral_scan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath9k_cmn_spectral_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32 }
%struct.ath_spec_scan_priv = type { i32, %struct.TYPE_4__, %struct.ath_hw* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath_hw = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.ath_hw*, %struct.TYPE_4__*)*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)* }

@.str = private unnamed_addr constant [52 x i8] c"spectrum analyzer not implemented on this hardware\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_cmn_spectral_scan_config(%struct.ath_common* %0, %struct.ath_spec_scan_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_spec_scan_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hw*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store %struct.ath_spec_scan_priv* %1, %struct.ath_spec_scan_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %10 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %9, i32 0, i32 2
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %8, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %13 = call %struct.TYPE_6__* @ath9k_hw_ops(%struct.ath_hw* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %19 = call i32 @ath_err(%struct.ath_common* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %40 [
    i32 129, label %22
    i32 131, label %26
    i32 130, label %33
    i32 128, label %33
  ]

22:                                               ; preds = %20
  %23 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %41

26:                                               ; preds = %20
  %27 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %41

33:                                               ; preds = %20, %20
  %34 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %35 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %41

40:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %65

41:                                               ; preds = %33, %26, %22
  %42 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %43 = call %struct.TYPE_5__* @ath_ps_ops(%struct.ath_common* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %44, align 8
  %46 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %47 = call i32 %45(%struct.ath_common* %46)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %49 = call %struct.TYPE_6__* @ath9k_hw_ops(%struct.ath_hw* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ath_hw*, %struct.TYPE_4__*)*, i32 (%struct.ath_hw*, %struct.TYPE_4__*)** %50, align 8
  %52 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %53 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %54 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %53, i32 0, i32 1
  %55 = call i32 %51(%struct.ath_hw* %52, %struct.TYPE_4__* %54)
  %56 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %57 = call %struct.TYPE_5__* @ath_ps_ops(%struct.ath_common* %56)
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.ath_common*)*, i32 (%struct.ath_common*)** %58, align 8
  %60 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %61 = call i32 %59(%struct.ath_common* %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %6, align 8
  %64 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %41, %40, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_6__* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local %struct.TYPE_5__* @ath_ps_ops(%struct.ath_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
