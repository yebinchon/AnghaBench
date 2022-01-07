; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sb_attn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sb_attn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.aeu_invert_reg_bit* }
%struct.aeu_invert_reg_bit = type { i32 }
%struct.qed_hwfn = type { i32, %struct.qed_sb_attn_info* }
%struct.qed_sb_attn_info = type { i32*, i64, %struct.TYPE_2__*, i32, i8* }
%struct.qed_ptt = type { i32 }

@aeu_descs = common dso_local global %struct.TYPE_2__* null, align 8
@NUM_ATTN_REGS = common dso_local global i32 0, align 4
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Attn Mask [Reg %d]: 0x%08x\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i8*, i32)* @qed_int_sb_attn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_int_sb_attn_init(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_sb_attn_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aeu_invert_reg_bit*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 1
  %16 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %15, align 8
  store %struct.qed_sb_attn_info* %16, %struct.qed_sb_attn_info** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %19 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %22 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aeu_descs, align 8
  %24 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %25 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %24, i32 0, i32 2
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %27 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @NUM_ATTN_REGS, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %28, i32 0, i32 %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %91, %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @NUM_ATTN_REGS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %94

38:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %76, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aeu_descs, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %48, i64 %50
  store %struct.aeu_invert_reg_bit* %51, %struct.aeu_invert_reg_bit** %13, align 8
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %53 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %13, align 8
  %54 = call i64 @qed_int_is_parity_flag(%struct.qed_hwfn* %52, %struct.aeu_invert_reg_bit* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %60 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %56, %42
  %68 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %13, align 8
  %69 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ATTENTION_LENGTH(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %39

79:                                               ; preds = %39
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %81 = load i32, i32* @NETIF_MSG_INTR, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %84 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %80, i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %34

94:                                               ; preds = %34
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %96 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_0, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %9, align 8
  %103 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %105 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %106 = call i32 @qed_int_sb_attn_setup(%struct.qed_hwfn* %104, %struct.qed_ptt* %105)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @qed_int_is_parity_flag(%struct.qed_hwfn*, %struct.aeu_invert_reg_bit*) #1

declare dso_local i64 @ATTENTION_LENGTH(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_int_sb_attn_setup(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
