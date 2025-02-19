; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_init_hw_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_init_hw_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.e1000_hw = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@ENET_HEADER_SIZE = common dso_local global i64 0, align 8
@ETHERNET_FCS_SIZE = common dso_local global i64 0, align 8
@MINIMUM_ETHERNET_FRAME_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown MAC Type\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@AUTO_ALL_MODES = common dso_local global i32 0, align 4
@E1000_MASTER_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_hw*)* @e1000_init_hw_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_hw_struct(%struct.e1000_adapter* %0, %struct.e1000_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_hw* %1, %struct.e1000_hw** %5, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 16
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 15
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 14
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = load i32, i32* @PCI_COMMAND, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 11
  %39 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i32 %36, i32* %38)
  %40 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ENET_HEADER_SIZE, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @ETHERNET_FCS_SIZE, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 10
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @MINIMUM_ETHERNET_FRAME_SIZE, align 4
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %55 = call i64 @e1000_set_mac_type(%struct.e1000_hw* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %2
  %58 = load i32, i32* @probe, align 4
  %59 = call i32 @e_err(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %96

62:                                               ; preds = %2
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %66 [
    i32 131, label %67
    i32 129, label %67
    i32 130, label %67
    i32 128, label %67
  ]

66:                                               ; preds = %62
  br label %70

67:                                               ; preds = %62, %62, %62, %62
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %72 = call i32 @e1000_set_media_type(%struct.e1000_hw* %71)
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %74 = call i32 @e1000_get_bus_info(%struct.e1000_hw* %73)
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 4
  store i32 1, i32* %80, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @e1000_media_type_copper, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %70
  %87 = load i32, i32* @AUTO_ALL_MODES, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 6
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* @E1000_MASTER_SLAVE, align 4
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %70
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %57
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @e1000_set_mac_type(%struct.e1000_hw*) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @e1000_set_media_type(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_get_bus_info(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
