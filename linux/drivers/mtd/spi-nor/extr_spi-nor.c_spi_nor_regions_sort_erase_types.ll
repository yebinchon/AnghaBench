; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_regions_sort_erase_types.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_regions_sort_erase_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_map = type { %struct.spi_nor_erase_region* }
%struct.spi_nor_erase_region = type { i32 }

@SNOR_ERASE_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor_erase_map*)* @spi_nor_regions_sort_erase_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_regions_sort_erase_types(%struct.spi_nor_erase_map* %0) #0 {
  %2 = alloca %struct.spi_nor_erase_map*, align 8
  %3 = alloca %struct.spi_nor_erase_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_nor_erase_map* %0, %struct.spi_nor_erase_map** %2, align 8
  %6 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %2, align 8
  %7 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %6, i32 0, i32 0
  %8 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %7, align 8
  store %struct.spi_nor_erase_region* %8, %struct.spi_nor_erase_region** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %11 = icmp ne %struct.spi_nor_erase_region* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %14 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNOR_ERASE_TYPE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @spi_nor_sort_erase_mask(%struct.spi_nor_erase_map* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %22 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SNOR_ERASE_TYPE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %30 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %32 = call %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region* %31)
  store %struct.spi_nor_erase_region* %32, %struct.spi_nor_erase_region** %3, align 8
  br label %9

33:                                               ; preds = %9
  ret void
}

declare dso_local i32 @spi_nor_sort_erase_mask(%struct.spi_nor_erase_map*, i32) #1

declare dso_local %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
