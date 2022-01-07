; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data*, %struct.TYPE_6__* }
%struct.dw_mci_exynos_priv_data = type { i64, i8*, i64, i8*, i8*, i64 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_compat = common dso_local global %struct.TYPE_5__* null, align 8
@DW_MCI_TYPE_EXYNOS4412 = common dso_local global i64 0, align 8
@EXYNOS4412_FIXED_CIU_CLK_DIV = common dso_local global i64 0, align 8
@DW_MCI_TYPE_EXYNOS4210 = common dso_local global i64 0, align 8
@EXYNOS4210_FIXED_CIU_CLK_DIV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"samsung,dw-mshc-ciu-div\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"samsung,dw-mshc-sdr-timing\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"samsung,dw-mshc-ddr-timing\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"samsung,dw-mshc-hs400-timing\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"samsung,read-strobe-delay\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"read-strobe-delay is not found, assuming usage of default value\0A\00", align 1
@HS400_FIXED_CIU_CLK_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_exynos_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_exynos_parse_dt(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %10 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %11 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %16 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dw_mci_exynos_priv_data* @devm_kzalloc(%struct.TYPE_6__* %17, i32 48, i32 %18)
  store %struct.dw_mci_exynos_priv_data* %19, %struct.dw_mci_exynos_priv_data** %4, align 8
  %20 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %21 = icmp ne %struct.dw_mci_exynos_priv_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %144

25:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exynos_compat, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exynos_compat, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @of_device_is_compatible(%struct.device_node* %32, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @exynos_compat, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %49 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %56 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DW_MCI_TYPE_EXYNOS4412, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @EXYNOS4412_FIXED_CIU_CLK_DIV, align 8
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %64 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  br label %83

65:                                               ; preds = %54
  %66 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %67 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DW_MCI_TYPE_EXYNOS4210, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64, i64* @EXYNOS4210_FIXED_CIU_CLK_DIV, align 8
  %73 = sub nsw i64 %72, 1
  %74 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %75 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  br label %82

76:                                               ; preds = %65
  %77 = load %struct.device_node*, %struct.device_node** %5, align 8
  %78 = call i64 @of_property_read_u32(%struct.device_node* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64* %7)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %81 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %60
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %86 = call i32 @of_property_read_u32_array(%struct.device_node* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64* %85, i32 2)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %144

91:                                               ; preds = %83
  %92 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i8* @SDMMC_CLKSEL_TIMING(i64 %93, i64 %95, i64 %96)
  %98 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %99 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %102 = call i32 @of_property_read_u32_array(%struct.device_node* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64* %101, i32 2)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %2, align 4
  br label %144

107:                                              ; preds = %91
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i8* @SDMMC_CLKSEL_TIMING(i64 %109, i64 %111, i64 %112)
  %114 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %115 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load %struct.device_node*, %struct.device_node** %5, align 8
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %118 = call i32 @of_property_read_u32_array(%struct.device_node* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64* %117, i32 2)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %107
  %122 = load %struct.device_node*, %struct.device_node** %5, align 8
  %123 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %124 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %123, i32 0, i32 2
  %125 = call i64 @of_property_read_u32(%struct.device_node* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %129 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = call i32 @dev_dbg(%struct.TYPE_6__* %130, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  br label %132

132:                                              ; preds = %127, %121, %107
  %133 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %134 = load i64, i64* %133, align 16
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @HS400_FIXED_CIU_CLK_DIV, align 8
  %138 = call i8* @SDMMC_CLKSEL_TIMING(i64 %134, i64 %136, i64 %137)
  %139 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %140 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %4, align 8
  %142 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %143 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %142, i32 0, i32 0
  store %struct.dw_mci_exynos_priv_data* %141, %struct.dw_mci_exynos_priv_data** %143, align 8
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %132, %105, %89, %22
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.dw_mci_exynos_priv_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i8* @SDMMC_CLKSEL_TIMING(i64, i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
