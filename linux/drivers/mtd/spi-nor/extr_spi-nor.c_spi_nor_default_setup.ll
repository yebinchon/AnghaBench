; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_default_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_default_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i64, %struct.spi_nor_flash_parameter }
%struct.spi_nor_flash_parameter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }

@SNOR_HWCAPS_X_X_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SPI n-n-n protocols are not supported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"can't select read settings supported by both the SPI controller and memory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"can't select write settings supported by both the SPI controller and memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"can't select erase settings supported by both the SPI controller and memory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_nor_hwcaps*)* @spi_nor_default_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_default_setup(%struct.spi_nor* %0, %struct.spi_nor_hwcaps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca %struct.spi_nor_hwcaps*, align 8
  %6 = alloca %struct.spi_nor_flash_parameter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store %struct.spi_nor_hwcaps* %1, %struct.spi_nor_hwcaps** %5, align 8
  %10 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 2
  store %struct.spi_nor_flash_parameter* %11, %struct.spi_nor_flash_parameter** %6, align 8
  %12 = load %struct.spi_nor_hwcaps*, %struct.spi_nor_hwcaps** %5, align 8
  %13 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %6, align 8
  %16 = getelementptr inbounds %struct.spi_nor_flash_parameter, %struct.spi_nor_flash_parameter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %14, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %21 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %26 = call i32 @spi_nor_spimem_adjust_hwcaps(%struct.spi_nor* %25, i32* %8)
  br label %43

27:                                               ; preds = %2
  %28 = load i32, i32* @SNOR_HWCAPS_X_X_X, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %35 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @spi_nor_select_read(%struct.spi_nor* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %51 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %43
  %56 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @spi_nor_select_pp(%struct.spi_nor* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %63 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %55
  %68 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %69 = call i32 @spi_nor_select_erase(%struct.spi_nor* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %74 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %72, %61, %49
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @spi_nor_spimem_adjust_hwcaps(%struct.spi_nor*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spi_nor_select_read(%struct.spi_nor*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spi_nor_select_pp(%struct.spi_nor*, i32) #1

declare dso_local i32 @spi_nor_select_erase(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
