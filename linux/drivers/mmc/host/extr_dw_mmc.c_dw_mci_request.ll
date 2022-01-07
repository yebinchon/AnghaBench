; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mci_slot = type { i32, %struct.dw_mci* }
%struct.dw_mci = type { i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @dw_mci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.dw_mci_slot* %8, %struct.dw_mci_slot** %5, align 8
  %9 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %10 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %9, i32 0, i32 1
  %11 = load %struct.dw_mci*, %struct.dw_mci** %10, align 8
  store %struct.dw_mci* %11, %struct.dw_mci** %6, align 8
  %12 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %13 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = call i32 @dw_mci_get_cd(%struct.mmc_host* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEDIUM, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = call i32 @mmc_request_done(%struct.mmc_host* %26, %struct.mmc_request* %27)
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %31 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %34 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = call i32 @dw_mci_queue_request(%struct.dw_mci* %33, %struct.dw_mci_slot* %34, %struct.mmc_request* %35)
  %37 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %38 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  br label %40

40:                                               ; preds = %29, %19
  ret void
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dw_mci_get_cd(%struct.mmc_host*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dw_mci_queue_request(%struct.dw_mci*, %struct.dw_mci_slot*, %struct.mmc_request*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
