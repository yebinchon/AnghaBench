; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.spinand_device = type { i32, %struct.spi_mem* }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*)* @spinand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_probe(%struct.spi_mem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  %7 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %8 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.spinand_device* @devm_kzalloc(%struct.TYPE_6__* %10, i32 16, i32 %11)
  store %struct.spinand_device* %12, %struct.spinand_device** %4, align 8
  %13 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %14 = icmp ne %struct.spinand_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %20 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %21 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %20, i32 0, i32 1
  store %struct.spi_mem* %19, %struct.spi_mem** %21, align 8
  %22 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %23 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %24 = call i32 @spi_mem_set_drvdata(%struct.spi_mem* %22, %struct.spinand_device* %23)
  %25 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %26 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %27 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spinand_set_of_node(%struct.spinand_device* %25, i32 %31)
  %33 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %34 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %37 = call %struct.mtd_info* @spinand_to_mtd(%struct.spinand_device* %36)
  store %struct.mtd_info* %37, %struct.mtd_info** %5, align 8
  %38 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %39 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %46 = call i32 @spinand_init(%struct.spinand_device* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %18
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %62

51:                                               ; preds = %18
  %52 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %53 = call i32 @mtd_device_register(%struct.mtd_info* %52, i32* null, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %62

58:                                               ; preds = %56
  %59 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %60 = call i32 @spinand_cleanup(%struct.spinand_device* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %57, %49, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.spinand_device* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spi_mem_set_drvdata(%struct.spi_mem*, %struct.spinand_device*) #1

declare dso_local i32 @spinand_set_of_node(%struct.spinand_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.mtd_info* @spinand_to_mtd(%struct.spinand_device*) #1

declare dso_local i32 @spinand_init(%struct.spinand_device*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @spinand_cleanup(%struct.spinand_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
