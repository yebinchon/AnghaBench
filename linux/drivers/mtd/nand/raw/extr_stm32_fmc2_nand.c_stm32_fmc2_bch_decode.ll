; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_bch_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_bch_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMC2_BCHDSR0_DEF = common dso_local global i32 0, align 4
@FMC2_BCHDSR0_DUE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@FMC2_BCHDSR1_EBP1_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR1_EBP2_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR1_EBP2_SHIFT = common dso_local global i32 0, align 4
@FMC2_BCHDSR2_EBP3_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR2_EBP4_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR2_EBP4_SHIFT = common dso_local global i32 0, align 4
@FMC2_BCHDSR3_EBP5_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR3_EBP6_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR3_EBP6_SHIFT = common dso_local global i32 0, align 4
@FMC2_BCHDSR4_EBP7_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR4_EBP8_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR4_EBP8_SHIFT = common dso_local global i32 0, align 4
@FMC2_BCHDSR0_DEN_MASK = common dso_local global i32 0, align 4
@FMC2_BCHDSR0_DEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @stm32_fmc2_bch_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_bch_decode(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FMC2_BCHDSR0_DEF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @FMC2_BCHDSR0_DUE, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EBADMSG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %124

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @FMC2_BCHDSR1_EBP1_MASK, align 4
  %53 = and i32 %51, %52
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @FMC2_BCHDSR1_EBP2_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @FMC2_BCHDSR1_EBP2_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @FMC2_BCHDSR2_EBP3_MASK, align 4
  %63 = and i32 %61, %62
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 2
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @FMC2_BCHDSR2_EBP4_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @FMC2_BCHDSR2_EBP4_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @FMC2_BCHDSR3_EBP5_MASK, align 4
  %73 = and i32 %71, %72
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 4
  store i32 %73, i32* %74, align 16
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @FMC2_BCHDSR3_EBP6_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @FMC2_BCHDSR3_EBP6_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 5
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @FMC2_BCHDSR4_EBP7_MASK, align 4
  %83 = and i32 %81, %82
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 6
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @FMC2_BCHDSR4_EBP8_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @FMC2_BCHDSR4_EBP8_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 7
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @FMC2_BCHDSR0_DEN_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @FMC2_BCHDSR0_DEN_SHIFT, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %119, %50
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = mul nsw i32 %105, 8
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = bitcast i32* %113 to i64*
  %115 = call i32 @change_bit(i32 %112, i64* %114)
  %116 = load i32, i32* %16, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %108, %100
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %96

122:                                              ; preds = %96
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %47, %40
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @change_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
