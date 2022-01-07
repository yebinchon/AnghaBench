; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pci_remove_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pci_remove_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*)* }

@STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @ef4_pci_remove_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_pci_remove_main(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %3 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %4 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @STATE_READY, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 2
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %14 = call i32 @ef4_disable_interrupts(%struct.ef4_nic* %13)
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = call i32 @ef4_nic_fini_interrupt(%struct.ef4_nic* %15)
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %18 = call i32 @ef4_fini_port(%struct.ef4_nic* %17)
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %20 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %22, align 8
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %25 = call i32 %23(%struct.ef4_nic* %24)
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %27 = call i32 @ef4_fini_napi(%struct.ef4_nic* %26)
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %29 = call i32 @ef4_remove_all(%struct.ef4_nic* %28)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ef4_disable_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_nic_fini_interrupt(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_fini_port(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_fini_napi(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_remove_all(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
