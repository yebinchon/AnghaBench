; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { %struct.vmci_queue_header*, %struct.TYPE_6__* }
%struct.vmci_queue_header = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.page** }
%struct.page = type { i32 }

@VMCI_ERROR_QUEUEPAIR_MISMATCH = common dso_local global i32 0, align 4
@VMCI_ERROR_UNAVAILABLE = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vmap failed\0A\00", align 1
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_queue*, %struct.vmci_queue*)* @qp_host_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_host_map_queues(%struct.vmci_queue* %0, %struct.vmci_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_queue*, align 8
  %5 = alloca %struct.vmci_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.page*], align 16
  store %struct.vmci_queue* %0, %struct.vmci_queue** %4, align 8
  store %struct.vmci_queue* %1, %struct.vmci_queue** %5, align 8
  %8 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %9 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %8, i32 0, i32 0
  %10 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %9, align 8
  %11 = icmp ne %struct.vmci_queue_header* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %14 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %13, i32 0, i32 0
  %15 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %14, align 8
  %16 = icmp ne %struct.vmci_queue_header* %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %19 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %18, i32 0, i32 0
  %20 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %19, align 8
  %21 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %22 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %21, i32 0, i32 0
  %23 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %22, align 8
  %24 = icmp ne %struct.vmci_queue_header* %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @VMCI_ERROR_QUEUEPAIR_MISMATCH, align 4
  store i32 %26, i32* %3, align 4
  br label %97

27:                                               ; preds = %17
  %28 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %29 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = icmp eq %struct.page** %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %27
  %37 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.page**, %struct.page*** %42, align 8
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = icmp eq %struct.page* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36, %27
  %47 = load i32, i32* @VMCI_ERROR_UNAVAILABLE, align 4
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %36
  %49 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %50 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.page**, %struct.page*** %54, align 8
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %7, i64 0, i64 0
  store %struct.page* %56, %struct.page** %57, align 16
  %58 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %59 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.page**, %struct.page*** %63, align 8
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %7, i64 0, i64 1
  store %struct.page* %65, %struct.page** %66, align 8
  %67 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %7, i64 0, i64 0
  %68 = load i32, i32* @VM_MAP, align 4
  %69 = load i32, i32* @PAGE_KERNEL, align 4
  %70 = call %struct.vmci_queue_header* @vmap(%struct.page** %67, i32 2, i32 %68, i32 %69)
  %71 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %72 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %71, i32 0, i32 0
  store %struct.vmci_queue_header* %70, %struct.vmci_queue_header** %72, align 8
  %73 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %74 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %73, i32 0, i32 0
  %75 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %74, align 8
  %76 = icmp ne %struct.vmci_queue_header* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %48
  %78 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %79 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %78, i32 0, i32 0
  %80 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %79, align 8
  %81 = bitcast %struct.vmci_queue_header* %80 to i32*
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = bitcast i32* %84 to %struct.vmci_queue_header*
  %86 = load %struct.vmci_queue*, %struct.vmci_queue** %5, align 8
  %87 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %86, i32 0, i32 0
  store %struct.vmci_queue_header* %85, %struct.vmci_queue_header** %87, align 8
  %88 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %88, i32* %6, align 4
  br label %92

89:                                               ; preds = %48
  %90 = call i32 @pr_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %77
  br label %95

93:                                               ; preds = %12
  %94 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %46, %25
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.vmci_queue_header* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
