; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_ehl_common_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_ehl_common_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.plat_stmmacenet_data*)* @ehl_common_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehl_common_data(%struct.pci_dev* %0, %struct.plat_stmmacenet_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %5, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %9, i32 0, i32 1
  store i32 8, i32* %10, align 4
  %11 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %11, i32 0, i32 2
  store i32 200000000, i32* %12, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %15 = call i32 @intel_mgbe_common_data(%struct.pci_dev* %13, %struct.plat_stmmacenet_data* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @intel_mgbe_common_data(%struct.pci_dev*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
