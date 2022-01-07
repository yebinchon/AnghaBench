; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_info = type { i64, i32 }
%struct.spi_nor = type { i32 (%struct.spi_nor*, i32, i32*, i32)*, i32, i64, i32* }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_RDID = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@SPI_NOR_MAX_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error %d reading JEDEC ID\0A\00", align 1
@spi_nor_ids = common dso_local global %struct.flash_info* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"unrecognized JEDEC id bytes: %*ph\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_info* (%struct.spi_nor*)* @spi_nor_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_info* @spi_nor_read_id(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.flash_info*, align 8
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.flash_info*, align 8
  %7 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %8 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %9 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %12 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @SPINOR_OP_RDID, align 4
  %17 = call i32 @SPI_MEM_OP_CMD(i32 %16, i32 1)
  %18 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %19 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %20 = load i32, i32* @SPI_NOR_MAX_ID_LEN, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @SPI_MEM_OP_DATA_IN(i32 %20, i32* %21, i32 1)
  %23 = call i32 @SPI_MEM_OP(i32 %17, i32 %18, i32 %19, i32 %22)
  %24 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %26 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @spi_mem_exec_op(i64 %27, %struct.spi_mem_op* %7)
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %31 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %30, i32 0, i32 0
  %32 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %31, align 8
  %33 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %34 = load i32, i32* @SPINOR_OP_RDID, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @SPI_NOR_MAX_ID_LEN, align 4
  %37 = call i32 %32(%struct.spi_nor* %33, i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %15
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %43 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call %struct.flash_info* @ERR_PTR(i32 %47)
  store %struct.flash_info* %48, %struct.flash_info** %2, align 8
  br label %95

49:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.flash_info*, %struct.flash_info** @spi_nor_ids, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.flash_info* %52)
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load %struct.flash_info*, %struct.flash_info** @spi_nor_ids, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %57, i64 %59
  store %struct.flash_info* %60, %struct.flash_info** %6, align 8
  %61 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %62 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %56
  %66 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %67 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %71 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @memcmp(i32 %68, i32* %69, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %65
  %76 = load %struct.flash_info*, %struct.flash_info** @spi_nor_ids, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %76, i64 %78
  store %struct.flash_info* %79, %struct.flash_info** %2, align 8
  br label %95

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %50

85:                                               ; preds = %50
  %86 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %87 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SPI_NOR_MAX_ID_LEN, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32* %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  %94 = call %struct.flash_info* @ERR_PTR(i32 %93)
  store %struct.flash_info* %94, %struct.flash_info** %2, align 8
  br label %95

95:                                               ; preds = %85, %75, %41
  %96 = load %struct.flash_info*, %struct.flash_info** %2, align 8
  ret %struct.flash_info* %96
}

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_IN(i32, i32*, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.flash_info* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.flash_info*) #1

declare dso_local i32 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
