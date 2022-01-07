; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_enqueue_datagram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_enqueue_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_datagram = type { %struct.vmci_handle }
%struct.vmci_handle = type { i32 }
%struct.vmci_datagram_queue_entry = type { i64, i32, %struct.vmci_datagram* }
%struct.vmci_ctx = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VMCI_MAX_DG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Datagram too large (bytes=%zu)\0A\00", align 1
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid context (ID=0x%x)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for datagram\0A\00", align 1
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@VMCI_MAX_DATAGRAM_QUEUE_SIZE = common dso_local global i64 0, align 8
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_CONTEXT_RESOURCE_ID = common dso_local global i32 0, align 4
@VMCI_MAX_DATAGRAM_AND_EVENT_QUEUE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Context (ID=0x%x) receive queue is full\0A\00", align 1
@VMCI_ERROR_NO_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_enqueue_datagram(i64 %0, %struct.vmci_datagram* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.vmci_datagram*, align 8
  %6 = alloca %struct.vmci_datagram_queue_entry*, align 8
  %7 = alloca %struct.vmci_ctx*, align 8
  %8 = alloca %struct.vmci_handle, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.vmci_datagram* %1, %struct.vmci_datagram** %5, align 8
  %10 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %11 = call i64 @VMCI_DG_SIZE(%struct.vmci_datagram* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @VMCI_MAX_DG_SIZE, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @pr_devel(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %18, i32* %3, align 4
  br label %117

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.vmci_ctx* @vmci_ctx_get(i64 %20)
  store %struct.vmci_ctx* %21, %struct.vmci_ctx** %7, align 8
  %22 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %23 = icmp ne %struct.vmci_ctx* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @pr_devel(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %27, i32* %3, align 4
  br label %117

28:                                               ; preds = %19
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.vmci_datagram_queue_entry* @kmalloc(i32 24, i32 %29)
  store %struct.vmci_datagram_queue_entry* %30, %struct.vmci_datagram_queue_entry** %6, align 8
  %31 = load %struct.vmci_datagram_queue_entry*, %struct.vmci_datagram_queue_entry** %6, align 8
  %32 = icmp eq %struct.vmci_datagram_queue_entry* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %36 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %35)
  %37 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %37, i32* %3, align 4
  br label %117

38:                                               ; preds = %28
  %39 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %40 = load %struct.vmci_datagram_queue_entry*, %struct.vmci_datagram_queue_entry** %6, align 8
  %41 = getelementptr inbounds %struct.vmci_datagram_queue_entry, %struct.vmci_datagram_queue_entry* %40, i32 0, i32 2
  store %struct.vmci_datagram* %39, %struct.vmci_datagram** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.vmci_datagram_queue_entry*, %struct.vmci_datagram_queue_entry** %6, align 8
  %44 = getelementptr inbounds %struct.vmci_datagram_queue_entry, %struct.vmci_datagram_queue_entry* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.vmci_datagram*, %struct.vmci_datagram** %5, align 8
  %46 = getelementptr inbounds %struct.vmci_datagram, %struct.vmci_datagram* %45, i32 0, i32 0
  %47 = bitcast %struct.vmci_handle* %8 to i8*
  %48 = bitcast %struct.vmci_handle* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.vmci_datagram_queue_entry*, %struct.vmci_datagram_queue_entry** %6, align 8
  %50 = getelementptr inbounds %struct.vmci_datagram_queue_entry, %struct.vmci_datagram_queue_entry* %49, i32 0, i32 1
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %52, i32 0, i32 1
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* @VMCI_MAX_DATAGRAM_QUEUE_SIZE, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %38
  %63 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %64 = load i32, i32* @VMCI_CONTEXT_RESOURCE_ID, align 4
  %65 = call i32 @vmci_make_handle(i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @vmci_handle_is_equal(i32 %67, i32 %65)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %72 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* @VMCI_MAX_DATAGRAM_AND_EVENT_QUEUE_SIZE, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70, %62
  %79 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %83 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %82)
  %84 = load %struct.vmci_datagram_queue_entry*, %struct.vmci_datagram_queue_entry** %6, align 8
  %85 = call i32 @kfree(%struct.vmci_datagram_queue_entry* %84)
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @pr_devel(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @VMCI_ERROR_NO_RESOURCES, align 4
  store i32 %88, i32* %3, align 4
  br label %117

89:                                               ; preds = %70, %38
  %90 = load %struct.vmci_datagram_queue_entry*, %struct.vmci_datagram_queue_entry** %6, align 8
  %91 = getelementptr inbounds %struct.vmci_datagram_queue_entry, %struct.vmci_datagram_queue_entry* %90, i32 0, i32 1
  %92 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %92, i32 0, i32 4
  %94 = call i32 @list_add(i32* %91, i32* %93)
  %95 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %96 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %101 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %105 = call i32 @ctx_signal_notify(%struct.vmci_ctx* %104)
  %106 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @wake_up(i32* %108)
  %110 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %111 = getelementptr inbounds %struct.vmci_ctx, %struct.vmci_ctx* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.vmci_ctx*, %struct.vmci_ctx** %7, align 8
  %114 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %113)
  %115 = load i64, i64* %9, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %89, %78, %33, %24, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @VMCI_DG_SIZE(%struct.vmci_datagram*) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i64) #1

declare dso_local %struct.vmci_datagram_queue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vmci_handle_is_equal(i32, i32) #1

declare dso_local i32 @vmci_make_handle(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.vmci_datagram_queue_entry*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ctx_signal_notify(%struct.vmci_ctx*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
