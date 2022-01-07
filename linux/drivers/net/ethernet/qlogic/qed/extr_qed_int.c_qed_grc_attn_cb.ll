; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_grc_attn_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_grc_attn_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32 }

@GRC_REG_TIMEOUT_ATTN_ACCESS_VALID = common dso_local global i32 0, align 4
@QED_GRC_ATTENTION_VALID_BIT = common dso_local global i32 0, align 4
@GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0 = common dso_local global i32 0, align 4
@GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"GRC timeout [%08x:%08x] - %s Address [%08x] [Master %s] [PF: %02x %s %02x]\0A\00", align 1
@QED_GRC_ATTENTION_RDWR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Write to\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Read from\00", align 1
@QED_GRC_ATTENTION_ADDRESS = common dso_local global i32 0, align 4
@QED_GRC_ATTENTION_MASTER = common dso_local global i32 0, align 4
@QED_GRC_ATTENTION_PF = common dso_local global i32 0, align 4
@QED_GRC_ATTENTION_PRIV = common dso_local global i32 0, align 4
@QED_GRC_ATTENTION_PRIV_VF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"VF\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(Irrelevant)\00", align 1
@QED_GRC_ATTENTION_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_grc_attn_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_grc_attn_cb(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_VALID, align 4
  %10 = call i32 @qed_rd(%struct.qed_hwfn* %5, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @QED_GRC_ATTENTION_VALID_BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_0, align 4
  %22 = call i32 @qed_rd(%struct.qed_hwfn* %17, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_DATA_1, align 4
  %28 = call i32 @qed_rd(%struct.qed_hwfn* %23, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @QED_GRC_ATTENTION_RDWR_BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @QED_GRC_ATTENTION_ADDRESS, align 4
  %42 = call i32 @GET_FIELD(i32 %40, i32 %41)
  %43 = shl i32 %42, 2
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @QED_GRC_ATTENTION_MASTER, align 4
  %46 = call i32 @GET_FIELD(i32 %44, i32 %45)
  %47 = call i32 @attn_master_to_str(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @QED_GRC_ATTENTION_PF, align 4
  %50 = call i32 @GET_FIELD(i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @QED_GRC_ATTENTION_PRIV, align 4
  %53 = call i32 @GET_FIELD(i32 %51, i32 %52)
  %54 = load i32, i32* @QED_GRC_ATTENTION_PRIV_VF, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @QED_GRC_ATTENTION_VF, align 4
  %60 = call i32 @GET_FIELD(i32 %58, i32 %59)
  %61 = call i32 @DP_INFO(i32 %31, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i8* %39, i32 %43, i32 %47, i32 %50, i8* %57, i32 %60)
  br label %62

62:                                               ; preds = %16, %15
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %65 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GRC_REG_TIMEOUT_ATTN_ACCESS_VALID, align 4
  %68 = call i32 @qed_wr(%struct.qed_hwfn* %63, i32 %66, i32 %67, i32 0)
  ret i32 0
}

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_INFO(i32, i8*, i32, i32, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @attn_master_to_str(i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
