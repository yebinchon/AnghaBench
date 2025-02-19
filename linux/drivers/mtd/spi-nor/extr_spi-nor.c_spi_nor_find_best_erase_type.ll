; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_find_best_erase_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_find_best_erase_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_type = type { i64 }
%struct.spi_nor_erase_map = type { %struct.spi_nor_erase_type* }
%struct.spi_nor_erase_region = type { i32 }

@SNOR_ERASE_TYPE_MASK = common dso_local global i32 0, align 4
@SNOR_ERASE_TYPE_MAX = common dso_local global i32 0, align 4
@SNOR_OVERLAID_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spi_nor_erase_type* (%struct.spi_nor_erase_map*, %struct.spi_nor_erase_region*, i32, i64)* @spi_nor_find_best_erase_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spi_nor_erase_type* @spi_nor_find_best_erase_type(%struct.spi_nor_erase_map* %0, %struct.spi_nor_erase_region* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.spi_nor_erase_type*, align 8
  %6 = alloca %struct.spi_nor_erase_map*, align 8
  %7 = alloca %struct.spi_nor_erase_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_nor_erase_type*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_nor_erase_map* %0, %struct.spi_nor_erase_map** %6, align 8
  store %struct.spi_nor_erase_region* %1, %struct.spi_nor_erase_region** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %7, align 8
  %15 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SNOR_ERASE_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @SNOR_ERASE_TYPE_MAX, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %62, %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %62

31:                                               ; preds = %24
  %32 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %6, align 8
  %33 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %32, i32 0, i32 0
  %34 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %34, i64 %36
  store %struct.spi_nor_erase_type* %37, %struct.spi_nor_erase_type** %10, align 8
  %38 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %10, align 8
  %39 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %62

44:                                               ; preds = %31
  %45 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %7, align 8
  %46 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SNOR_OVERLAID_REGION, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %10, align 8
  store %struct.spi_nor_erase_type* %52, %struct.spi_nor_erase_type** %5, align 8
  br label %66

53:                                               ; preds = %44
  %54 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @spi_nor_div_by_erase_size(%struct.spi_nor_erase_type* %54, i32 %55, i64* %11)
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %62

60:                                               ; preds = %53
  %61 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %10, align 8
  store %struct.spi_nor_erase_type* %61, %struct.spi_nor_erase_type** %5, align 8
  br label %66

62:                                               ; preds = %59, %43, %30
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  br label %21

65:                                               ; preds = %21
  store %struct.spi_nor_erase_type* null, %struct.spi_nor_erase_type** %5, align 8
  br label %66

66:                                               ; preds = %65, %60, %51
  %67 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  ret %struct.spi_nor_erase_type* %67
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spi_nor_div_by_erase_size(%struct.spi_nor_erase_type*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
