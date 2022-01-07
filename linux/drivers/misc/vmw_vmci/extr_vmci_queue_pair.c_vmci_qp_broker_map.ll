; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_broker_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_broker_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmci_ctx = type { i32 }
%struct.vmci_handle = type { i32, i32 }
%struct.qp_broker_entry = type { i64, i64, i32, i32 (i32)*, i32, i32, i32, i32 }
%struct.vmci_qp_page_store = type { i32, i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@qp_broker_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [65 x i8] c"Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\0A\00", align 1
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn't present in broker\0A\00", align 1
@VMCI_ERROR_QUEUEPAIR_NOTATTACHED = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_HOST_CONTEXT_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qp_broker_map(i64 %0, %struct.vmci_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_handle, align 4
  %6 = alloca %struct.vmci_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qp_broker_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmci_qp_page_store, align 4
  %12 = bitcast %struct.vmci_handle* %5 to i64*
  store i64 %0, i64* %12, align 4
  store %struct.vmci_ctx* %1, %struct.vmci_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %14 = call i64 @vmci_ctx_get_id(%struct.vmci_ctx* %13)
  store i64 %14, i64* %9, align 8
  %15 = bitcast %struct.vmci_handle* %5 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i64 @vmci_handle_is_invalid(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %21 = icmp ne %struct.vmci_ctx* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @VMCI_INVALID_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %19, %3
  %27 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %27, i32* %4, align 4
  br label %127

28:                                               ; preds = %22
  %29 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %30 = load %struct.vmci_ctx*, %struct.vmci_ctx** %6, align 8
  %31 = bitcast %struct.vmci_handle* %5 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @vmci_ctx_qp_exists(%struct.vmci_ctx* %30, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_devel(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %38, i32 %40)
  %42 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %42, i32* %10, align 4
  br label %124

43:                                               ; preds = %28
  %44 = bitcast %struct.vmci_handle* %5 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64 %45)
  store %struct.qp_broker_entry* %46, %struct.qp_broker_entry** %8, align 8
  %47 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %48 = icmp ne %struct.qp_broker_entry* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_devel(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i64 %50, i32 %52, i32 %54)
  %56 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %56, i32* %10, align 4
  br label %124

57:                                               ; preds = %43
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %60 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %66 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @VMCI_ERROR_QUEUEPAIR_NOTATTACHED, align 4
  store i32 %70, i32* %10, align 4
  br label %124

71:                                               ; preds = %63, %57
  %72 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @VMCI_HOST_CONTEXT_ID, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %123

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = getelementptr inbounds %struct.vmci_qp_page_store, %struct.vmci_qp_page_store* %11, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %80 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @QPE_NUM_PAGES(i32 %81)
  %83 = getelementptr inbounds %struct.vmci_qp_page_store, %struct.vmci_qp_page_store* %11, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %85 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @qp_acquire_queue_mutex(i32 %86)
  %88 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %89 = call i32 @qp_reset_saved_headers(%struct.qp_broker_entry* %88)
  %90 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %91 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %94 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @qp_host_register_user_memory(%struct.vmci_qp_page_store* %11, i32 %92, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %98 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @qp_release_queue_mutex(i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @VMCI_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %76
  %105 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %106 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %110 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %109, i32 0, i32 3
  %111 = load i32 (i32)*, i32 (i32)** %110, align 8
  %112 = icmp ne i32 (i32)* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %115 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %114, i32 0, i32 3
  %116 = load i32 (i32)*, i32 (i32)** %115, align 8
  %117 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %8, align 8
  %118 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %116(i32 %119)
  br label %121

121:                                              ; preds = %113, %104
  br label %122

122:                                              ; preds = %121, %76
  br label %123

123:                                              ; preds = %122, %71
  br label %124

124:                                              ; preds = %123, %69, %49, %35
  %125 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qp_broker_list, i32 0, i32 0))
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %26
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @vmci_ctx_get_id(%struct.vmci_ctx*) #1

declare dso_local i64 @vmci_handle_is_invalid(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmci_ctx_qp_exists(%struct.vmci_ctx*, i64) #1

declare dso_local i32 @pr_devel(i8*, i64, i32, i32) #1

declare dso_local %struct.qp_broker_entry* @qp_broker_handle_to_entry(i64) #1

declare dso_local i32 @QPE_NUM_PAGES(i32) #1

declare dso_local i32 @qp_acquire_queue_mutex(i32) #1

declare dso_local i32 @qp_reset_saved_headers(%struct.qp_broker_entry*) #1

declare dso_local i32 @qp_host_register_user_memory(%struct.vmci_qp_page_store*, i32, i32) #1

declare dso_local i32 @qp_release_queue_mutex(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
