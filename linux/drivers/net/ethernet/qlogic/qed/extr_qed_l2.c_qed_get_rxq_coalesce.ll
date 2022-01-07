; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_rxq_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_rxq_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_queue_cid = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cau_sb_entry = type { i32 }

@CAU_REG_SB_VAR_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"dmae_grc2host failed %d\0A\00", align 1
@CAU_SB_ENTRY_TIMER_RES0 = common dso_local global i32 0, align 4
@BAR0_MAP_REG_USDM_RAM = common dso_local global i32 0, align 4
@COALESCING_TIMESET_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@COALESCING_TIMESET_TIMESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_get_rxq_coalesce(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_queue_cid* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_queue_cid*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cau_sb_entry, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.qed_queue_cid* %2, %struct.qed_queue_cid** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %18 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %19 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %20 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %18, %23
  %25 = ptrtoint %struct.cau_sb_entry* %13 to i64
  %26 = trunc i64 %25 to i32
  %27 = call i32 @qed_dmae_grc2host(%struct.qed_hwfn* %16, %struct.qed_ptt* %17, i64 %24, i32 %26, i32 2, i32* null)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @DP_ERR(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %5, align 4
  br label %68

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES0, align 4
  %39 = call i32 @GET_FIELD(i32 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @BAR0_MAP_REG_USDM_RAM, align 4
  %41 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %42 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @USTORM_ETH_QUEUE_ZONE_OFFSET(i32 %44)
  %46 = add nsw i32 %40, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %48 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @qed_rd(%struct.qed_hwfn* %47, %struct.qed_ptt* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @COALESCING_TIMESET_VALID, align 4
  %53 = call i32 @GET_FIELD(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %35
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %68

59:                                               ; preds = %35
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @COALESCING_TIMESET_TIMESET, align 4
  %62 = call i32 @GET_FIELD(i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %59, %56, %30
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @qed_dmae_grc2host(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32, i32, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @USTORM_ETH_QUEUE_ZONE_OFFSET(i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
