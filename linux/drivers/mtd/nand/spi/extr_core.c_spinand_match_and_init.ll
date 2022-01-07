; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_match_and_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_match_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.spi_mem_op*, %struct.spi_mem_op*, %struct.spi_mem_op* }
%struct.spi_mem_op = type { i32 }
%struct.spinand_info = type { i64, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nand_device = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spinand_match_and_init(%struct.spinand_device* %0, %struct.spinand_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spinand_device*, align 8
  %7 = alloca %struct.spinand_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nand_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.spinand_info*, align 8
  %13 = alloca %struct.spi_mem_op*, align 8
  store %struct.spinand_device* %0, %struct.spinand_device** %6, align 8
  store %struct.spinand_info* %1, %struct.spinand_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %15 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %14)
  store %struct.nand_device* %15, %struct.nand_device** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %114, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = load %struct.spinand_info*, %struct.spinand_info** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %21, i64 %23
  store %struct.spinand_info* %24, %struct.spinand_info** %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.spinand_info*, %struct.spinand_info** %12, align 8
  %27 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %114

31:                                               ; preds = %20
  %32 = load %struct.spinand_info*, %struct.spinand_info** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %32, i64 %34
  %36 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nand_device*, %struct.nand_device** %10, align 8
  %39 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.spinand_info*, %struct.spinand_info** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %40, i64 %42
  %44 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nand_device*, %struct.nand_device** %10, align 8
  %47 = getelementptr inbounds %struct.nand_device, %struct.nand_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.spinand_info*, %struct.spinand_info** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %48, i64 %50
  %52 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %55 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.spinand_info*, %struct.spinand_info** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %56, i64 %58
  %60 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %63 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.spinand_info*, %struct.spinand_info** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %64, i64 %66
  %68 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %71 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %73 = load %struct.spinand_info*, %struct.spinand_info** %12, align 8
  %74 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.spi_mem_op* @spinand_select_op_variant(%struct.spinand_device* %72, i32 %76)
  store %struct.spi_mem_op* %77, %struct.spi_mem_op** %13, align 8
  %78 = load %struct.spi_mem_op*, %struct.spi_mem_op** %13, align 8
  %79 = icmp ne %struct.spi_mem_op* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %31
  %81 = load i32, i32* @ENOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %120

83:                                               ; preds = %31
  %84 = load %struct.spi_mem_op*, %struct.spi_mem_op** %13, align 8
  %85 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %86 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store %struct.spi_mem_op* %84, %struct.spi_mem_op** %87, align 8
  %88 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %89 = load %struct.spinand_info*, %struct.spinand_info** %12, align 8
  %90 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.spi_mem_op* @spinand_select_op_variant(%struct.spinand_device* %88, i32 %92)
  store %struct.spi_mem_op* %93, %struct.spi_mem_op** %13, align 8
  %94 = load %struct.spi_mem_op*, %struct.spi_mem_op** %13, align 8
  %95 = icmp ne %struct.spi_mem_op* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %120

99:                                               ; preds = %83
  %100 = load %struct.spi_mem_op*, %struct.spi_mem_op** %13, align 8
  %101 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %102 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store %struct.spi_mem_op* %100, %struct.spi_mem_op** %103, align 8
  %104 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %105 = load %struct.spinand_info*, %struct.spinand_info** %12, align 8
  %106 = getelementptr inbounds %struct.spinand_info, %struct.spinand_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.spi_mem_op* @spinand_select_op_variant(%struct.spinand_device* %104, i32 %108)
  store %struct.spi_mem_op* %109, %struct.spi_mem_op** %13, align 8
  %110 = load %struct.spi_mem_op*, %struct.spi_mem_op** %13, align 8
  %111 = load %struct.spinand_device*, %struct.spinand_device** %6, align 8
  %112 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store %struct.spi_mem_op* %110, %struct.spi_mem_op** %113, align 8
  store i32 0, i32* %5, align 4
  br label %120

114:                                              ; preds = %30
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %16

117:                                              ; preds = %16
  %118 = load i32, i32* @ENOTSUPP, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %99, %96, %80
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local %struct.spi_mem_op* @spinand_select_op_variant(%struct.spinand_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
