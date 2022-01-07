; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_wait_for_ready_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_wait_for_ready_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qp = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_qp*)* @qp_wait_for_ready_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_wait_for_ready_queue(%struct.vmci_qp* %0) #0 {
  %2 = alloca %struct.vmci_qp*, align 8
  %3 = alloca i32, align 4
  store %struct.vmci_qp* %0, %struct.vmci_qp** %2, align 8
  %4 = load %struct.vmci_qp*, %struct.vmci_qp** %2, align 8
  %5 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load %struct.vmci_qp*, %struct.vmci_qp** %2, align 8
  %9 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.vmci_qp*, %struct.vmci_qp** %2, align 8
  %12 = call i32 @qp_unlock(%struct.vmci_qp* %11)
  %13 = load %struct.vmci_qp*, %struct.vmci_qp** %2, align 8
  %14 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vmci_qp*, %struct.vmci_qp** %2, align 8
  %18 = getelementptr inbounds %struct.vmci_qp, %struct.vmci_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @wait_event(i32 %15, i32 %21)
  %23 = load %struct.vmci_qp*, %struct.vmci_qp** %2, align 8
  %24 = call i32 @qp_lock(%struct.vmci_qp* %23)
  ret i32 1
}

declare dso_local i32 @qp_unlock(%struct.vmci_qp*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @qp_lock(%struct.vmci_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
