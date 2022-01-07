; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_region_check_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_region_check_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_region = type { i32 }
%struct.spi_nor_erase_type = type { i32 }

@SNOR_ERASE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor_erase_region*, %struct.spi_nor_erase_type*, i32)* @spi_nor_region_check_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_region_check_overlay(%struct.spi_nor_erase_region* %0, %struct.spi_nor_erase_type* %1, i32 %2) #0 {
  %4 = alloca %struct.spi_nor_erase_region*, align 8
  %5 = alloca %struct.spi_nor_erase_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_nor_erase_region* %0, %struct.spi_nor_erase_region** %4, align 8
  store %struct.spi_nor_erase_type* %1, %struct.spi_nor_erase_type** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SNOR_ERASE_TYPE_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %35

19:                                               ; preds = %12
  %20 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %4, align 8
  %21 = getelementptr inbounds %struct.spi_nor_erase_region, %struct.spi_nor_erase_region* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %23, i64 %25
  %27 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %22, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.spi_nor_erase_region*, %struct.spi_nor_erase_region** %4, align 8
  %33 = call i32 @spi_nor_region_mark_overlay(%struct.spi_nor_erase_region* %32)
  br label %38

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8

38:                                               ; preds = %31, %8
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spi_nor_region_mark_overlay(%struct.spi_nor_erase_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
