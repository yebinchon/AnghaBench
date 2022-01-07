; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_dbell_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_dbell_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_ctx = type { i32, i32, i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_dbell_destroy(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmci_ctx*, align 8
  %7 = alloca %struct.vmci_handle, align 4
  %8 = alloca %struct.vmci_handle, align 4
  %9 = alloca %struct.vmci_handle, align 4
  %10 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store i64 %0, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @VMCI_INVALID_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @vmci_handle_is_invalid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.vmci_ctx* @vmci_ctx_get(i64 %22)
  store %struct.vmci_ctx* %23, %struct.vmci_ctx** %6, align 8
  %24 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %25 = icmp eq %struct.vmci_ctx* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %21
  %29 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vmci_handle_arr_remove_entry(i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.vmci_handle* %7 to i8*
  %40 = bitcast %struct.vmci_handle* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vmci_handle_arr_remove_entry(i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %52 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %51)
  %53 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @vmci_handle_is_invalid(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %28
  %58 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  br label %61

59:                                               ; preds = %28
  %60 = load i32, i32* @VMCI_SUCCESS, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %26, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @vmci_handle_is_invalid(i32) #1

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_handle_arr_remove_entry(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
