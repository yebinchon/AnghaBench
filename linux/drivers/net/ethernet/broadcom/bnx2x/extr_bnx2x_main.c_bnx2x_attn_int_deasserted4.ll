; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@AEU_INPUTS_ATTN_BITS_PGLUE_HW_INTERRUPT = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGLUE_B_INT_STS_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"PGLUE hw attention 0x%x\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN\0A\00", align 1
@PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW\0A\00", align 1
@AEU_INPUTS_ATTN_BITS_ATC_HW_INTERRUPT = common dso_local global i32 0, align 4
@ATC_REG_ATC_INT_STS_CLR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"ATC hw attention 0x%x\0A\00", align 1
@ATC_ATC_INT_STS_REG_ADDRESS_ERROR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"ATC_ATC_INT_STS_REG_ADDRESS_ERROR\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR\0A\00", align 1
@ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU\0A\00", align 1
@AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"FATAL parity attention set4 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_deasserted4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_deasserted4(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PGLUE_HW_INTERRUPT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %2
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load i32, i32* @PGLUE_B_REG_PGLUE_B_INT_STS_CLR, align 4
  %13 = call i32 @REG_RD(%struct.bnx2x* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_ADDRESS_ERROR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %10
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_INCORRECT_RCV_BEHAVIOR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_VF_LENGTH_VIOLATION_ATTN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_VF_GRC_SPACE_VIOLATION_ATTN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_VF_MSIX_BAR_VIOLATION_ATTN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_ERROR_ATTN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_TCPL_IN_TWO_RCBS_ATTN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PGLUE_B_PGLUE_B_INT_STS_REG_CSSNOOP_FIFO_OVERFLOW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @AEU_INPUTS_ATTN_BITS_ATC_HW_INTERRUPT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %132

84:                                               ; preds = %79
  %85 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %86 = load i32, i32* @ATC_REG_ATC_INT_STS_CLR, align 4
  %87 = call i32 @REG_RD(%struct.bnx2x* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @ATC_ATC_INT_STS_REG_ADDRESS_ERROR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %84
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_TCPL_TO_NOT_PEND, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_GPA_MULTIPLE_HITS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_RCPL_TO_EMPTY_CNT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_TCPL_ERROR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ATC_ATC_INT_STS_REG_ATC_IREQ_LESS_THAN_STU, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  br label %132

132:                                              ; preds = %131, %79
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR, align 4
  %135 = load i32, i32* @AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @AEU_INPUTS_ATTN_BITS_PGLUE_PARITY_ERROR, align 4
  %142 = load i32, i32* @AEU_INPUTS_ATTN_BITS_ATC_PARITY_ERROR, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %139, %132
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
