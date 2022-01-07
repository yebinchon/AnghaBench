; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pltfm.c_sdhci_pltfm_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pltfm.c_sdhci_pltfm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_pltfm_data = type { i32 }
%struct.sdhci_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_pltfm_register(%struct.platform_device* %0, %struct.sdhci_pltfm_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sdhci_pltfm_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sdhci_host*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.sdhci_pltfm_data* %1, %struct.sdhci_pltfm_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load %struct.sdhci_pltfm_data*, %struct.sdhci_pltfm_data** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %10, %struct.sdhci_pltfm_data* %11, i64 %12)
  store %struct.sdhci_host* %13, %struct.sdhci_host** %8, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %15 = call i64 @IS_ERR(%struct.sdhci_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.sdhci_host* %18)
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = call i32 @sdhci_get_property(%struct.platform_device* %21)
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %24 = call i32 @sdhci_add_host(%struct.sdhci_host* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = call i32 @sdhci_pltfm_free(%struct.platform_device* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, %struct.sdhci_pltfm_data*, i64) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_get_property(%struct.platform_device*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
