; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_asm.c_nfp_swreg_to_rereg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_asm.c_nfp_swreg_to_rereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RE_REG_XFR = common dso_local global i32 0, align 4
@NN_LM_MOD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad LM mode for restricted operands %d\0A\00", align 1
@RE_REG_LM_IDX_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"LM offset too large\0A\00", align 1
@RE_REG_LM = common dso_local global i32 0, align 4
@RE_REG_LM_IDX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"immediate too large\0A\00", align 1
@RE_REG_NO_DST = common dso_local global i32 0, align 4
@REG_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"NNRs used with restricted encoding\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unrecognized reg encoding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @nfp_swreg_to_rereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_swreg_to_rereg(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @swreg_value(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @swreg_type(i32 %14)
  switch i32 %15, label %77 [
    i32 135, label %16
    i32 134, label %16
    i32 133, label %16
    i32 128, label %18
    i32 131, label %22
    i32 132, label %49
    i32 129, label %66
    i32 130, label %75
  ]

16:                                               ; preds = %4, %4, %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %79

18:                                               ; preds = %4
  %19 = load i32, i32* @RE_REG_XFR, align 4
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @swreg_lm_idx(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @swreg_lm_mode(i32 %25)
  %27 = load i32, i32* @NN_LM_MOD_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @swreg_lm_mode(i32 %30)
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %5, align 4
  br label %79

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RE_REG_LM_IDX_MAX, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %79

41:                                               ; preds = %33
  %42 = load i32, i32* @RE_REG_LM, align 4
  %43 = load i32, i32* @RE_REG_LM_IDX, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = or i32 %42, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %5, align 4
  br label %79

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 7
  %53 = or i32 127, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %79

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 128
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 127
  %65 = call i32 @RE_REG_IMM_encode(i32 %64)
  store i32 %65, i32* %5, align 4
  br label %79

66:                                               ; preds = %4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @RE_REG_NO_DST, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @REG_NONE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %5, align 4
  br label %79

75:                                               ; preds = %4
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %79

77:                                               ; preds = %4
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %75, %73, %59, %57, %41, %39, %29, %18, %16
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @swreg_value(i32) #1

declare dso_local i32 @swreg_type(i32) #1

declare dso_local i32 @swreg_lm_idx(i32) #1

declare dso_local i32 @swreg_lm_mode(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @RE_REG_IMM_encode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
