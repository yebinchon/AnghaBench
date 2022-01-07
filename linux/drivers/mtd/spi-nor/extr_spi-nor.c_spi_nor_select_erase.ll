; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_select_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_select_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.TYPE_4__*, %struct.mtd_info, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtd_info = type { i64 }
%struct.TYPE_3__ = type { %struct.spi_nor_erase_map }
%struct.spi_nor_erase_map = type { %struct.spi_nor_erase_type* }
%struct.spi_nor_erase_type = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNOR_ERASE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_select_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_select_erase(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.spi_nor_erase_map*, align 8
  %5 = alloca %struct.spi_nor_erase_type*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %9 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %10 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.spi_nor_erase_map* %11, %struct.spi_nor_erase_map** %4, align 8
  store %struct.spi_nor_erase_type* null, %struct.spi_nor_erase_type** %5, align 8
  %12 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 2
  store %struct.mtd_info* %13, %struct.mtd_info** %6, align 8
  %14 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %20 = call i64 @spi_nor_has_uniform_erase(%struct.spi_nor* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.spi_nor_erase_type* @spi_nor_select_uniform_erase(%struct.spi_nor_erase_map* %23, i32 %24)
  store %struct.spi_nor_erase_type* %25, %struct.spi_nor_erase_type** %5, align 8
  %26 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %27 = icmp ne %struct.spi_nor_erase_type* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %22
  %32 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %33 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %36 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %38 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %2, align 4
  br label %81

42:                                               ; preds = %1
  %43 = load i32, i32* @SNOR_ERASE_TYPE_MAX, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %66, %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %50 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %49, i32 0, i32 0
  %51 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %51, i64 %53
  %55 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %60 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %59, i32 0, i32 0
  %61 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %61, i64 %63
  store %struct.spi_nor_erase_type* %64, %struct.spi_nor_erase_type** %5, align 8
  br label %69

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %8, align 4
  br label %45

69:                                               ; preds = %58, %45
  %70 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %71 = icmp ne %struct.spi_nor_erase_type* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %69
  %76 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %5, align 8
  %77 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %72, %31, %28
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @spi_nor_has_uniform_erase(%struct.spi_nor*) #1

declare dso_local %struct.spi_nor_erase_type* @spi_nor_select_uniform_erase(%struct.spi_nor_erase_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
