; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi.c_hfi_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, %struct.hfi_inst_ops*, i32, i32, %struct.venus_core* }
%struct.venus_core = type { i32, i32, i32 }
%struct.hfi_inst_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INST_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_session_create(%struct.venus_inst* %0, %struct.hfi_inst_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.hfi_inst_ops*, align 8
  %6 = alloca %struct.venus_core*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store %struct.hfi_inst_ops* %1, %struct.hfi_inst_ops** %5, align 8
  %7 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %8 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %7, i32 0, i32 4
  %9 = load %struct.venus_core*, %struct.venus_core** %8, align 8
  store %struct.venus_core* %9, %struct.venus_core** %6, align 8
  %10 = load %struct.hfi_inst_ops*, %struct.hfi_inst_ops** %5, align 8
  %11 = icmp ne %struct.hfi_inst_ops* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* @INST_UNINIT, align 4
  %17 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %20 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %19, i32 0, i32 2
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.hfi_inst_ops*, %struct.hfi_inst_ops** %5, align 8
  %23 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %24 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %23, i32 0, i32 1
  store %struct.hfi_inst_ops* %22, %struct.hfi_inst_ops** %24, align 8
  %25 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %26 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %29 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %28, i32 0, i32 0
  %30 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %31 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %30, i32 0, i32 2
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %34 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %37 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %15, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
