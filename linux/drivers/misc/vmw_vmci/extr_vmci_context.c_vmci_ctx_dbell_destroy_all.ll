; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_dbell_destroy_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_dbell_destroy_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_ctx = type { i32, %struct.vmci_handle_arr*, %struct.vmci_handle_arr* }
%struct.vmci_handle_arr = type { i32 }
%struct.vmci_handle = type { i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_dbell_destroy_all(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.vmci_ctx*, align 8
  %5 = alloca %struct.vmci_handle, align 4
  %6 = alloca %struct.vmci_handle_arr*, align 8
  %7 = alloca %struct.vmci_handle, align 4
  %8 = alloca %struct.vmci_handle_arr*, align 8
  %9 = alloca %struct.vmci_handle, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @VMCI_INVALID_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.vmci_ctx* @vmci_ctx_get(i64 %16)
  store %struct.vmci_ctx* %17, %struct.vmci_ctx** %4, align 8
  %18 = load %struct.vmci_ctx*, %struct.vmci_ctx** %4, align 8
  %19 = icmp eq %struct.vmci_ctx* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %15
  %23 = load %struct.vmci_ctx*, %struct.vmci_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  br label %26

26:                                               ; preds = %35, %22
  %27 = load %struct.vmci_ctx*, %struct.vmci_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %27, i32 0, i32 2
  %29 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %28, align 8
  store %struct.vmci_handle_arr* %29, %struct.vmci_handle_arr** %6, align 8
  %30 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %31 = call i32 @vmci_handle_arr_remove_tail(%struct.vmci_handle_arr* %30)
  %32 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.vmci_handle* %5 to i8*
  %34 = bitcast %struct.vmci_handle* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vmci_handle_is_invalid(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %26, label %41

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %51, %41
  %43 = load %struct.vmci_ctx*, %struct.vmci_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %43, i32 0, i32 1
  %45 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %44, align 8
  store %struct.vmci_handle_arr* %45, %struct.vmci_handle_arr** %8, align 8
  %46 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %8, align 8
  %47 = call i32 @vmci_handle_arr_remove_tail(%struct.vmci_handle_arr* %46)
  %48 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.vmci_handle* %5 to i8*
  %50 = bitcast %struct.vmci_handle* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vmci_handle_is_invalid(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %42, label %57

57:                                               ; preds = %51
  %58 = load %struct.vmci_ctx*, %struct.vmci_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.vmci_ctx*, %struct.vmci_ctx** %4, align 8
  %62 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %61)
  %63 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %20, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_handle_arr_remove_tail(%struct.vmci_handle_arr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
