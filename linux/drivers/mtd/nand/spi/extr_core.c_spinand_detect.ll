; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { %struct.TYPE_10__*, %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nand_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SPINAND_MAX_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown raw ID %*phN\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"SPI NANDs with more than one die must implement ->select_target()\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s SPI NAND was found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"%llu MiB, block size: %zu KiB, page size: %zu, OOB size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*)* @spinand_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_detect(%struct.spinand_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spinand_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nand_device*, align 8
  %6 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %3, align 8
  %7 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %8 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %14 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %13)
  store %struct.nand_device* %14, %struct.nand_device** %5, align 8
  %15 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %16 = call i32 @spinand_reset_op(%struct.spinand_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %23 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %24 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @spinand_read_id_op(%struct.spinand_device* %22, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %96

32:                                               ; preds = %21
  %33 = load i32, i32* @SPINAND_MAX_ID_LEN, align 4
  %34 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %35 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %38 = call i32 @spinand_manufacturer_detect(%struct.spinand_device* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* @SPINAND_MAX_ID_LEN, align 4
  %44 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %45 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %96

50:                                               ; preds = %32
  %51 = load %struct.nand_device*, %struct.nand_device** %5, align 8
  %52 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %58 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %96

66:                                               ; preds = %56, %50
  %67 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %68 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %74 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %80 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.nand_device*, %struct.nand_device** %5, align 8
  %86 = call i32 @nanddev_size(%struct.nand_device* %85)
  %87 = ashr i32 %86, 20
  %88 = load %struct.nand_device*, %struct.nand_device** %5, align 8
  %89 = call i32 @nanddev_eraseblock_size(%struct.nand_device* %88)
  %90 = ashr i32 %89, 10
  %91 = load %struct.nand_device*, %struct.nand_device** %5, align 8
  %92 = call i32 @nanddev_page_size(%struct.nand_device* %91)
  %93 = load %struct.nand_device*, %struct.nand_device** %5, align 8
  %94 = call i32 @nanddev_per_page_oobsize(%struct.nand_device* %93)
  %95 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %84, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %90, i32 %92, i32 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %66, %61, %41, %30, %19
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i32 @spinand_reset_op(%struct.spinand_device*) #1

declare dso_local i32 @spinand_read_id_op(%struct.spinand_device*, i32) #1

declare dso_local i32 @spinand_manufacturer_detect(%struct.spinand_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @nanddev_size(%struct.nand_device*) #1

declare dso_local i32 @nanddev_eraseblock_size(%struct.nand_device*) #1

declare dso_local i32 @nanddev_page_size(%struct.nand_device*) #1

declare dso_local i32 @nanddev_per_page_oobsize(%struct.nand_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
