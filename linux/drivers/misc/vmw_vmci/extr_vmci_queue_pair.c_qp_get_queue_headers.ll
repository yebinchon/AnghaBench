; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_get_queue_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_get_queue_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.vmci_queue_header*, %struct.vmci_queue_header* }
%struct.vmci_queue_header = type { i32 }
%struct.TYPE_3__ = type { %struct.vmci_queue_header*, %struct.vmci_queue_header* }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_qp*, %struct.vmci_queue_header**, %struct.vmci_queue_header**)* @qp_get_queue_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_get_queue_headers(%struct.vmci_qp* %0, %struct.vmci_queue_header** %1, %struct.vmci_queue_header** %2) #0 {
  %4 = alloca %struct.vmci_qp*, align 8
  %5 = alloca %struct.vmci_queue_header**, align 8
  %6 = alloca %struct.vmci_queue_header**, align 8
  %7 = alloca i32, align 4
  store %struct.vmci_qp* %0, %struct.vmci_qp** %4, align 8
  store %struct.vmci_queue_header** %1, %struct.vmci_queue_header*** %5, align 8
  store %struct.vmci_queue_header** %2, %struct.vmci_queue_header*** %6, align 8
  %8 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %9 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %12 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @qp_map_queue_headers(%struct.TYPE_3__* %10, %struct.TYPE_4__* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VMCI_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %20 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %22, align 8
  %24 = load %struct.vmci_queue_header**, %struct.vmci_queue_header*** %5, align 8
  store %struct.vmci_queue_header* %23, %struct.vmci_queue_header** %24, align 8
  %25 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %26 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %28, align 8
  %30 = load %struct.vmci_queue_header**, %struct.vmci_queue_header*** %6, align 8
  store %struct.vmci_queue_header* %29, %struct.vmci_queue_header** %30, align 8
  br label %60

31:                                               ; preds = %3
  %32 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %33 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %35, align 8
  %37 = icmp ne %struct.vmci_queue_header* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %40 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %42, align 8
  %44 = icmp ne %struct.vmci_queue_header* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %47 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %49, align 8
  %51 = load %struct.vmci_queue_header**, %struct.vmci_queue_header*** %5, align 8
  store %struct.vmci_queue_header* %50, %struct.vmci_queue_header** %51, align 8
  %52 = load %struct.vmci_qp*, %struct.vmci_qp** %4, align 8
  %53 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %55, align 8
  %57 = load %struct.vmci_queue_header**, %struct.vmci_queue_header*** %6, align 8
  store %struct.vmci_queue_header* %56, %struct.vmci_queue_header** %57, align 8
  %58 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %45, %38, %31
  br label %60

60:                                               ; preds = %59, %18
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @qp_map_queue_headers(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
