; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_event.c_vmci_event_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_event.c_vmci_event_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_subscription = type { i32 }

@subscriber_mutex = common dso_local global i32 0, align 4
@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_event_unsubscribe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_subscription*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @mutex_lock(i32* @subscriber_mutex)
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.vmci_subscription* @event_find(i32 %6)
  store %struct.vmci_subscription* %7, %struct.vmci_subscription** %4, align 8
  %8 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %9 = icmp ne %struct.vmci_subscription* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %12 = getelementptr inbounds %struct.vmci_subscription, %struct.vmci_subscription* %11, i32 0, i32 0
  %13 = call i32 @list_del_rcu(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = call i32 @mutex_unlock(i32* @subscriber_mutex)
  %16 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %17 = icmp ne %struct.vmci_subscription* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %14
  %21 = call i32 (...) @synchronize_rcu()
  %22 = load %struct.vmci_subscription*, %struct.vmci_subscription** %4, align 8
  %23 = call i32 @kfree(%struct.vmci_subscription* %22)
  %24 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vmci_subscription* @event_find(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.vmci_subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
