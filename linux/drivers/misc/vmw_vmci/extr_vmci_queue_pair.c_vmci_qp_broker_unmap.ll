; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_broker_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_broker_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmci_ctx = type { i32 }
%struct.vmci_handle = type { i32, i32 }
%struct.qp_broker_entry = type { i64, i64, i32, i32, i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@qp_broker_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [65 x i8] c"Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\0A\00", align 1
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn't present in broker\0A\00", align 1
@VMCI_ERROR_QUEUEPAIR_NOTATTACHED = common dso_local global i32 0, align 4
@VMCI_HOST_CONTEXT_ID = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Failed to save queue headers for queue pair (handle=0x%x:0x%x,result=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qp_broker_unmap(i64 %0, %struct.vmci_ctx* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_handle, align 4
  %6 = alloca %struct.vmci_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qp_broker_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.vmci_handle* %5 to i64*
  store i64 %0, i64* %11, align 4
  store %struct.vmci_ctx* %1, %struct.vmci_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %13 = call i64 @vmci_ctx_get_id(%struct.vmci_ctx* %12)
  store i64 %13, i64* %9, align 8
  %14 = bitcast %struct.vmci_handle* %5 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i64 @vmci_handle_is_invalid(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %20 = icmp ne %struct.vmci_ctx* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @VMCI_INVALID_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %3
  %26 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %26, i32* %4, align 4
  br label %120

27:                                               ; preds = %21
  %28 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %29 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %30 = bitcast %struct.vmci_handle* %5 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @vmci_ctx_qp_exists(%struct.vmci_ctx* %29, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_devel(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %37, i32 %39)
  %41 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %41, i32* %10, align 4
  br label %117

42:                                               ; preds = %27
  %43 = bitcast %struct.vmci_handle* %5 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = call %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64 %44)
  store %struct.qp_broker_entry* %45, %struct.qp_broker_entry** %8, align 8
  %46 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %47 = icmp ne %struct.qp_broker_entry* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_devel(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i64 %49, i32 %51, i32 %53)
  %55 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %55, i32* %10, align 4
  br label %117

56:                                               ; preds = %42
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %59 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %65 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @VMCI_ERROR_QUEUEPAIR_NOTATTACHED, align 4
  store i32 %69, i32* %10, align 4
  br label %117

70:                                               ; preds = %62, %56
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %115

74:                                               ; preds = %70
  %75 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %76 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @qp_acquire_queue_mutex(i32 %77)
  %79 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %80 = call i32 @qp_save_headers(%struct.qp_broker_entry* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @VMCI_SUCCESS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %74
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %94 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %97 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @qp_host_unmap_queues(i64 %92, i32 %95, i32 %98)
  %100 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %101 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %104 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @qp_host_unregister_user_memory(i32 %102, i32 %105)
  %107 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %108 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %112 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @qp_release_queue_mutex(i32 %113)
  br label %115

115:                                              ; preds = %91, %70
  %116 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %115, %68, %48, %34
  %118 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %25
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @vmci_ctx_get_id(%struct.vmci_ctx*) #1

declare dso_local i64 @vmci_handle_is_invalid(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmci_ctx_qp_exists(%struct.vmci_ctx*, i64) #1

declare dso_local i32 @pr_devel(i8*, i64, i32, i32) #1

declare dso_local %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64) #1

declare dso_local i32 @qp_acquire_queue_mutex(i32) #1

declare dso_local i32 @qp_save_headers(%struct.qp_broker_entry*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @qp_host_unmap_queues(i64, i32, i32) #1

declare dso_local i32 @qp_host_unregister_user_memory(i32, i32) #1

declare dso_local i32 @qp_release_queue_mutex(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
