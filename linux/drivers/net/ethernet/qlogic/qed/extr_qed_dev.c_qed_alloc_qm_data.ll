; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_alloc_qm_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_alloc_qm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__*, %struct.qed_qm_info }
%struct.TYPE_2__ = type { i32 }
%struct.qed_qm_info = type { i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for QM params\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_alloc_qm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_alloc_qm_data(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_qm_info*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 1
  store %struct.qed_qm_info* %7, %struct.qed_qm_info** %4, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = call i32 @qed_init_qm_sanity(%struct.qed_hwfn* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %15 = call i32 @qed_init_qm_get_num_pqs(%struct.qed_hwfn* %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kcalloc(i32 %15, i32 1, i32 %16)
  %18 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %19 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %21 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %65

25:                                               ; preds = %13
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = call i32 @qed_init_qm_get_num_vports(%struct.qed_hwfn* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kcalloc(i32 %27, i32 1, i32 %28)
  %30 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %31 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %33 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %65

37:                                               ; preds = %25
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %42, i32 1, i32 %43)
  %45 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %46 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %48 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  br label %65

52:                                               ; preds = %37
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %54 = call i32 @qed_init_qm_get_num_vports(%struct.qed_hwfn* %53)
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kcalloc(i32 %54, i32 1, i32 %55)
  %57 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %58 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.qed_qm_info*, %struct.qed_qm_info** %4, align 8
  %60 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %72

65:                                               ; preds = %63, %51, %36, %24, %12
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %67 = call i32 @DP_NOTICE(%struct.qed_hwfn* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %69 = call i32 @qed_qm_info_free(%struct.qed_hwfn* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %64
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @qed_init_qm_sanity(%struct.qed_hwfn*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qed_init_qm_get_num_pqs(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_init_qm_get_num_vports(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_qm_info_free(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
