; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_memcpy_from_queue_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_memcpy_from_queue_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32 }
%struct.vmci_queue = type { %struct.vmci_queue_kern_if* }
%struct.vmci_queue_kern_if = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i8** }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iov_iter*, %struct.vmci_queue*, i64, i64)* @qp_memcpy_from_queue_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_memcpy_from_queue_iter(%struct.iov_iter* %0, %struct.vmci_queue* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca %struct.vmci_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmci_queue_kern_if*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %6, align 8
  store %struct.vmci_queue* %1, %struct.vmci_queue** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %18 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %17, i32 0, i32 0
  %19 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %18, align 8
  store %struct.vmci_queue_kern_if* %19, %struct.vmci_queue_kern_if** %10, align 8
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %123, %4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %124

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = udiv i64 %27, %28
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = sub i64 %33, 1
  %35 = and i64 %32, %34
  store i64 %35, i64* %13, align 8
  %36 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %37 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %24
  %41 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %42 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @kmap(i32 %48)
  store i8* %49, i8** %14, align 8
  br label %60

50:                                               ; preds = %24
  %51 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %52 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %14, align 8
  br label %60

60:                                               ; preds = %50, %40
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = sub i64 %61, %62
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub i64 %64, %65
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %69, %70
  store i64 %71, i64* %15, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i8*, i8** %14, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %83 = call i32 @copy_to_iter(i32* %80, i64 %81, %struct.iov_iter* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %15, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %76
  %89 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %90 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %95 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kunmap(i32 %101)
  br label %103

103:                                              ; preds = %93, %88
  %104 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %104, i32* %5, align 4
  br label %126

105:                                              ; preds = %76
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %11, align 8
  %109 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %110 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load %struct.vmci_queue_kern_if*, %struct.vmci_queue_kern_if** %10, align 8
  %115 = getelementptr inbounds %struct.vmci_queue_kern_if, %struct.vmci_queue_kern_if* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @kunmap(i32 %121)
  br label %123

123:                                              ; preds = %113, %105
  br label %20

124:                                              ; preds = %20
  %125 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %103
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @copy_to_iter(i32*, i64, %struct.iov_iter*) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
