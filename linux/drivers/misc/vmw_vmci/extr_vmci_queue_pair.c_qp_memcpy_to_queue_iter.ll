; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_memcpy_to_queue_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_memcpy_to_queue_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { %struct.vmci_queue_kern_if* }
%struct.vmci_queue_kern_if = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i8** }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_queue*, i64, %struct.iov_iter*, i64)* @qp_memcpy_to_queue_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_memcpy_to_queue_iter(%struct.vmci_queue* %0, i64 %1, %struct.iov_iter* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmci_queue_kern_if*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.vmci_queue* %0, %struct.vmci_queue** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.vmci_queue*, %struct.vmci_queue** %6, align 8
  %17 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %16, i32 0, i32 0
  %18 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %17, align 8
  store %struct.vmci_queue_kern_if* %18, %struct.vmci_queue_kern_if** %10, align 8
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %119, %4
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %120

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = sub i64 %32, 1
  %34 = and i64 %31, %33
  store i64 %34, i64* %13, align 8
  %35 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %36 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %23
  %40 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %41 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @kmap(i32 %47)
  store i8* %48, i8** %14, align 8
  br label %59

49:                                               ; preds = %23
  %50 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %51 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %14, align 8
  br label %59

59:                                               ; preds = %49, %39
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub i64 %60, %61
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %13, align 8
  %65 = sub i64 %63, %64
  %66 = icmp ugt i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %15, align 8
  br label %75

71:                                               ; preds = %59
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %72, %73
  store i64 %74, i64* %15, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** %14, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i64, i64* %15, align 8
  %81 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %82 = call i32 @copy_from_iter_full(i32* %79, i64 %80, %struct.iov_iter* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %75
  %85 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %86 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %91 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @kunmap(i32 %97)
  br label %99

99:                                               ; preds = %89, %84
  %100 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %100, i32* %5, align 4
  br label %122

101:                                              ; preds = %75
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %11, align 8
  %105 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %106 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %111 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @kunmap(i32 %117)
  br label %119

119:                                              ; preds = %109, %101
  br label %19

120:                                              ; preds = %19
  %121 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %99
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @copy_from_iter_full(i32*, i64, %struct.iov_iter*) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
