; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_host_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { %struct.vmci_queue_kern_if*, i32*, i32* }
%struct.vmci_queue_kern_if = type { i32, %struct.TYPE_4__, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.page**, %struct.page** }
%struct.page = type { i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmci_queue* (i64)* @qp_host_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmci_queue* @qp_host_alloc_queue(i64 %0) #0 {
  %2 = alloca %struct.vmci_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vmci_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 64, i64* %7, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @SIZE_MAX, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = sub i64 %9, %10
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.vmci_queue* null, %struct.vmci_queue** %2, align 8
  br label %83

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = call i64 @DIV_ROUND_UP(i64 %15, i64 %16)
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @SIZE_MAX, align 8
  %21 = sub i64 %20, 64
  %22 = udiv i64 %21, 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store %struct.vmci_queue* null, %struct.vmci_queue** %2, align 8
  br label %83

25:                                               ; preds = %14
  %26 = load i64, i64* %6, align 8
  %27 = mul i64 %26, 8
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 64, %28
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.vmci_queue* @kzalloc(i64 %29, i32 %30)
  store %struct.vmci_queue* %31, %struct.vmci_queue** %4, align 8
  %32 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %33 = icmp ne %struct.vmci_queue* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %25
  %35 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %36 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %40 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %39, i64 1
  %41 = bitcast %struct.vmci_queue* %40 to %struct.vmci_queue_kern_if*
  %42 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %43 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %42, i32 0, i32 0
  store %struct.vmci_queue_kern_if* %41, %struct.vmci_queue_kern_if** %43, align 8
  %44 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %45 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %44, i32 0, i32 0
  %46 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %45, align 8
  %47 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %49 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %48, i32 0, i32 0
  %50 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %49, align 8
  %51 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %54 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %53, i32 0, i32 0
  %55 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %54, align 8
  %56 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %55, i32 0, i32 2
  store i64 %52, i64* %56, align 8
  %57 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %58 = bitcast %struct.vmci_queue* %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 64
  %60 = bitcast i32* %59 to %struct.page**
  %61 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %62 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %61, i32 0, i32 0
  %63 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %62, align 8
  %64 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store %struct.page** %60, %struct.page*** %66, align 8
  %67 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %68 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %67, i32 0, i32 0
  %69 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %68, align 8
  %70 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.page**, %struct.page*** %72, align 8
  %74 = getelementptr inbounds %struct.page*, %struct.page** %73, i64 1
  %75 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  %76 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %75, i32 0, i32 0
  %77 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %76, align 8
  %78 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store %struct.page** %74, %struct.page*** %80, align 8
  br label %81

81:                                               ; preds = %34, %25
  %82 = load %struct.vmci_queue*, %struct.vmci_queue** %4, align 8
  store %struct.vmci_queue* %82, %struct.vmci_queue** %2, align 8
  br label %83

83:                                               ; preds = %81, %24, %13
  %84 = load %struct.vmci_queue*, %struct.vmci_queue** %2, align 8
  ret %struct.vmci_queue* %84
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.vmci_queue* @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
