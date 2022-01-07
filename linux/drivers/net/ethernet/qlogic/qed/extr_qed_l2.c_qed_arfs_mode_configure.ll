; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_arfs_mode_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_arfs_mode_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_arfs_config_params = type { i64, i64, i64, i64, i64 }

@QED_FILTER_CONFIG_MODE_DISABLE = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Configured Filtering: tcp = %s, udp = %s, ipv4 = %s, ipv6 =%s mode=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Disabled Filtering\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_arfs_mode_configure(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_arfs_config_params* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_arfs_config_params*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_arfs_config_params* %2, %struct.qed_arfs_config_params** %6, align 8
  %7 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %8 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QED_FILTER_CONFIG_MODE_DISABLE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %3
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %19 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %22 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %25 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %28 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %31 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @qed_arfs_mode_to_hsi(i64 %32)
  %34 = call i32 @qed_gft_config(%struct.qed_hwfn* %13, %struct.qed_ptt* %14, i32 %17, i64 %20, i64 %23, i64 %26, i64 %29, i32 %33)
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load i32, i32* @QED_MSG_SP, align 4
  %37 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %38 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %44 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %49 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %50 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %55 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %56 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.qed_arfs_config_params*, %struct.qed_arfs_config_params** %6, align 8
  %62 = getelementptr inbounds %struct.qed_arfs_config_params, %struct.qed_arfs_config_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %35, i32 %36, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %48, i8* %54, i8* %60, i32 %64)
  br label %76

66:                                               ; preds = %3
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %68 = load i32, i32* @QED_MSG_SP, align 4
  %69 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %67, i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %73 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @qed_gft_disable(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i32 %74)
  br label %76

76:                                               ; preds = %66, %12
  ret void
}

declare dso_local i32 @qed_gft_config(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @qed_arfs_mode_to_hsi(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @qed_gft_disable(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
