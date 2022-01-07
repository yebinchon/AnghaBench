; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.hifmc_host = type { i64, %struct.spi_nor**, %struct.device* }
%struct.spi_nor = type { %struct.mtd_info, i32*, i32, i32, i32, i32, i32, i32, %struct.hifmc_priv*, %struct.device* }
%struct.mtd_info = type { i32 }
%struct.hifmc_priv = type { %struct.hifmc_host*, i32, i32 }
%struct.device = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }

@SNOR_HWCAPS_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_FAST = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_2 = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_4 = common dso_local global i32 0, align 4
@SNOR_HWCAPS_PP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"There's no reg property for %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"There's no spi-max-frequency property for %pOF\0A\00", align 1
@hisi_spi_nor_prep = common dso_local global i32 0, align 4
@hisi_spi_nor_unprep = common dso_local global i32 0, align 4
@hisi_spi_nor_read_reg = common dso_local global i32 0, align 4
@hisi_spi_nor_write_reg = common dso_local global i32 0, align 4
@hisi_spi_nor_read = common dso_local global i32 0, align 4
@hisi_spi_nor_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.hifmc_host*)* @hisi_spi_nor_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_spi_nor_register(%struct.device_node* %0, %struct.hifmc_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.hifmc_host*, align 8
  %6 = alloca %struct.spi_nor_hwcaps, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.spi_nor*, align 8
  %9 = alloca %struct.hifmc_priv*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.hifmc_host* %1, %struct.hifmc_host** %5, align 8
  %12 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %6, i32 0, i32 0
  %13 = load i32, i32* @SNOR_HWCAPS_READ, align 4
  %14 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SNOR_HWCAPS_READ_1_1_2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SNOR_HWCAPS_READ_1_1_4, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SNOR_HWCAPS_PP, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.hifmc_host*, %struct.hifmc_host** %5, align 8
  %23 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.device* %25, i32 56, i32 %26)
  %28 = bitcast i8* %27 to %struct.spi_nor*
  store %struct.spi_nor* %28, %struct.spi_nor** %8, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %30 = icmp ne %struct.spi_nor* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %134

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %37 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %36, i32 0, i32 9
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @spi_nor_set_flash_node(%struct.spi_nor* %38, %struct.device_node* %39)
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kzalloc(%struct.device* %41, i32 16, i32 %42)
  %44 = bitcast i8* %43 to %struct.hifmc_priv*
  store %struct.hifmc_priv* %44, %struct.hifmc_priv** %9, align 8
  %45 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %46 = icmp ne %struct.hifmc_priv* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %134

50:                                               ; preds = %34
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %53 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %52, i32 0, i32 2
  %54 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %3, align 4
  br label %134

62:                                               ; preds = %50
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %65 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %64, i32 0, i32 1
  %66 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %134

74:                                               ; preds = %62
  %75 = load %struct.hifmc_host*, %struct.hifmc_host** %5, align 8
  %76 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %77 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %76, i32 0, i32 0
  store %struct.hifmc_host* %75, %struct.hifmc_host** %77, align 8
  %78 = load %struct.hifmc_priv*, %struct.hifmc_priv** %9, align 8
  %79 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %80 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %79, i32 0, i32 8
  store %struct.hifmc_priv* %78, %struct.hifmc_priv** %80, align 8
  %81 = load i32, i32* @hisi_spi_nor_prep, align 4
  %82 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %83 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @hisi_spi_nor_unprep, align 4
  %85 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %86 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @hisi_spi_nor_read_reg, align 4
  %88 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %89 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @hisi_spi_nor_write_reg, align 4
  %91 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %92 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @hisi_spi_nor_read, align 4
  %94 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %95 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @hisi_spi_nor_write, align 4
  %97 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %98 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %100 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %102 = call i32 @spi_nor_scan(%struct.spi_nor* %101, i32* null, %struct.spi_nor_hwcaps* %6)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %74
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %134

107:                                              ; preds = %74
  %108 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %109 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %108, i32 0, i32 0
  store %struct.mtd_info* %109, %struct.mtd_info** %10, align 8
  %110 = load %struct.device_node*, %struct.device_node** %4, align 8
  %111 = getelementptr inbounds %struct.device_node, %struct.device_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %114 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %116 = call i32 @mtd_device_register(%struct.mtd_info* %115, i32* null, i32 0)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %134

121:                                              ; preds = %107
  %122 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %123 = load %struct.hifmc_host*, %struct.hifmc_host** %5, align 8
  %124 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %123, i32 0, i32 1
  %125 = load %struct.spi_nor**, %struct.spi_nor*** %124, align 8
  %126 = load %struct.hifmc_host*, %struct.hifmc_host** %5, align 8
  %127 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.spi_nor*, %struct.spi_nor** %125, i64 %128
  store %struct.spi_nor* %122, %struct.spi_nor** %129, align 8
  %130 = load %struct.hifmc_host*, %struct.hifmc_host** %5, align 8
  %131 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %121, %119, %105, %69, %57, %47, %31
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_nor_set_flash_node(%struct.spi_nor*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @spi_nor_scan(%struct.spi_nor*, i32*, %struct.spi_nor_hwcaps*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
