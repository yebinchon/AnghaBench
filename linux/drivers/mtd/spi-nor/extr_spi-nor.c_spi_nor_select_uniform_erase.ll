; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_select_uniform_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_select_uniform_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor_erase_type = type { i64 }
%struct.spi_nor_erase_map = type { i32, %struct.spi_nor_erase_type* }

@SNOR_ERASE_TYPE_MAX = common dso_local global i32 0, align 4
@SNOR_ERASE_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spi_nor_erase_type* (%struct.spi_nor_erase_map*, i64)* @spi_nor_select_uniform_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spi_nor_erase_type* @spi_nor_select_uniform_erase(%struct.spi_nor_erase_map* %0, i64 %1) #0 {
  %3 = alloca %struct.spi_nor_erase_type*, align 8
  %4 = alloca %struct.spi_nor_erase_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spi_nor_erase_type*, align 8
  %7 = alloca %struct.spi_nor_erase_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_nor_erase_map* %0, %struct.spi_nor_erase_map** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.spi_nor_erase_type* null, %struct.spi_nor_erase_type** %7, align 8
  %10 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %11 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @SNOR_ERASE_TYPE_MAX, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %50, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %50

25:                                               ; preds = %18
  %26 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %27 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %26, i32 0, i32 1
  %28 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %28, i64 %30
  store %struct.spi_nor_erase_type* %31, %struct.spi_nor_erase_type** %6, align 8
  %32 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %6, align 8
  %33 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %6, align 8
  store %struct.spi_nor_erase_type* %38, %struct.spi_nor_erase_type** %7, align 8
  br label %53

39:                                               ; preds = %25
  %40 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %7, align 8
  %41 = icmp ne %struct.spi_nor_erase_type* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %6, align 8
  %44 = getelementptr inbounds %struct.spi_nor_erase_type, %struct.spi_nor_erase_type* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %6, align 8
  store %struct.spi_nor_erase_type* %48, %struct.spi_nor_erase_type** %7, align 8
  br label %49

49:                                               ; preds = %47, %42, %39
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  br label %15

53:                                               ; preds = %37, %15
  %54 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %7, align 8
  %55 = icmp ne %struct.spi_nor_erase_type* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store %struct.spi_nor_erase_type* null, %struct.spi_nor_erase_type** %3, align 8
  br label %79

57:                                               ; preds = %53
  %58 = load i32, i32* @SNOR_ERASE_TYPE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %61 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %7, align 8
  %65 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %66 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %65, i32 0, i32 1
  %67 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %66, align 8
  %68 = ptrtoint %struct.spi_nor_erase_type* %64 to i64
  %69 = ptrtoint %struct.spi_nor_erase_type* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @BIT(i32 %72)
  %74 = load %struct.spi_nor_erase_map*, %struct.spi_nor_erase_map** %4, align 8
  %75 = getelementptr inbounds %struct.spi_nor_erase_map, %struct.spi_nor_erase_map* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %7, align 8
  store %struct.spi_nor_erase_type* %78, %struct.spi_nor_erase_type** %3, align 8
  br label %79

79:                                               ; preds = %57, %56
  %80 = load %struct.spi_nor_erase_type*, %struct.spi_nor_erase_type** %3, align 8
  ret %struct.spi_nor_erase_type* %80
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
