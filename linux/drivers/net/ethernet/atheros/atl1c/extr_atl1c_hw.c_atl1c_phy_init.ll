; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i32, i32, i32, %struct.atl1c_adapter* }
%struct.atl1c_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@BMCR_RESET = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error get phy ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Wrong Media type %d\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_phy_init(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  %8 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %9 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %8, i32 0, i32 4
  %10 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %9, align 8
  store %struct.atl1c_adapter* %10, %struct.atl1c_adapter** %4, align 8
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* @BMCR_RESET, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %16 = load i32, i32* @MII_PHYSID1, align 4
  %17 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %18 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %17, i32 0, i32 3
  %19 = call i64 @atl1c_read_phy_reg(%struct.atl1c_hw* %15, i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %23 = load i32, i32* @MII_PHYSID2, align 4
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 2
  %26 = call i64 @atl1c_read_phy_reg(%struct.atl1c_hw* %22, i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21, %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %96

32:                                               ; preds = %21
  %33 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %34 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %72 [
    i32 128, label %36
    i32 132, label %57
    i32 131, label %63
    i32 130, label %67
    i32 129, label %71
  ]

36:                                               ; preds = %32
  %37 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %38 = call i32 @atl1c_phy_setup_adv(%struct.atl1c_hw* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %43 = call i32 @netif_msg_link(%struct.atl1c_adapter* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %96

51:                                               ; preds = %36
  %52 = load i32, i32* @BMCR_ANENABLE, align 4
  %53 = load i32, i32* @BMCR_ANRESTART, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %84

57:                                               ; preds = %32
  %58 = load i32, i32* @BMCR_SPEED100, align 4
  %59 = load i32, i32* @BMCR_FULLDPLX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %84

63:                                               ; preds = %32
  %64 = load i32, i32* @BMCR_SPEED100, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %84

67:                                               ; preds = %32
  %68 = load i32, i32* @BMCR_FULLDPLX, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %84

71:                                               ; preds = %32
  br label %84

72:                                               ; preds = %32
  %73 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %74 = call i32 @netif_msg_link(%struct.atl1c_adapter* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %80 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76, %72
  store i32 -1, i32* %2, align 4
  br label %96

84:                                               ; preds = %71, %67, %63, %57, %51
  %85 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %86 = load i32, i32* @MII_BMCR, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @atl1c_write_phy_reg(%struct.atl1c_hw* %85, i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %96

93:                                               ; preds = %84
  %94 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %95 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %91, %83, %49, %28
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @atl1c_read_phy_reg(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @atl1c_phy_setup_adv(%struct.atl1c_hw*) #1

declare dso_local i32 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_write_phy_reg(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
