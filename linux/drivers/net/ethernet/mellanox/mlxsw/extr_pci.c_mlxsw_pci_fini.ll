; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mlxsw_pci_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlxsw_pci*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mlxsw_pci*
  store %struct.mlxsw_pci* %5, %struct.mlxsw_pci** %3, align 8
  %6 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pci_irq_vector(i32 %8, i32 0)
  %10 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.mlxsw_pci* %10)
  %12 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %13 = call i32 @mlxsw_pci_aqs_fini(%struct.mlxsw_pci* %12)
  %14 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %15 = call i32 @mlxsw_pci_fw_area_fini(%struct.mlxsw_pci* %14)
  %16 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %17 = call i32 @mlxsw_pci_free_irq_vectors(%struct.mlxsw_pci* %16)
  %18 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %19 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @mlxsw_pci_mbox_free(%struct.mlxsw_pci* %18, i32* %21)
  %23 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %24 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mlxsw_pci_mbox_free(%struct.mlxsw_pci* %23, i32* %26)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.mlxsw_pci*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @mlxsw_pci_aqs_fini(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_pci_fw_area_fini(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_pci_free_irq_vectors(%struct.mlxsw_pci*) #1

declare dso_local i32 @mlxsw_pci_mbox_free(%struct.mlxsw_pci*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
