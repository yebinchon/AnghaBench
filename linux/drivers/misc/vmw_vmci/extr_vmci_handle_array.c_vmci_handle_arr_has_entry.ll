; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_handle_array.c_vmci_handle_arr_has_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_handle_array.c_vmci_handle_arr_has_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle_arr = type { i64, i32* }
%struct.vmci_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_handle_arr_has_entry(%struct.vmci_handle_arr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca %struct.vmci_handle_arr*, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.vmci_handle_arr* %0, %struct.vmci_handle_arr** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %5, align 8
  %11 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %5, align 8
  %16 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @vmci_handle_is_equal(i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %31

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %8

30:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @vmci_handle_is_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
