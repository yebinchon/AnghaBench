; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_find_erase_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_find_erase_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_map = type { %struct.spi_nor_erase_region* }

@SNOR_ERASE_FLAGS_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spi_nor_erase_region* (%struct.spi_nor_erase_map*, i64)* @spi_nor_find_erase_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spi_nor_erase_region* @spi_nor_find_erase_region(%struct.spi_nor_erase_map* %0, i64 %1) #0 {
  %3 = alloca %struct.spi_nor_erase_region*, align 8
  %4 = alloca %struct.spi_nor_erase_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spi_nor_erase_region*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.spi_nor_erase_map* %0, %struct.spi_nor_erase_map** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %10 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %9, i32 0, i32 0
  %11 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %10, align 8
  store %struct.spi_nor_erase_region* %11, %struct.spi_nor_erase_region** %6, align 8
  %12 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  %13 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNOR_ERASE_FLAGS_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  %20 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %42, %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp sge i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %54

33:                                               ; preds = %31
  %34 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  %35 = call %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region* %34)
  store %struct.spi_nor_erase_region* %35, %struct.spi_nor_erase_region** %6, align 8
  %36 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  %37 = icmp ne %struct.spi_nor_erase_region* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.spi_nor_erase_region* @ERR_PTR(i32 %40)
  store %struct.spi_nor_erase_region* %41, %struct.spi_nor_erase_region** %3, align 8
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  %44 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SNOR_ERASE_FLAGS_MASK, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  %51 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %8, align 8
  br label %23

54:                                               ; preds = %31
  %55 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %6, align 8
  store %struct.spi_nor_erase_region* %55, %struct.spi_nor_erase_region** %3, align 8
  br label %56

56:                                               ; preds = %54, %38
  %57 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  ret %struct.spi_nor_erase_region* %57
}

declare dso_local %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region*) #1

declare dso_local %struct.spi_nor_erase_region* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
