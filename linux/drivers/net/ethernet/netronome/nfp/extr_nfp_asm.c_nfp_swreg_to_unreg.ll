; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_asm.c_nfp_swreg_to_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_asm.c_nfp_swreg_to_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UR_REG_NN = common dso_local global i32 0, align 4
@UR_REG_XFR = common dso_local global i32 0, align 4
@UR_REG_LM_IDX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LM offset too large\0A\00", align 1
@UR_REG_LM = common dso_local global i32 0, align 4
@UR_REG_LM_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"LM offset in inc/dev mode\0A\00", align 1
@UR_REG_LM_POST_MOD = common dso_local global i32 0, align 4
@UR_REG_LM_POST_MOD_DEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"bad LM mode for unrestricted operands %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"immediate too large\0A\00", align 1
@UR_REG_NO_DST = common dso_local global i32 0, align 4
@REG_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"unrecognized reg encoding %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nfp_swreg_to_unreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_swreg_to_unreg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @swreg_value(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @swreg_type(i32 %11)
  switch i32 %12, label %84 [
    i32 135, label %13
    i32 134, label %13
    i32 133, label %13
    i32 130, label %15
    i32 128, label %19
    i32 131, label %23
    i32 132, label %66
    i32 129, label %75
  ]

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* @UR_REG_NN, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load i32, i32* @UR_REG_XFR, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @swreg_lm_idx(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @swreg_lm_mode(i32 %26)
  switch i32 %27, label %62 [
    i32 136, label %28
    i32 138, label %44
    i32 137, label %45
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @UR_REG_LM_IDX_MAX, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

36:                                               ; preds = %28
  %37 = load i32, i32* @UR_REG_LM, align 4
  %38 = load i32, i32* @UR_REG_LM_IDX, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @FIELD_PREP(i32 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %23, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

50:                                               ; preds = %45
  %51 = load i32, i32* @UR_REG_LM, align 4
  %52 = load i32, i32* @UR_REG_LM_POST_MOD, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UR_REG_LM_IDX, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @FIELD_PREP(i32 %54, i32 %55)
  %57 = or i32 %53, %56
  %58 = load i32, i32* @UR_REG_LM_POST_MOD_DEC, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @FIELD_PREP(i32 %58, i32 %59)
  %61 = or i32 %57, %60
  store i32 %61, i32* %3, align 4
  br label %87

62:                                               ; preds = %23
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @swreg_lm_mode(i32 %63)
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 0, i32* %3, align 4
  br label %87

66:                                               ; preds = %2
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, -256
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %87

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @UR_REG_IMM_encode(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %87

75:                                               ; preds = %2
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @UR_REG_NO_DST, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @REG_NONE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %3, align 4
  br label %87

84:                                               ; preds = %2
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %82, %72, %70, %62, %50, %48, %36, %34, %19, %15, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @swreg_value(i32) #1

declare dso_local i32 @swreg_type(i32) #1

declare dso_local i32 @swreg_lm_idx(i32) #1

declare dso_local i32 @swreg_lm_mode(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @UR_REG_IMM_encode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
