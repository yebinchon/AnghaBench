; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_setup_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i32, %struct.atl1_adapter* }
%struct.atl1_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"error setting up autonegotiation\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error resetting phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1_hw*)* @atl1_setup_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1_setup_link(%struct.atl1_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atl1_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca i64, align 8
  store %struct.atl1_hw* %0, %struct.atl1_hw** %3, align 8
  %7 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %8 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %7, i32 0, i32 1
  %9 = load %struct.atl1_adapter*, %struct.atl1_adapter** %8, align 8
  %10 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %13 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %12, i32 0, i32 1
  %14 = load %struct.atl1_adapter*, %struct.atl1_adapter** %13, align 8
  store %struct.atl1_adapter* %14, %struct.atl1_adapter** %5, align 8
  %15 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %16 = call i64 @atl1_phy_setup_autoneg_adv(%struct.atl1_hw* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %21 = call i64 @netif_msg_link(%struct.atl1_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %2, align 8
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %31 = call i64 @atl1_phy_reset(%struct.atl1_hw* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %36 = call i64 @netif_msg_link(%struct.atl1_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %2, align 8
  br label %48

44:                                               ; preds = %29
  %45 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %46 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %44, %42, %27
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i64 @atl1_phy_setup_autoneg_adv(%struct.atl1_hw*) #1

declare dso_local i64 @netif_msg_link(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @atl1_phy_reset(%struct.atl1_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
