; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_move_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_move_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32*, i32, i32*, %struct.swap_eb*, i32, i32, %struct.mtd_info* }
%struct.swap_eb = type { i32, i32 }
%struct.mtd_info = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EBLOCK_READERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Read Error: %d (block %u)\0A\00", align 1
@MTDSWAP_IO_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Short read: %zd (block %u)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BLOCK_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Write error: %d\0A\00", align 1
@PAGE_UNDEF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, i32, i32*)* @mtdswap_move_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_move_block(%struct.mtdswap_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtdswap_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.swap_eb*, align 8
  %10 = alloca %struct.swap_eb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %16, i32 0, i32 6
  %18 = load %struct.mtd_info*, %struct.mtd_info** %17, align 8
  store %struct.mtd_info* %18, %struct.mtd_info** %8, align 8
  %19 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %70, %3
  %30 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %34 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mtd_read(%struct.mtd_info* %30, i32 %31, i64 %32, i64* %12, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @mtd_is_bitflip(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %39
  %44 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %44, i32 0, i32 3
  %46 = load %struct.swap_eb*, %struct.swap_eb** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %49 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = udiv i32 %47, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %46, i64 %52
  store %struct.swap_eb* %53, %struct.swap_eb** %10, align 8
  %54 = load i32, i32* @EBLOCK_READERR, align 4
  %55 = load %struct.swap_eb*, %struct.swap_eb** %10, align 8
  %56 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %60 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MTDSWAP_IO_RETRIES, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %43
  br label %29

71:                                               ; preds = %43
  br label %153

72:                                               ; preds = %39, %29
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %153

86:                                               ; preds = %72
  %87 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %88 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %89 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @mtdswap_write_block(%struct.mtdswap_dev* %87, i32 %90, i32 %91, i32* %92, i32 1)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %86
  %97 = load i8*, i8** @BLOCK_ERROR, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %100 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %106 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %171

111:                                              ; preds = %86
  %112 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %113 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %112, i32 0, i32 3
  %114 = load %struct.swap_eb*, %struct.swap_eb** %113, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %118 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = udiv i32 %116, %119
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %114, i64 %121
  store %struct.swap_eb* %122, %struct.swap_eb** %9, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %126 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load i8*, i8** @PAGE_UNDEF, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %134 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  %139 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %140 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %139, i32 0, i32 3
  %141 = load %struct.swap_eb*, %struct.swap_eb** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %144 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = udiv i32 %142, %145
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %141, i64 %147
  store %struct.swap_eb* %148, %struct.swap_eb** %9, align 8
  %149 = load %struct.swap_eb*, %struct.swap_eb** %9, align 8
  %150 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 4
  store i32 0, i32* %4, align 4
  br label %171

153:                                              ; preds = %76, %71
  %154 = load i8*, i8** @BLOCK_ERROR, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %157 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load i8*, i8** @PAGE_UNDEF, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %165 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %153, %111, %96
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i32) #1

declare dso_local i32 @mtd_is_bitflip(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @mtdswap_write_block(%struct.mtdswap_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
