; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_create_dirmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_create_dirmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc* }
%struct.spi_mem_dirmap_desc = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.nand_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.spi_mem_dirmap_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @spinand_create_dirmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_create_dirmap(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca %struct.spi_mem_dirmap_info, align 8
  %8 = alloca %struct.spi_mem_dirmap_desc*, align 8
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %10 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %9)
  store %struct.nand_device* %10, %struct.nand_device** %6, align 8
  %11 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %7, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %7, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %7, i32 0, i32 2
  %14 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %15 = call i64 @nanddev_page_size(%struct.nand_device* %14)
  %16 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %17 = call i64 @nanddev_per_page_oobsize(%struct.nand_device* %16)
  %18 = add nsw i64 %15, %17
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %21 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fls(i32 %23)
  %25 = shl i32 %19, %24
  %26 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %28 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %34 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %40 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = call %struct.spi_mem_dirmap_desc* @devm_spi_mem_dirmap_create(i32* %38, %struct.TYPE_10__* %41, %struct.spi_mem_dirmap_info* %7)
  store %struct.spi_mem_dirmap_desc* %42, %struct.spi_mem_dirmap_desc** %8, align 8
  %43 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %44 = call i64 @IS_ERR(%struct.spi_mem_dirmap_desc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %48 = call i32 @PTR_ERR(%struct.spi_mem_dirmap_desc* %47)
  store i32 %48, i32* %3, align 4
  br label %89

49:                                               ; preds = %2
  %50 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %51 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %52 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.spi_mem_dirmap_desc* %50, %struct.spi_mem_dirmap_desc** %57, align 8
  %58 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %59 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.spi_mem_dirmap_info, %struct.spi_mem_dirmap_info* %7, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %65 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %71 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call %struct.spi_mem_dirmap_desc* @devm_spi_mem_dirmap_create(i32* %69, %struct.TYPE_10__* %72, %struct.spi_mem_dirmap_info* %7)
  store %struct.spi_mem_dirmap_desc* %73, %struct.spi_mem_dirmap_desc** %8, align 8
  %74 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %75 = call i64 @IS_ERR(%struct.spi_mem_dirmap_desc* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %49
  %78 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %79 = call i32 @PTR_ERR(%struct.spi_mem_dirmap_desc* %78)
  store i32 %79, i32* %3, align 4
  br label %89

80:                                               ; preds = %49
  %81 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %82 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %83 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store %struct.spi_mem_dirmap_desc* %81, %struct.spi_mem_dirmap_desc** %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %80, %77, %46
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local i64 @nanddev_page_size(%struct.nand_device*) #1

declare dso_local i64 @nanddev_per_page_oobsize(%struct.nand_device*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local %struct.spi_mem_dirmap_desc* @devm_spi_mem_dirmap_create(i32*, %struct.TYPE_10__*, %struct.spi_mem_dirmap_info*) #1

declare dso_local i64 @IS_ERR(%struct.spi_mem_dirmap_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.spi_mem_dirmap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
