; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.spi_nor = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"from 0x%08x, len %zd\0A\00", align 1
@SPI_NOR_OPS_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @spi_nor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.spi_nor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = call %struct.spi_nor* @mtd_to_spi_nor(%struct.mtd_info* %15)
  store %struct.spi_nor* %16, %struct.spi_nor** %12, align 8
  %17 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22)
  %24 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %25 = load i32, i32* @SPI_NOR_OPS_READ, align 4
  %26 = call i32 @spi_nor_lock_and_prep(%struct.spi_nor* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %84

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i64 @spi_nor_convert_addr(%struct.spi_nor* %37, i64 %38)
  store i64 %39, i64* %14, align 8
  %40 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @spi_nor_read_data(%struct.spi_nor* %40, i64 %41, i64 %42, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  br label %79

50:                                               ; preds = %35
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %79

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = icmp ugt i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %62
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %9, align 8
  br label %32

78:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %53, %47
  %80 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %81 = load i32, i32* @SPI_NOR_OPS_READ, align 4
  %82 = call i32 @spi_nor_unlock_and_unprep(%struct.spi_nor* %80, i32 %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %29
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.spi_nor* @mtd_to_spi_nor(%struct.mtd_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @spi_nor_lock_and_prep(%struct.spi_nor*, i32) #1

declare dso_local i64 @spi_nor_convert_addr(%struct.spi_nor*, i64) #1

declare dso_local i32 @spi_nor_read_data(%struct.spi_nor*, i64, i64, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spi_nor_unlock_and_unprep(%struct.spi_nor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
