; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_resource.c_vmci_resource_by_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_resource.c_vmci_resource_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_resource = type { i32 }
%struct.vmci_handle = type { i32 }

@VMCI_RESOURCE_TYPE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmci_resource* @vmci_resource_by_handle(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.vmci_handle, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_resource*, align 8
  %6 = alloca %struct.vmci_resource*, align 8
  %7 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %4, align 4
  store %struct.vmci_resource* null, %struct.vmci_resource** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vmci_resource* @vmci_resource_lookup(i32 %11, i32 %9)
  store %struct.vmci_resource* %12, %struct.vmci_resource** %5, align 8
  %13 = load %struct.vmci_resource*, %struct.vmci_resource** %5, align 8
  %14 = icmp ne %struct.vmci_resource* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.vmci_resource*, %struct.vmci_resource** %5, align 8
  %18 = getelementptr inbounds %struct.vmci_resource, %struct.vmci_resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VMCI_RESOURCE_TYPE_ANY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %15
  %26 = load %struct.vmci_resource*, %struct.vmci_resource** %5, align 8
  %27 = call %struct.vmci_resource* @vmci_resource_get(%struct.vmci_resource* %26)
  store %struct.vmci_resource* %27, %struct.vmci_resource** %6, align 8
  br label %28

28:                                               ; preds = %25, %21, %2
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.vmci_resource*, %struct.vmci_resource** %6, align 8
  ret %struct.vmci_resource* %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vmci_resource* @vmci_resource_lookup(i32, i32) #1

declare dso_local %struct.vmci_resource* @vmci_resource_get(%struct.vmci_resource*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
