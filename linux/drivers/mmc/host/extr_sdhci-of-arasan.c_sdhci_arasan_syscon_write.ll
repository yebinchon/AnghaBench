; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_syscon_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_syscon_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_arasan_soc_ctl_field = type { i32, i32, i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_arasan_data = type { %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: Regmap write fail: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.sdhci_arasan_soc_ctl_field*, i32)* @sdhci_arasan_syscon_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_arasan_syscon_write(%struct.sdhci_host* %0, %struct.sdhci_arasan_soc_ctl_field* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_arasan_soc_ctl_field*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdhci_pltfm_host*, align 8
  %9 = alloca %struct.sdhci_arasan_data*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store %struct.sdhci_arasan_soc_ctl_field* %1, %struct.sdhci_arasan_soc_ctl_field** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %16 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %15)
  store %struct.sdhci_pltfm_host* %16, %struct.sdhci_pltfm_host** %8, align 8
  %17 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %18 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %17)
  store %struct.sdhci_arasan_data* %18, %struct.sdhci_arasan_data** %9, align 8
  %19 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %9, align 8
  %20 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %19, i32 0, i32 1
  %21 = load %struct.regmap*, %struct.regmap** %20, align 8
  store %struct.regmap* %21, %struct.regmap** %10, align 8
  %22 = load %struct.sdhci_arasan_soc_ctl_field*, %struct.sdhci_arasan_soc_ctl_field** %6, align 8
  %23 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sdhci_arasan_soc_ctl_field*, %struct.sdhci_arasan_soc_ctl_field** %6, align 8
  %26 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.sdhci_arasan_soc_ctl_field*, %struct.sdhci_arasan_soc_ctl_field** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %9, align 8
  %38 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.regmap*, %struct.regmap** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @GENMASK(i64 %47, i32 0)
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @HIWORD_UPDATE(i32 %46, i32 %48, i32 %49)
  %51 = call i32 @regmap_write(%struct.regmap* %44, i32 %45, i32 %50)
  store i32 %51, i32* %14, align 4
  br label %65

52:                                               ; preds = %36
  %53 = load %struct.regmap*, %struct.regmap** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @GENMASK(i64 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 %61, %62
  %64 = call i32 @regmap_update_bits(%struct.regmap* %53, i32 %54, i32 %60, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %52, %43
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %70 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mmc_hostname(i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %33
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
