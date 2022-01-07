; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.mtk_nor* }
%struct.mtk_nor = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"write buffer enable failed!\0A\00", align 1
@SFLASH_WRBUF_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"write buffer failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"write buffer disable failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"write single byte failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64, i64, i32*)* @mtk_nor_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_write(%struct.spi_nor* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtk_nor*, align 8
  %12 = alloca i64, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load %struct.mtk_nor*, %struct.mtk_nor** %14, align 8
  store %struct.mtk_nor* %15, %struct.mtk_nor** %11, align 8
  %16 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %17 = call i32 @mtk_nor_write_buffer_enable(%struct.mtk_nor* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %22 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %93

26:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @SFLASH_WRBUF_SIZE, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %8, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @mtk_nor_write_buffer(%struct.mtk_nor* %34, i64 %35, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %42 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %93

46:                                               ; preds = %33
  %47 = load i64, i64* @SFLASH_WRBUF_SIZE, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* @SFLASH_WRBUF_SIZE, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %9, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i64, i64* @SFLASH_WRBUF_SIZE, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %12, align 8
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %59 = call i32 @mtk_nor_write_buffer_disable(%struct.mtk_nor* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %64 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %93

68:                                               ; preds = %57
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @mtk_nor_write_single_byte(%struct.mtk_nor* %73, i64 %74, i32 %78, i32* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load %struct.mtk_nor*, %struct.mtk_nor** %11, align 8
  %85 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %93

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %83, %62, %40, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @mtk_nor_write_buffer_enable(%struct.mtk_nor*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mtk_nor_write_buffer(%struct.mtk_nor*, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_nor_write_buffer_disable(%struct.mtk_nor*) #1

declare dso_local i32 @mtk_nor_write_single_byte(%struct.mtk_nor*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
