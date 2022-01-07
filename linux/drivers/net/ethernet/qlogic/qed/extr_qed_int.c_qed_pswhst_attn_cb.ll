; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_pswhst_attn_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_pswhst_attn_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32 }

@PSWHST_REG_INCORRECT_ACCESS_VALID = common dso_local global i32 0, align 4
@QED_PSWHST_ATTENTION_INCORRECT_ACCESS = common dso_local global i32 0, align 4
@PSWHST_REG_INCORRECT_ACCESS_ADDRESS = common dso_local global i32 0, align 4
@PSWHST_REG_INCORRECT_ACCESS_DATA = common dso_local global i32 0, align 4
@PSWHST_REG_INCORRECT_ACCESS_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"Incorrect access to %08x of length %08x - PF [%02x] VF [%04x] [valid %02x] client [%02x] write [%02x] Byte-Enable [%04x] [%08x]\0A\00", align 1
@ATTENTION_INCORRECT_ACCESS_PF_ID = common dso_local global i32 0, align 4
@ATTENTION_INCORRECT_ACCESS_VF_ID = common dso_local global i32 0, align 4
@ATTENTION_INCORRECT_ACCESS_VF_VALID = common dso_local global i32 0, align 4
@ATTENTION_INCORRECT_ACCESS_CLIENT = common dso_local global i32 0, align 4
@ATTENTION_INCORRECT_ACCESS_WR = common dso_local global i32 0, align 4
@ATTENTION_INCORRECT_ACCESS_BYTE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_pswhst_attn_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_pswhst_attn_cb(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PSWHST_REG_INCORRECT_ACCESS_VALID, align 4
  %12 = call i32 @qed_rd(%struct.qed_hwfn* %7, i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @QED_PSWHST_ATTENTION_INCORRECT_ACCESS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %1
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PSWHST_REG_INCORRECT_ACCESS_ADDRESS, align 4
  %23 = call i32 @qed_rd(%struct.qed_hwfn* %18, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PSWHST_REG_INCORRECT_ACCESS_DATA, align 4
  %29 = call i32 @qed_rd(%struct.qed_hwfn* %24, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PSWHST_REG_INCORRECT_ACCESS_LENGTH, align 4
  %35 = call i32 @qed_rd(%struct.qed_hwfn* %30, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %37 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ATTENTION_INCORRECT_ACCESS_PF_ID, align 4
  %43 = call i64 @GET_FIELD(i32 %41, i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ATTENTION_INCORRECT_ACCESS_VF_ID, align 4
  %47 = call i64 @GET_FIELD(i32 %45, i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ATTENTION_INCORRECT_ACCESS_VF_VALID, align 4
  %51 = call i64 @GET_FIELD(i32 %49, i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ATTENTION_INCORRECT_ACCESS_CLIENT, align 4
  %55 = call i64 @GET_FIELD(i32 %53, i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ATTENTION_INCORRECT_ACCESS_WR, align 4
  %59 = call i64 @GET_FIELD(i32 %57, i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @ATTENTION_INCORRECT_ACCESS_BYTE_EN, align 4
  %63 = call i64 @GET_FIELD(i32 %61, i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @DP_INFO(i32 %38, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_INFO(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
