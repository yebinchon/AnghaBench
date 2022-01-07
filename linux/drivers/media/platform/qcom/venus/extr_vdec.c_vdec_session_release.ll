; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_session_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_session_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, i64, i32, %struct.venus_core* }
%struct.venus_core = type { i64 }

@VENUS_DEC_STATE_DEINIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_inst*)* @vdec_session_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_session_release(%struct.venus_inst* %0) #0 {
  %2 = alloca %struct.venus_inst*, align 8
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %2, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 4
  %8 = load %struct.venus_core*, %struct.venus_core** %7, align 8
  store %struct.venus_core* %8, %struct.venus_core** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @VENUS_DEC_STATE_DEINIT, align 4
  %13 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %16 = call i32 @hfi_session_stop(%struct.venus_inst* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br label %24

24:                                               ; preds = %19, %1
  %25 = phi i1 [ false, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %5, align 4
  %28 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %29 = call i32 @hfi_session_unload_res(%struct.venus_inst* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i1 [ false, %24 ], [ %36, %32 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %5, align 4
  %41 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %42 = call i32 @venus_helper_unregister_bufs(%struct.venus_inst* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br label %50

50:                                               ; preds = %45, %37
  %51 = phi i1 [ false, %37 ], [ %49, %45 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %5, align 4
  %54 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %55 = call i32 @venus_helper_intbufs_free(%struct.venus_inst* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi i1 [ false, %50 ], [ %62, %58 ]
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  store i32 %66, i32* %5, align 4
  %67 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %68 = call i32 @hfi_session_deinit(%struct.venus_inst* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br label %76

76:                                               ; preds = %71, %63
  %77 = phi i1 [ false, %63 ], [ %75, %71 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %5, align 4
  %80 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %81 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %86 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %76
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %95 = call i32 @hfi_session_abort(%struct.venus_inst* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %98 = call i32 @venus_helper_free_dpb_bufs(%struct.venus_inst* %97)
  %99 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %100 = call i32 @venus_helper_load_scale_clocks(%struct.venus_core* %99)
  %101 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %102 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %101, i32 0, i32 1
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %105 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfi_session_stop(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_unload_res(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_unregister_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_intbufs_free(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_deinit(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_abort(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_free_dpb_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_load_scale_clocks(%struct.venus_core*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
