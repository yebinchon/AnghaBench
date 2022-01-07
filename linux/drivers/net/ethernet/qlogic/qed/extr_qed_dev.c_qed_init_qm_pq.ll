; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_pq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_qm_info = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"pq overflow! pq %d, max pq %d\0A\00", align 1
@PQ_INIT_DEFAULT_WRR_GROUP = common dso_local global i32 0, align 4
@PQ_INIT_PF_RL = common dso_local global i32 0, align 4
@PQ_INIT_VF_RL = common dso_local global i32 0, align 4
@PQ_INIT_SHARE_VPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"vport overflow! qm_info->num_vports %d, qm_init_get_num_vports() %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"rl overflow! qm_info->num_pf_rls %d, qm_init_get_num_pf_rls() %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_qm_info*, i32, i32)* @qed_init_qm_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_init_qm_pq(%struct.qed_hwfn* %0, %struct.qed_qm_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_qm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_qm_info* %1, %struct.qed_qm_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %12 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = call i64 @qed_init_qm_get_num_pqs(%struct.qed_hwfn* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @DP_ERR(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %29 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %27, i32* %33, align 4
  %34 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %35 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %38 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %42 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %40, i64* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %49 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 %47, i32* %53, align 8
  %54 = load i32, i32* @PQ_INIT_DEFAULT_WRR_GROUP, align 4
  %55 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %56 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PQ_INIT_PF_RL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %24
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @PQ_INIT_VF_RL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %65, %24
  %71 = phi i1 [ true, %24 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %74 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %72, i32* %78, align 8
  %79 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %80 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PQ_INIT_SHARE_VPORT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %70
  %88 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %89 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %87, %70
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PQ_INIT_PF_RL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %99 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %104 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %107 = call i64 @qed_init_qm_get_num_vports(%struct.qed_hwfn* %106)
  %108 = icmp sgt i64 %105, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %111 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %112 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %115 = call i64 @qed_init_qm_get_num_vports(%struct.qed_hwfn* %114)
  %116 = call i32 @DP_ERR(%struct.qed_hwfn* %110, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %113, i64 %115)
  br label %117

117:                                              ; preds = %109, %102
  %118 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %119 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %122 = call i64 @qed_init_qm_get_num_pf_rls(%struct.qed_hwfn* %121)
  %123 = icmp sgt i64 %120, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %126 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %127 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %130 = call i64 @qed_init_qm_get_num_pf_rls(%struct.qed_hwfn* %129)
  %131 = call i32 @DP_ERR(%struct.qed_hwfn* %125, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %128, i64 %130)
  br label %132

132:                                              ; preds = %124, %117
  ret void
}

declare dso_local i64 @qed_init_qm_get_num_pqs(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i64, i64) #1

declare dso_local i64 @qed_init_qm_get_num_vports(%struct.qed_hwfn*) #1

declare dso_local i64 @qed_init_qm_get_num_pf_rls(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
