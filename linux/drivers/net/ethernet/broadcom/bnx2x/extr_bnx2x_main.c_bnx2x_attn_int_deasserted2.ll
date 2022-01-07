; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@AEU_INPUTS_ATTN_BITS_CFC_HW_INTERRUPT = common dso_local global i32 0, align 4
@CFC_REG_CFC_INT_STS_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CFC hw attention 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"FATAL error from CFC\0A\00", align 1
@AEU_INPUTS_ATTN_BITS_PXP_HW_INTERRUPT = common dso_local global i32 0, align 4
@PXP_REG_PXP_INT_STS_CLR_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"PXP hw attention-0 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FATAL error from PXP\0A\00", align 1
@PXP_REG_PXP_INT_STS_CLR_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"PXP hw attention-1 0x%x\0A\00", align 1
@HW_INTERRUPT_ASSERT_SET_2 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_2 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"FATAL HW block attention set2 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_deasserted2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_deasserted2(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AEU_INPUTS_ATTN_BITS_CFC_HW_INTERRUPT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = load i32, i32* @CFC_REG_CFC_INT_STS_CLR, align 4
  %15 = call i32 @REG_RD(%struct.bnx2x* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %12
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PXP_HW_INTERRUPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i32, i32* @PXP_REG_PXP_INT_STS_CLR_0, align 4
  %32 = call i32 @REG_RD(%struct.bnx2x* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 98304
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i32, i32* @PXP_REG_PXP_INT_STS_CLR_1, align 4
  %47 = call i32 @REG_RD(%struct.bnx2x* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @HW_INTERRUPT_ASSERT_SET_2, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %51
  %57 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %58 = call i32 @BP_PORT(%struct.bnx2x* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_2, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_2, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %7, align 4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @REG_RD(%struct.bnx2x* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @HW_INTERRUPT_ASSERT_SET_2, align 4
  %72 = and i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @REG_WR(%struct.bnx2x* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @HW_INTERRUPT_ASSERT_SET_2, align 4
  %82 = and i32 %80, %81
  %83 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = call i32 (...) @bnx2x_panic()
  br label %85

85:                                               ; preds = %65, %51
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_panic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
