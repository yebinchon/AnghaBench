; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_deconfigure_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_deconfigure_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*)* @cxl_deconfigure_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_deconfigure_adapter(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %4 = load %struct.cxl*, %struct.cxl** %2, align 8
  %5 = getelementptr inbounds %struct.cxl, %struct.cxl* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pci_dev* @to_pci_dev(i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = call i64 (...) @cxl_is_power9()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pnv_pci_set_tunnel_bar(%struct.pci_dev* %12, i32 -536870912, i32 0)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.cxl*, %struct.cxl** %2, align 8
  %16 = call i32 @cxl_native_release_psl_err_irq(%struct.cxl* %15)
  %17 = load %struct.cxl*, %struct.cxl** %2, align 8
  %18 = call i32 @cxl_unmap_adapter_regs(%struct.cxl* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_disable_device(%struct.pci_dev* %19)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @cxl_is_power9(...) #1

declare dso_local i32 @pnv_pci_set_tunnel_bar(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @cxl_native_release_psl_err_irq(%struct.cxl*) #1

declare dso_local i32 @cxl_unmap_adapter_regs(%struct.cxl*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
