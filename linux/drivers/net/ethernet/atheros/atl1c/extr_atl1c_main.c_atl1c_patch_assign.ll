; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_patch_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_patch_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.atl1c_hw = type { i32, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@plats = common dso_local global %struct.TYPE_4__* null, align 8
@ATL1C_LINK_PATCH = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ATHEROS_L2C_B2 = common dso_local global i64 0, align 8
@L2CB_V21 = common dso_local global i64 0, align 8
@REG_PCIE_IND_ACC_ADDR = common dso_local global i32 0, align 4
@REG_PCIE_DEV_MISC_CTRL = common dso_local global i32 0, align 4
@REG_PCIE_IND_ACC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_hw*)* @atl1c_patch_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_patch_assign(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %6 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %7 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %6, i32 0, i32 5
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %12 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  br label %13

13:                                               ; preds = %79, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plats, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plats, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %29 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %21
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plats, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %40 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plats, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %51 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %43
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plats, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %62 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plats, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATL1C_LINK_PATCH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %77 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %65
  br label %79

79:                                               ; preds = %78, %54, %43, %32, %21
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %13

82:                                               ; preds = %13
  %83 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %84 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCI_DEVICE_ID_ATHEROS_L2C_B2, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %82
  %89 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %90 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @L2CB_V21, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = load i32, i32* @REG_PCIE_IND_ACC_ADDR, align 4
  %97 = load i32, i32* @REG_PCIE_DEV_MISC_CTRL, align 4
  %98 = call i32 @pci_write_config_dword(%struct.pci_dev* %95, i32 %96, i32 %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = load i32, i32* @REG_PCIE_IND_ACC_DATA, align 4
  %101 = call i32 @pci_read_config_dword(%struct.pci_dev* %99, i32 %100, i32* %4)
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, -257
  store i32 %103, i32* %4, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = load i32, i32* @REG_PCIE_IND_ACC_ADDR, align 4
  %106 = load i32, i32* @REG_PCIE_DEV_MISC_CTRL, align 4
  %107 = call i32 @pci_write_config_dword(%struct.pci_dev* %104, i32 %105, i32 %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = load i32, i32* @REG_PCIE_IND_ACC_DATA, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @pci_write_config_dword(%struct.pci_dev* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %94, %88, %82
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
