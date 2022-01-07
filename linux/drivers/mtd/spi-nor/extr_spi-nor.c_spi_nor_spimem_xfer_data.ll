; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_xfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_xfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i8*, i32 }
%struct.spi_mem_op = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_mem_op*)* @spi_nor_spimem_xfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spimem_xfer_data(%struct.spi_nor* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %10 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %18 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %24 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @object_is_on_stack(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @virt_addr_valid(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %28
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %37
  %41 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %42 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %46 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %51 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %54 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %40
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %65 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %7, align 8
  %69 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %70 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %73 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  br label %93

76:                                               ; preds = %56
  %77 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %78 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %81 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  %84 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %85 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %89 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @memcpy(i8* %86, i8* %87, i32 %91)
  br label %93

93:                                               ; preds = %76, %63
  br label %94

94:                                               ; preds = %93, %37
  %95 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %96 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %99 = call i32 @spi_mem_adjust_op_size(i32 %97, %struct.spi_mem_op* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %139

104:                                              ; preds = %94
  %105 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %106 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %109 = call i32 @spi_mem_exec_op(i32 %107, %struct.spi_mem_op* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %139

114:                                              ; preds = %104
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %119 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load i8*, i8** %7, align 8
  %126 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %127 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %130 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @memcpy(i8* %125, i8* %128, i32 %132)
  br label %134

134:                                              ; preds = %124, %117, %114
  %135 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %136 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %112, %102
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @object_is_on_stack(i8*) #1

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spi_mem_adjust_op_size(i32, %struct.spi_mem_op*) #1

declare dso_local i32 @spi_mem_exec_op(i32, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
