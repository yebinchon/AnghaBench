; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_vb2_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { %struct.venus_core* }
%struct.venus_core = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_vb2_start_streaming(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 0
  %8 = load %struct.venus_core*, %struct.venus_core** %7, align 8
  store %struct.venus_core* %8, %struct.venus_core** %4, align 8
  %9 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %10 = call i32 @venus_helper_intbufs_alloc(%struct.venus_inst* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %17 = call i32 @session_register_bufs(%struct.venus_inst* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %23 = call i32 @venus_helper_load_scale_clocks(%struct.venus_core* %22)
  %24 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %25 = call i32 @hfi_session_load_res(%struct.venus_inst* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %39

29:                                               ; preds = %21
  %30 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %31 = call i32 @hfi_session_start(%struct.venus_inst* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %46

36:                                               ; preds = %34
  %37 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %38 = call i32 @hfi_session_unload_res(%struct.venus_inst* %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %41 = call i32 @venus_helper_unregister_bufs(%struct.venus_inst* %40)
  br label %42

42:                                               ; preds = %39, %20
  %43 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %44 = call i32 @venus_helper_intbufs_free(%struct.venus_inst* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %35, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @venus_helper_intbufs_alloc(%struct.venus_inst*) #1

declare dso_local i32 @session_register_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_load_scale_clocks(%struct.venus_core*) #1

declare dso_local i32 @hfi_session_load_res(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_start(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_unload_res(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_unregister_bufs(%struct.venus_inst*) #1

declare dso_local i32 @venus_helper_intbufs_free(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
