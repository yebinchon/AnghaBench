; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_get_user_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_get_user_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"get_user_pages_fast(produce) failed (retval=%d)\00", align 1
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"get_user_pages_fast(consume) failed (retval=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.vmci_queue*, %struct.vmci_queue*)* @qp_host_get_user_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_host_get_user_memory(i64 %0, i64 %1, %struct.vmci_queue* %2, %struct.vmci_queue* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmci_queue*, align 8
  %8 = alloca %struct.vmci_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vmci_queue* %2, %struct.vmci_queue** %7, align 8
  store %struct.vmci_queue* %3, %struct.vmci_queue** %8, align 8
  %11 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %14 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FOLL_WRITE, align 4
  %19 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %20 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_user_pages_fast(i64 %12, i32 %17, i32 %18, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %29 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %38 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @qp_release_pages(i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %46, i32* %10, align 4
  br label %97

47:                                               ; preds = %4
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.vmci_queue*, %struct.vmci_queue** %8, align 8
  %50 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FOLL_WRITE, align 4
  %55 = load %struct.vmci_queue*, %struct.vmci_queue** %8, align 8
  %56 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @get_user_pages_fast(i64 %48, i32 %53, i32 %54, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.vmci_queue*, %struct.vmci_queue** %8, align 8
  %65 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %47
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.vmci_queue*, %struct.vmci_queue** %8, align 8
  %74 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @qp_release_pages(i32 %79, i32 %80, i32 0)
  %82 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %83 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %90 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @qp_release_pages(i32 %88, i32 %93, i32 0)
  %95 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %70, %47
  br label %97

97:                                               ; preds = %96, %34
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @qp_release_pages(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
