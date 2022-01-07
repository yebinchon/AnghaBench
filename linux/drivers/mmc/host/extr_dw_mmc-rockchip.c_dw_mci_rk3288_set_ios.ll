; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rk3288_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rk3288_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i64, i32, i32, %struct.dw_mci_rockchip_priv_data* }
%struct.dw_mci_rockchip_priv_data = type { i32, i32, i32 }
%struct.mmc_ios = type { i32, i64, i32 }

@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@RK3288_CLKGEN_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to set rate %uHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_ios*)* @dw_mci_rk3288_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_rk3288_set_ios(%struct.dw_mci* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.dw_mci_rockchip_priv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %11 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %10, i32 0, i32 4
  %12 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %11, align 8
  store %struct.dw_mci_rockchip_priv_data* %12, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 2, %32
  %34 = load i32, i32* @RK3288_CLKGEN_DIV, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %24, %18
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RK3288_CLKGEN_DIV, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %44 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @clk_set_rate(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %52 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %60 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_get_rate(i32 %61)
  %63 = load i32, i32* @RK3288_CLKGEN_DIV, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %67 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %73 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %75 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %58
  %77 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %78 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IS_ERR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %84 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %87 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clk_set_phase(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %92 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IS_ERR(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %90
  store i32 90, i32* %9, align 4
  %97 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %98 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %109 [
    i32 130, label %100
    i32 128, label %108
    i32 129, label %108
  ]

100:                                              ; preds = %96
  %101 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %102 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 180, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %100
  br label %109

108:                                              ; preds = %96, %96
  store i32 180, i32* %9, align 4
  br label %109

109:                                              ; preds = %96, %108, %107
  %110 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %111 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @clk_set_phase(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %17, %109, %90
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
