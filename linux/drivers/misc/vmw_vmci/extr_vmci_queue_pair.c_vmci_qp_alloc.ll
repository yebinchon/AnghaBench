; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_vmci_qp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_queue = type { i32 }

@VMCI_QP_ALL_FLAGS = common dso_local global i32 0, align 4
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qp_alloc(%struct.vmci_handle* %0, %struct.vmci_queue** %1, i32 %2, %struct.vmci_queue** %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmci_handle*, align 8
  %14 = alloca %struct.vmci_queue**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vmci_queue**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.vmci_handle* %0, %struct.vmci_handle** %13, align 8
  store %struct.vmci_queue** %1, %struct.vmci_queue*** %14, align 8
  store i32 %2, i32* %15, align 4
  store %struct.vmci_queue** %3, %struct.vmci_queue*** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  %24 = load %struct.vmci_handle*, %struct.vmci_handle** %13, align 8
  %25 = icmp ne %struct.vmci_handle* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %11
  %27 = load %struct.vmci_queue**, %struct.vmci_queue*** %14, align 8
  %28 = icmp ne %struct.vmci_queue** %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.vmci_queue**, %struct.vmci_queue*** %16, align 8
  %31 = icmp ne %struct.vmci_queue** %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* @VMCI_QP_ALL_FLAGS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %35, %29, %26, %11
  %45 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %45, i32* %12, align 4
  br label %71

46:                                               ; preds = %38
  %47 = load i32, i32* %21, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.vmci_handle*, %struct.vmci_handle** %13, align 8
  %51 = load %struct.vmci_queue**, %struct.vmci_queue*** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.vmci_queue**, %struct.vmci_queue*** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @qp_alloc_guest_work(%struct.vmci_handle* %50, %struct.vmci_queue** %51, i32 %52, %struct.vmci_queue** %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %71

59:                                               ; preds = %46
  %60 = load %struct.vmci_handle*, %struct.vmci_handle** %13, align 8
  %61 = load %struct.vmci_queue**, %struct.vmci_queue*** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.vmci_queue**, %struct.vmci_queue*** %16, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i8*, i8** %23, align 8
  %70 = call i32 @qp_alloc_host_work(%struct.vmci_handle* %60, %struct.vmci_queue** %61, i32 %62, %struct.vmci_queue** %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i8* %69)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %59, %49, %44
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local i32 @qp_alloc_guest_work(%struct.vmci_handle*, %struct.vmci_queue**, i32, %struct.vmci_queue**, i32, i32, i32, i32) #1

declare dso_local i32 @qp_alloc_host_work(%struct.vmci_handle*, %struct.vmci_queue**, i32, %struct.vmci_queue**, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
