; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_parse_tap_and_trim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_parse_tap_and_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"nvidia,default-tap\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"nvidia,default-trim\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nvidia,dqs-trim\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @tegra_sdhci_parse_tap_and_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_parse_tap_and_trim(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_tegra*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %6)
  store %struct.sdhci_pltfm_host* %7, %struct.sdhci_pltfm_host** %3, align 8
  %8 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %9 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %8)
  store %struct.sdhci_tegra* %9, %struct.sdhci_tegra** %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %16 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %15, i32 0, i32 0
  %17 = call i32 @device_property_read_u32(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %22 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %30 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %29, i32 0, i32 1
  %31 = call i32 @device_property_read_u32(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %36 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %44 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %43, i32 0, i32 2
  %45 = call i32 @device_property_read_u32(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %50 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %49, i32 0, i32 2
  store i32 17, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %37
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
