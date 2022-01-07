; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_rcv_notifications_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_rcv_notifications_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle_arr = type { i32 }
%struct.vmci_ctx = type { i32, %struct.vmci_handle_arr* }
%struct.vmci_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmci_ctx_rcv_notifications_release(i32 %0, %struct.vmci_handle_arr* %1, %struct.vmci_handle_arr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_handle_arr*, align 8
  %7 = alloca %struct.vmci_handle_arr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmci_ctx*, align 8
  %10 = alloca %struct.vmci_handle, align 4
  %11 = alloca %struct.vmci_handle, align 4
  %12 = alloca %struct.vmci_handle, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vmci_handle_arr* %1, %struct.vmci_handle_arr** %6, align 8
  store %struct.vmci_handle_arr* %2, %struct.vmci_handle_arr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.vmci_ctx* @vmci_ctx_get(i32 %13)
  store %struct.vmci_ctx* %14, %struct.vmci_ctx** %9, align 8
  %15 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %4
  %21 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %21, i32 0, i32 1
  %23 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %22, align 8
  %24 = call i32 @vmci_handle_arr_remove_tail(%struct.vmci_handle_arr* %23)
  %25 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %11, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.vmci_handle* %10 to i8*
  %27 = bitcast %struct.vmci_handle* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  br label %28

28:                                               ; preds = %44, %20
  %29 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vmci_handle_is_invalid(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %36 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vmci_handle_arr_has_entry(%struct.vmci_handle_arr* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vmci_handle_arr_append_entry(%struct.vmci_handle_arr** %6, i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %45, i32 0, i32 1
  %47 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %46, align 8
  %48 = call i32 @vmci_handle_arr_remove_tail(%struct.vmci_handle_arr* %47)
  %49 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %12, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.vmci_handle* %10 to i8*
  %51 = bitcast %struct.vmci_handle* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %53, i32 0, i32 1
  %55 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %54, align 8
  %56 = call i32 @vmci_handle_arr_destroy(%struct.vmci_handle_arr* %55)
  %57 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %58 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %59 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %58, i32 0, i32 1
  store %struct.vmci_handle_arr* %57, %struct.vmci_handle_arr** %59, align 8
  store %struct.vmci_handle_arr* null, %struct.vmci_handle_arr** %6, align 8
  br label %63

60:                                               ; preds = %4
  %61 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %62 = call i32 @ctx_clear_notify_call(%struct.vmci_ctx* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.vmci_ctx*, %struct.vmci_ctx** %9, align 8
  %68 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %67)
  %69 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %70 = icmp ne %struct.vmci_handle_arr* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %73 = call i32 @vmci_handle_arr_destroy(%struct.vmci_handle_arr* %72)
  br label %74

74:                                               ; preds = %71, %63
  %75 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %7, align 8
  %76 = icmp ne %struct.vmci_handle_arr* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %7, align 8
  %79 = call i32 @vmci_handle_arr_destroy(%struct.vmci_handle_arr* %78)
  br label %80

80:                                               ; preds = %77, %74
  ret void
}

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_handle_arr_remove_tail(%struct.vmci_handle_arr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_handle_arr_has_entry(%struct.vmci_handle_arr*, i32) #1

declare dso_local i32 @vmci_handle_arr_append_entry(%struct.vmci_handle_arr**, i32) #1

declare dso_local i32 @vmci_handle_arr_destroy(%struct.vmci_handle_arr*) #1

declare dso_local i32 @ctx_clear_notify_call(%struct.vmci_ctx*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
