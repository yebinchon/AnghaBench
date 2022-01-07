; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_arasan_data = type { i32, i32, i32 }

@PHY_CLK_TOO_SLOW_HZ = common dso_local global i32 0, align 4
@SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_arasan_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_arasan_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_arasan_data*, align 8
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %5, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %11 = call %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_arasan_data* %11, %struct.sdhci_arasan_data** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %13 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IS_ERR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %2
  %18 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PHY_CLK_TOO_SLOW_HZ, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdhci_set_clock(%struct.sdhci_host* %27, i32 %30)
  %32 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %33 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @phy_power_on(i32 %34)
  %36 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %37 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %44

38:                                               ; preds = %22, %17
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PHY_CLK_TOO_SLOW_HZ, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %50 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %55 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @phy_power_off(i32 %56)
  %58 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %59 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %48, %45
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @sdhci_set_clock(%struct.sdhci_host* %61, i32 %62)
  %64 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %65 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = call i32 @msleep(i32 20)
  br label %72

72:                                               ; preds = %70, %60
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %77 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @phy_power_on(i32 %78)
  %80 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %6, align 8
  %81 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %72
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_arasan_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
