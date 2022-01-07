; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_get_pci_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_get_pci_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.chelsio_pci_params = type { i16, i32, i32 }

@get_pci_mode.speed_map = internal constant [4 x i16] [i16 33, i16 66, i16 100, i16 133], align 2
@A_PCICFG_MODE = common dso_local global i32 0, align 4
@F_PCI_MODE_64BIT = common dso_local global i32 0, align 4
@F_PCI_MODE_PCIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.chelsio_pci_params*)* @get_pci_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pci_mode(%struct.TYPE_3__* %0, %struct.chelsio_pci_params* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.chelsio_pci_params*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.chelsio_pci_params* %1, %struct.chelsio_pci_params** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @A_PCICFG_MODE, align 4
  %10 = call i32 @pci_read_config_dword(i32 %8, i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @G_PCI_MODE_CLK(i32 %11)
  %13 = getelementptr inbounds [4 x i16], [4 x i16]* @get_pci_mode.speed_map, i64 0, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = load %struct.chelsio_pci_params*, %struct.chelsio_pci_params** %4, align 8
  %16 = getelementptr inbounds %struct.chelsio_pci_params, %struct.chelsio_pci_params* %15, i32 0, i32 0
  store i16 %14, i16* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @F_PCI_MODE_64BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 64, i32 32
  %23 = load %struct.chelsio_pci_params*, %struct.chelsio_pci_params** %4, align 8
  %24 = getelementptr inbounds %struct.chelsio_pci_params, %struct.chelsio_pci_params* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @F_PCI_MODE_PCIX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.chelsio_pci_params*, %struct.chelsio_pci_params** %4, align 8
  %31 = getelementptr inbounds %struct.chelsio_pci_params, %struct.chelsio_pci_params* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i64 @G_PCI_MODE_CLK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
