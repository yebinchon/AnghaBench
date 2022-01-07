; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_alloc_ppn_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_alloc_ppn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppn_set = type { i32, i64, i64, i64*, i64* }
%struct.vmci_queue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, %struct.ppn_set*)* @qp_alloc_ppn_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_alloc_ppn_set(i8* %0, i64 %1, i8* %2, i64 %3, %struct.ppn_set* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ppn_set*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.vmci_queue*, align 8
  %15 = alloca %struct.vmci_queue*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ppn_set* %4, %struct.ppn_set** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.vmci_queue*
  store %struct.vmci_queue* %18, %struct.vmci_queue** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.vmci_queue*
  store %struct.vmci_queue* %20, %struct.vmci_queue** %15, align 8
  %21 = load %struct.vmci_queue*, %struct.vmci_queue** %14, align 8
  %22 = icmp ne %struct.vmci_queue* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.vmci_queue*, %struct.vmci_queue** %15, align 8
  %28 = icmp ne %struct.vmci_queue* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %34 = icmp ne %struct.ppn_set* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %29, %26, %23, %5
  %36 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %36, i32* %6, align 4
  br label %126

37:                                               ; preds = %32
  %38 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %39 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @VMCI_ERROR_ALREADY_EXISTS, align 4
  store i32 %43, i32* %6, align 4
  br label %126

44:                                               ; preds = %37
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i64* @kmalloc_array(i64 %45, i32 8, i32 %46)
  store i64* %47, i64** %12, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %51, i32* %6, align 4
  br label %126

52:                                               ; preds = %44
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i64* @kmalloc_array(i64 %53, i32 8, i32 %54)
  store i64* %55, i64** %13, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i64*, i64** %12, align 8
  %60 = call i32 @kfree(i64* %59)
  %61 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %61, i32* %6, align 4
  br label %126

62:                                               ; preds = %52
  store i64 0, i64* %16, align 8
  br label %63

63:                                               ; preds = %83, %62
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load %struct.vmci_queue*, %struct.vmci_queue** %14, align 8
  %69 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PAGE_SHIFT, align 8
  %79 = lshr i64 %77, %78
  %80 = load i64*, i64** %12, align 8
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %67
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %16, align 8
  br label %63

86:                                               ; preds = %63
  store i64 0, i64* %16, align 8
  br label %87

87:                                               ; preds = %107, %86
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.vmci_queue*, %struct.vmci_queue** %15, align 8
  %93 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PAGE_SHIFT, align 8
  %103 = lshr i64 %101, %102
  %104 = load i64*, i64** %13, align 8
  %105 = load i64, i64* %16, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %91
  %108 = load i64, i64* %16, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %16, align 8
  br label %87

110:                                              ; preds = %87
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %113 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %116 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %119 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %118, i32 0, i32 3
  store i64* %117, i64** %119, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %122 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %121, i32 0, i32 4
  store i64* %120, i64** %122, align 8
  %123 = load %struct.ppn_set*, %struct.ppn_set** %11, align 8
  %124 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %110, %58, %50, %42, %35
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i64* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
