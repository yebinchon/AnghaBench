; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_dorq_attn_int_sts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_dorq_attn_int_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.qed_ptt* }
%struct.qed_ptt = type { i32 }

@DORQ_REG_INT_STS = common dso_local global i32 0, align 4
@DORQ_REG_INT_STS_DORQ_FIFO_AFULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DORQ attention. int_sts was %x\0A\00", align 1
@DORQ_REG_INT_STS_DB_DROP = common dso_local global i32 0, align 4
@DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_REASON = common dso_local global i32 0, align 4
@QED_DORQ_ATTENTION_REASON_MASK = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS_ADDRESS = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS_REASON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [240 x i8] c"Doorbell drop occurred\0AAddress\09\090x%08x\09(second BAR address)\0AFID\09\090x%04x\09\09(Opaque FID)\0ASize\09\090x%04x\09\09(in bytes)\0A1st drop reason\090x%08x\09(details on first drop since last handling)\0ASticky reasons\090x%08x\09(all drop reasons since last handling)\0A\00", align 1
@QED_DORQ_ATTENTION_OPAQUE = common dso_local global i32 0, align 4
@QED_DORQ_ATTENTION_SIZE = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS_REL = common dso_local global i32 0, align 4
@DORQ_REG_INT_STS_WR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"DORQ fatal attention\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_dorq_attn_int_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dorq_attn_int_sts(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_ptt*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 1
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  store %struct.qed_ptt* %12, %struct.qed_ptt** %9, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %15 = load i32, i32* @DORQ_REG_INT_STS, align 4
  %16 = call i32 @qed_rd(%struct.qed_hwfn* %13, %struct.qed_ptt* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_AFULL, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

23:                                               ; preds = %1
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, i32, ...) @DP_NOTICE(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DORQ_REG_INT_STS_DB_DROP, align 4
  %31 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %23
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %37 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %38 = load i32, i32* @DORQ_REG_DB_DROP_REASON, align 4
  %39 = call i32 @qed_rd(%struct.qed_hwfn* %36, %struct.qed_ptt* %37, i32 %38)
  %40 = load i32, i32* @QED_DORQ_ATTENTION_REASON_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %44 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS, align 4
  %45 = call i32 @qed_rd(%struct.qed_hwfn* %42, %struct.qed_ptt* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %48 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS_ADDRESS, align 4
  %49 = call i32 @qed_rd(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %51 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %52 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS_REASON, align 4
  %53 = call i32 @qed_rd(%struct.qed_hwfn* %50, %struct.qed_ptt* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %55 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @QED_DORQ_ATTENTION_OPAQUE, align 4
  %60 = call i32 @GET_FIELD(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @QED_DORQ_ATTENTION_SIZE, align 4
  %63 = call i32 @GET_FIELD(i32 %61, i32 %62)
  %64 = mul nsw i32 %63, 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, i32, ...) @DP_NOTICE(i32 %56, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %69 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %70 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS_REL, align 4
  %71 = call i32 @qed_wr(%struct.qed_hwfn* %68, %struct.qed_ptt* %69, i32 %70, i32 0)
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %74 = load i32, i32* @DORQ_REG_INT_STS_WR, align 4
  %75 = load i32, i32* @DORQ_REG_INT_STS_DB_DROP, align 4
  %76 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @qed_wr(%struct.qed_hwfn* %72, %struct.qed_ptt* %73, i32 %74, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @DORQ_REG_INT_STS_DB_DROP, align 4
  %81 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_AFULL, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %79, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %95

89:                                               ; preds = %35
  br label %90

90:                                               ; preds = %89, %23
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %92 = call i32 @DP_INFO(%struct.qed_hwfn* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %88, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i8*, i32, ...) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
