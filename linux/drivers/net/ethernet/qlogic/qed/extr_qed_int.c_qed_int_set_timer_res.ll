; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_set_timer_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_set_timer_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.cau_sb_entry = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"hardware not initialized yet\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CAU_REG_SB_VAR_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"dmae_grc2host failed %d\0A\00", align 1
@CAU_SB_ENTRY_TIMER_RES1 = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_TIMER_RES0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dmae_host2grc failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_int_set_timer_res(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cau_sb_entry, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %20 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_ERR(%struct.qed_hwfn* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %76

23:                                               ; preds = %5
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %25 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %26 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %26, %29
  %31 = ptrtoint %struct.cau_sb_entry* %12 to i64
  %32 = trunc i64 %31 to i32
  %33 = call i32 @qed_dmae_grc2host(%struct.qed_hwfn* %24, %struct.qed_ptt* %25, i64 %30, i32 %32, i32 2, i32* null)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_ERR(%struct.qed_hwfn* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %76

41:                                               ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES1, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @SET_FIELD(i32 %46, i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %12, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES0, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @SET_FIELD(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %58 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %59 = ptrtoint %struct.cau_sb_entry* %12 to i64
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = add i64 %61, %64
  %66 = call i32 @qed_dmae_host2grc(%struct.qed_hwfn* %57, %struct.qed_ptt* %58, i32 %60, i64 %65, i32 2, i32* null)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_ERR(%struct.qed_hwfn* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %76

74:                                               ; preds = %56
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %69, %36, %18
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @qed_dmae_grc2host(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32, i32, i32*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_dmae_host2grc(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
