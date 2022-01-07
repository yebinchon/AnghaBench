; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_request_plldsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_request_plldsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP = common dso_local global i32 0, align 4
@PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI = common dso_local global i32 0, align 4
@PRCM_MMIP_LS_CLAMP_CLR = common dso_local global i32 0, align 4
@PRCM_MMIP_LS_CLAMP_SET = common dso_local global i32 0, align 4
@PRCM_PLLDSI_ENABLE = common dso_local global i32 0, align 4
@PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE = common dso_local global i32 0, align 4
@PRCM_APE_RESETN_DSIPLL_RESETN = common dso_local global i32 0, align 4
@PRCM_APE_RESETN_SET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PRCM_APE_RESETN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @request_plldsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_plldsi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP, align 4
  %8 = load i32, i32* @PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @PRCM_MMIP_LS_CLAMP_CLR, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @PRCM_MMIP_LS_CLAMP_SET, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @writel(i32 %9, i32 %17)
  %19 = load i32, i32* @PRCM_PLLDSI_ENABLE, align 4
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %16
  %28 = load i32, i32* @PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PRCM_PLLDSI_ENABLE, align 4
  %35 = call i32 @writel(i32 %33, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = call i32 (...) @plldsi_locked()
  store i32 %39, i32* %6, align 4
  store i32 10, i32* %5, align 4
  br label %40

40:                                               ; preds = %51, %38
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ugt i32 %44, 0
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = call i32 @udelay(i32 100)
  %50 = call i32 (...) @plldsi_locked()
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %5, align 4
  br label %40

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @PRCM_APE_RESETN_DSIPLL_RESETN, align 4
  %59 = load i32, i32* @PRCM_APE_RESETN_SET, align 4
  %60 = call i32 @writel(i32 %58, i32 %59)
  br label %76

61:                                               ; preds = %54
  %62 = load i32, i32* @PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP, align 4
  %63 = load i32, i32* @PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PRCM_MMIP_LS_CLAMP_SET, align 4
  %66 = call i32 @writel(i32 %64, i32 %65)
  %67 = load i32, i32* @PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @PRCM_PLLDSI_ENABLE, align 4
  %73 = call i32 @writel(i32 %71, i32 %72)
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %61, %57
  br label %81

77:                                               ; preds = %32
  %78 = load i32, i32* @PRCM_APE_RESETN_DSIPLL_RESETN, align 4
  %79 = load i32, i32* @PRCM_APE_RESETN_CLR, align 4
  %80 = call i32 @writel(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @plldsi_locked(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
