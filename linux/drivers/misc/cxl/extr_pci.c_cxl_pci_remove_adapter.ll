; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_remove_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_remove_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cxl_remove_adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*)* @cxl_pci_remove_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_pci_remove_adapter(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %3 = call i32 @pr_devel(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cxl*, %struct.cxl** %2, align 8
  %5 = call i32 @cxl_sysfs_adapter_remove(%struct.cxl* %4)
  %6 = load %struct.cxl*, %struct.cxl** %2, align 8
  %7 = call i32 @cxl_debugfs_adapter_remove(%struct.cxl* %6)
  %8 = load %struct.cxl*, %struct.cxl** %2, align 8
  %9 = call i32 @cxl_data_cache_flush(%struct.cxl* %8)
  %10 = load %struct.cxl*, %struct.cxl** %2, align 8
  %11 = call i32 @cxl_deconfigure_adapter(%struct.cxl* %10)
  %12 = load %struct.cxl*, %struct.cxl** %2, align 8
  %13 = getelementptr inbounds %struct.cxl, %struct.cxl* %12, i32 0, i32 0
  %14 = call i32 @device_unregister(i32* %13)
  ret void
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @cxl_sysfs_adapter_remove(%struct.cxl*) #1

declare dso_local i32 @cxl_debugfs_adapter_remove(%struct.cxl*) #1

declare dso_local i32 @cxl_data_cache_flush(%struct.cxl*) #1

declare dso_local i32 @cxl_deconfigure_adapter(%struct.cxl*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
