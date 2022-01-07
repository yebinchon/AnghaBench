; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_alloc_host_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_alloc_host_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_queue = type { i32 }
%struct.vmci_ctx = type { i32 }
%struct.qp_broker_entry = type { i32, %struct.vmci_queue*, %struct.vmci_queue* }

@VMCI_HOST_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_INVALID_ID = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_INVALID_HANDLE = common dso_local global %struct.vmci_handle zeroinitializer, align 4
@.str = private unnamed_addr constant [47 x i8] c"queue pair broker failed to alloc (result=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_handle*, %struct.vmci_queue**, i32, %struct.vmci_queue**, i32, i32, i32, i32, i32, i8*)* @qp_alloc_host_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_alloc_host_work(%struct.vmci_handle* %0, %struct.vmci_queue** %1, i32 %2, %struct.vmci_queue** %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9) #0 {
  %11 = alloca %struct.vmci_handle*, align 8
  %12 = alloca %struct.vmci_queue**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmci_queue**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.vmci_handle, align 4
  %22 = alloca %struct.vmci_ctx*, align 8
  %23 = alloca %struct.qp_broker_entry*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.vmci_handle, align 4
  %27 = alloca %struct.vmci_handle, align 4
  store %struct.vmci_handle* %0, %struct.vmci_handle** %11, align 8
  store %struct.vmci_queue** %1, %struct.vmci_queue*** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.vmci_queue** %3, %struct.vmci_queue*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i8* %9, i8** %20, align 8
  %28 = load %struct.vmci_handle*, %struct.vmci_handle** %11, align 8
  %29 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @vmci_handle_is_invalid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %10
  %34 = load i32, i32* @VMCI_HOST_CONTEXT_ID, align 4
  %35 = load i32, i32* @VMCI_INVALID_ID, align 4
  %36 = call i32 @vmci_make_handle(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %26, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.vmci_handle* %21 to i8*
  %39 = bitcast %struct.vmci_handle* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %44

40:                                               ; preds = %10
  %41 = load %struct.vmci_handle*, %struct.vmci_handle** %11, align 8
  %42 = bitcast %struct.vmci_handle* %21 to i8*
  %43 = bitcast %struct.vmci_handle* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* @VMCI_HOST_CONTEXT_ID, align 4
  %46 = call %struct.vmci_ctx* @vmci_ctx_get(i32 %45)
  store %struct.vmci_ctx* %46, %struct.vmci_ctx** %22, align 8
  store %struct.qp_broker_entry* null, %struct.qp_broker_entry** %23, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load i8*, i8** %20, align 8
  %55 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %21, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qp_broker_alloc(i32 %56, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* null, %struct.vmci_ctx* %52, i32 %53, i8* %54, %struct.qp_broker_entry** %23, i32* %25)
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* @VMCI_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %44
  %62 = load i32, i32* %25, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %23, align 8
  %66 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %65, i32 0, i32 1
  %67 = load %struct.vmci_queue*, %struct.vmci_queue** %66, align 8
  %68 = load %struct.vmci_queue**, %struct.vmci_queue*** %12, align 8
  store %struct.vmci_queue* %67, %struct.vmci_queue** %68, align 8
  %69 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %23, align 8
  %70 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %69, i32 0, i32 2
  %71 = load %struct.vmci_queue*, %struct.vmci_queue** %70, align 8
  %72 = load %struct.vmci_queue**, %struct.vmci_queue*** %14, align 8
  store %struct.vmci_queue* %71, %struct.vmci_queue** %72, align 8
  br label %82

73:                                               ; preds = %61
  %74 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %23, align 8
  %75 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %74, i32 0, i32 2
  %76 = load %struct.vmci_queue*, %struct.vmci_queue** %75, align 8
  %77 = load %struct.vmci_queue**, %struct.vmci_queue*** %12, align 8
  store %struct.vmci_queue* %76, %struct.vmci_queue** %77, align 8
  %78 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %23, align 8
  %79 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %78, i32 0, i32 1
  %80 = load %struct.vmci_queue*, %struct.vmci_queue** %79, align 8
  %81 = load %struct.vmci_queue**, %struct.vmci_queue*** %14, align 8
  store %struct.vmci_queue* %80, %struct.vmci_queue** %81, align 8
  br label %82

82:                                               ; preds = %73, %64
  %83 = load %struct.vmci_handle*, %struct.vmci_handle** %11, align 8
  %84 = load %struct.qp_broker_entry*, %struct.qp_broker_entry** %23, align 8
  %85 = getelementptr inbounds %struct.qp_broker_entry, %struct.qp_broker_entry* %84, i32 0, i32 0
  %86 = call i32 @vmci_resource_handle(i32* %85)
  %87 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %27, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = bitcast %struct.vmci_handle* %83 to i8*
  %89 = bitcast %struct.vmci_handle* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  br label %95

90:                                               ; preds = %44
  %91 = load %struct.vmci_handle*, %struct.vmci_handle** %11, align 8
  %92 = bitcast %struct.vmci_handle* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 bitcast (%struct.vmci_handle* @VMCI_INVALID_HANDLE to i8*), i64 4, i1 false)
  %93 = load i32, i32* %24, align 4
  %94 = call i32 @pr_devel(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.vmci_ctx*, %struct.vmci_ctx** %22, align 8
  %97 = call i32 @vmci_ctx_put(%struct.vmci_ctx* %96)
  %98 = load i32, i32* %24, align 4
  ret i32 %98
}

declare dso_local i64 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_make_handle(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.vmci_ctx* @vmci_ctx_get(i32) #1

declare dso_local i32 @qp_broker_alloc(i32, i32, i32, i32, i32, i32, i32*, %struct.vmci_ctx*, i32, i8*, %struct.qp_broker_entry**, i32*) #1

declare dso_local i32 @vmci_resource_handle(i32*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @vmci_ctx_put(%struct.vmci_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
