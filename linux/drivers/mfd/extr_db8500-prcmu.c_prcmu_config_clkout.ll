; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_config_clkout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_config_clkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prcmu_config_clkout.requests = internal global [2 x i32] zeroinitializer, align 4
@PRCMU_CLKSRC_CLK009 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKODIV0_MASK = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKOSEL0_MASK = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKOSEL0_SHIFT = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKODIV0_SHIFT = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKODIV1_MASK = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKOSEL1_MASK = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLK1TYPE = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKOSEL1_SHIFT = common dso_local global i32 0, align 4
@PRCM_CLKOCR_CLKODIV1_SHIFT = common dso_local global i32 0, align 4
@clkout_lock = common dso_local global i32 0, align 4
@PRCM_CLKOCR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prcmu_config_clkout(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 63
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PRCMU_CLKSRC_CLK009, align 4
  %27 = icmp sgt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ false, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* @prcmu_config_clkout.requests, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %133

43:                                               ; preds = %34, %28
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* @PRCM_CLKOCR_CLKODIV0_MASK, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @PRCM_CLKOCR_CLKODIV0_MASK, align 4
  %49 = load i32, i32* @PRCM_CLKOCR_CLKOSEL0_MASK, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PRCM_CLKOCR_CLKOSEL0_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PRCM_CLKOCR_CLKODIV0_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  store i32 %57, i32* %11, align 4
  br label %72

58:                                               ; preds = %43
  %59 = load i32, i32* @PRCM_CLKOCR_CLKODIV1_MASK, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @PRCM_CLKOCR_CLKODIV1_MASK, align 4
  %61 = load i32, i32* @PRCM_CLKOCR_CLKOSEL1_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PRCM_CLKOCR_CLK1TYPE, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PRCM_CLKOCR_CLKOSEL1_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @PRCM_CLKOCR_CLKODIV1_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %58, %46
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @spin_lock_irqsave(i32* @clkout_lock, i64 %76)
  %78 = load i32, i32* @PRCM_CLKOCR, align 4
  %79 = call i32 @readl(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %129

96:                                               ; preds = %87
  br label %110

97:                                               ; preds = %84
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %129

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %72
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = or i32 %112, %116
  %118 = load i32, i32* @PRCM_CLKOCR, align 4
  %119 = call i32 @writel(i32 %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 -1
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* @prcmu_config_clkout.requests, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %111, %106, %93
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* @clkout_lock, i64 %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %40
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
