; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32 }
%struct.dw_mci_slot = type { %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_command = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.dw_mci_slot*)* @dw_mci_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_start_request(%struct.dw_mci* %0, %struct.dw_mci_slot* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.dw_mci_slot*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.dw_mci_slot* %1, %struct.dw_mci_slot** %4, align 8
  %7 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %8 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %7, i32 0, i32 0
  %9 = load %struct.mmc_request*, %struct.mmc_request** %8, align 8
  store %struct.mmc_request* %9, %struct.mmc_request** %5, align 8
  %10 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 1
  %12 = load %struct.mmc_command*, %struct.mmc_command** %11, align 8
  %13 = icmp ne %struct.mmc_command* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 1
  %17 = load %struct.mmc_command*, %struct.mmc_command** %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %19, i32 0, i32 0
  %21 = load %struct.mmc_command*, %struct.mmc_command** %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi %struct.mmc_command* [ %17, %14 ], [ %21, %18 ]
  store %struct.mmc_command* %23, %struct.mmc_command** %6, align 8
  %24 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %25 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %26 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %27 = call i32 @__dw_mci_start_request(%struct.dw_mci* %24, %struct.dw_mci_slot* %25, %struct.mmc_command* %26)
  ret void
}

declare dso_local i32 @__dw_mci_start_request(%struct.dw_mci*, %struct.dw_mci_slot*, %struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
