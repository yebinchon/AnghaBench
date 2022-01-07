; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_sort_erase_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_sort_erase_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_map = type { %struct.spi_nor_erase_type* }
%struct.spi_nor_erase_type = type { i32, i64 }

@SNOR_ERASE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor_erase_map*, i32)* @spi_nor_sort_erase_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_sort_erase_mask(%struct.spi_nor_erase_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor_erase_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor_erase_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_nor_erase_map* %0, %struct.spi_nor_erase_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %10 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %9, i32 0, i32 0
  %11 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %10, align 8
  store %struct.spi_nor_erase_type* %11, %struct.spi_nor_erase_type** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SNOR_ERASE_TYPE_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %21, i64 %23
  %25 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %30, i64 %32
  %34 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %29, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %28, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
