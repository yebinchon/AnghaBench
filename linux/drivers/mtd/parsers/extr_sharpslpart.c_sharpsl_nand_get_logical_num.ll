; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_get_logical_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_get_logical_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAND_NOOB_LOGADDR_00 = common dso_local global i64 0, align 8
@NAND_NOOB_LOGADDR_10 = common dso_local global i64 0, align 8
@NAND_NOOB_LOGADDR_01 = common dso_local global i64 0, align 8
@NAND_NOOB_LOGADDR_11 = common dso_local global i64 0, align 8
@NAND_NOOB_LOGADDR_20 = common dso_local global i64 0, align 8
@NAND_NOOB_LOGADDR_21 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BLOCK_UNMASK_COMPLEMENT = common dso_local global i32 0, align 4
@BLOCK_IS_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sharpsl_nand_get_logical_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_nand_get_logical_num(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i64, i64* @NAND_NOOB_LOGADDR_00, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* @NAND_NOOB_LOGADDR_10, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* @NAND_NOOB_LOGADDR_01, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* @NAND_NOOB_LOGADDR_11, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i64, i64* @NAND_NOOB_LOGADDR_00, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i64, i64* @NAND_NOOB_LOGADDR_01, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %86

31:                                               ; preds = %16, %1
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* @NAND_NOOB_LOGADDR_10, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* @NAND_NOOB_LOGADDR_20, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* @NAND_NOOB_LOGADDR_11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i64, i64* @NAND_NOOB_LOGADDR_21, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i64, i64* @NAND_NOOB_LOGADDR_10, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = load i64, i64* @NAND_NOOB_LOGADDR_11, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %85

56:                                               ; preds = %41, %31
  %57 = load i32*, i32** %3, align 8
  %58 = load i64, i64* @NAND_NOOB_LOGADDR_20, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* @NAND_NOOB_LOGADDR_00, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %56
  %67 = load i32*, i32** %3, align 8
  %68 = load i64, i64* @NAND_NOOB_LOGADDR_21, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i64, i64* @NAND_NOOB_LOGADDR_01, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load i64, i64* @NAND_NOOB_LOGADDR_20, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  %79 = load i64, i64* @NAND_NOOB_LOGADDR_21, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %84

81:                                               ; preds = %66, %56
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %118

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %26
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %91, %97
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @hweight16(i32 %99)
  %101 = load i32, i32* @BLOCK_UNMASK_COMPLEMENT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %118

107:                                              ; preds = %86
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @BLOCK_IS_RESERVED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @BLOCK_IS_RESERVED, align 4
  store i32 %112, i32* %2, align 4
  br label %118

113:                                              ; preds = %107
  %114 = load i32, i32* %4, align 4
  %115 = ashr i32 %114, 1
  %116 = call i32 @GENMASK(i32 9, i32 0)
  %117 = and i32 %115, %116
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %111, %104, %81
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @hweight16(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
