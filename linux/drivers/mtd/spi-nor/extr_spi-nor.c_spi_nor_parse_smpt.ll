; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_parse_smpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_parse_smpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }
%struct.sfdp_parameter_header = type { i32 }
%struct.spi_nor_flash_parameter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.sfdp_parameter_header*, %struct.spi_nor_flash_parameter*)* @spi_nor_parse_smpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_parse_smpt(%struct.spi_nor* %0, %struct.sfdp_parameter_header* %1, %struct.spi_nor_flash_parameter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca %struct.sfdp_parameter_header*, align 8
  %7 = alloca %struct.spi_nor_flash_parameter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store %struct.sfdp_parameter_header* %1, %struct.sfdp_parameter_header** %6, align 8
  store %struct.spi_nor_flash_parameter* %2, %struct.spi_nor_flash_parameter** %7, align 8
  %14 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %15 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i64 %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %88

27:                                               ; preds = %3
  %28 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %29 = call i32 @SFDP_PARAM_HEADER_PTP(%struct.sfdp_parameter_header* %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @spi_nor_read_sfdp(%struct.spi_nor* %30, i32 %31, i64 %32, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %84

38:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %42 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %63 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @spi_nor_get_map_in_use(%struct.spi_nor* %60, i32* %61, i32 %64)
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %13, align 4
  br label %84

72:                                               ; preds = %59
  %73 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %74 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @spi_nor_init_non_uniform_erase_map(%struct.spi_nor* %73, %struct.spi_nor_flash_parameter* %74, i32* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %7, align 8
  %82 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %81, i32 0, i32 0
  %83 = call i32 @spi_nor_regions_sort_erase_types(i32* %82)
  br label %84

84:                                               ; preds = %80, %79, %69, %37
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %24
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @SFDP_PARAM_HEADER_PTP(%struct.sfdp_parameter_header*) #1

declare dso_local i32 @spi_nor_read_sfdp(%struct.spi_nor*, i32, i64, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32* @spi_nor_get_map_in_use(%struct.spi_nor*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @spi_nor_init_non_uniform_erase_map(%struct.spi_nor*, %struct.spi_nor_flash_parameter*, i32*) #1

declare dso_local i32 @spi_nor_regions_sort_erase_types(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
