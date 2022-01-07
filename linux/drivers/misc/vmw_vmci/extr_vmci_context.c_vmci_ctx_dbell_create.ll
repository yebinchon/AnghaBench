; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_dbell_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_dbell_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_ctx = type { i32, i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_ERROR_DUPLICATE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_dbell_create(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmci_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store i64 %0, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @VMCI_INVALID_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @vmci_handle_is_invalid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.vmci_ctx* @vmci_ctx_get(i64 %20)
  store %struct.vmci_ctx* %21, %struct.vmci_ctx** %6, align 8
  %22 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %23 = icmp eq %struct.vmci_ctx* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vmci_handle_arr_has_entry(i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vmci_handle_arr_append_entry(i32* %39, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @VMCI_ERROR_DUPLICATE_ENTRY, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %50 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %24, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @vmci_handle_is_invalid(i32) #1

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_handle_arr_has_entry(i32, i32) #1

declare dso_local i32 @vmci_handle_arr_append_entry(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
