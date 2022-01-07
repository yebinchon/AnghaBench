; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_region_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_region_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spi_nor_erase_region* (%struct.spi_nor_erase_region*)* @spi_nor_region_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spi_nor_erase_region* @spi_nor_region_next(%struct.spi_nor_erase_region* %0) #0 {
  %2 = alloca %struct.spi_nor_erase_region*, align 8
  %3 = alloca %struct.spi_nor_erase_region*, align 8
  store %struct.spi_nor_erase_region* %0, %struct.spi_nor_erase_region** %3, align 8
  %4 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %5 = call i64 @spi_nor_region_is_last(%struct.spi_nor_erase_region* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.spi_nor_erase_region* null, %struct.spi_nor_erase_region** %2, align 8
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  %10 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %9, i32 1
  store %struct.spi_nor_erase_region* %10, %struct.spi_nor_erase_region** %3, align 8
  %11 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %3, align 8
  store %struct.spi_nor_erase_region* %11, %struct.spi_nor_erase_region** %2, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %2, align 8
  ret %struct.spi_nor_erase_region* %13
}

declare dso_local i64 @spi_nor_region_is_last(%struct.spi_nor_erase_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
