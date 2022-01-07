; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_erase_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_erase_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { {}*, i32, i32*, i32 (%struct.spi_nor*, i32, i32*, i32)*, i32, i64 }
%struct.spi_mem_op = type { i32 }

@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @spi_nor_erase_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_erase_sector(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @spi_nor_convert_addr(%struct.spi_nor* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %12 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.spi_nor*, i32)**
  %14 = load i32 (%struct.spi_nor*, i32)*, i32 (%struct.spi_nor*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.spi_nor*, i32)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.spi_nor*, i32)**
  %20 = load i32 (%struct.spi_nor*, i32)*, i32 (%struct.spi_nor*, i32)** %19, align 8
  %21 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %20(%struct.spi_nor* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %26 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %31 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @SPI_MEM_OP_CMD(i32 %32, i32 1)
  %34 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %35 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @SPI_MEM_OP_ADDR(i32 %36, i32 %37, i32 1)
  %39 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %40 = load i32, i32* @SPI_MEM_OP_NO_DATA, align 4
  %41 = call i32 @SPI_MEM_OP(i32 %33, i32 %38, i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %44 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @spi_mem_exec_op(i64 %45, %struct.spi_mem_op* %7)
  store i32 %46, i32* %3, align 4
  br label %84

47:                                               ; preds = %24
  %48 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %49 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %66, %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 255
  %58 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %59 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 8
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %6, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %71 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %70, i32 0, i32 3
  %72 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %71, align 8
  %73 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %74 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %75 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %78 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %81 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %72(%struct.spi_nor* %73, i32 %76, i32* %79, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %69, %29, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @spi_nor_convert_addr(%struct.spi_nor*, i32) #1

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_ADDR(i32, i32, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
