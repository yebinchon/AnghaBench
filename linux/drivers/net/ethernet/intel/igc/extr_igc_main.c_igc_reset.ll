; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, %struct.igc_hw, %struct.pci_dev* }
%struct.igc_hw = type { %struct.TYPE_4__, %struct.igc_fc_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.1*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque
%struct.igc_fc_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@IGC_PBA_34K = common dso_local global i32 0, align 4
@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Hardware Error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igc_reset(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.igc_hw*, align 8
  %5 = alloca %struct.igc_fc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %8 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %8, i32 0, i32 3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %11, i32 0, i32 2
  store %struct.igc_hw* %12, %struct.igc_hw** %4, align 8
  %13 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %14 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %13, i32 0, i32 1
  store %struct.igc_fc_info* %14, %struct.igc_fc_info** %5, align 8
  %15 = load i32, i32* @IGC_PBA_34K, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 10
  %18 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %17, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, -16
  %26 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %27 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %29 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 16
  %32 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %33 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %35 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %34, i32 0, i32 2
  store i32 65535, i32* %35, align 4
  %36 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %37 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %39 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.igc_fc_info*, %struct.igc_fc_info** %5, align 8
  %42 = getelementptr inbounds %struct.igc_fc_info, %struct.igc_fc_info* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %44 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32 (%struct.igc_hw.1*)*, i32 (%struct.igc_hw.1*)** %46, align 8
  %48 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %49 = bitcast %struct.igc_hw* %48 to %struct.igc_hw.1*
  %50 = call i32 %47(%struct.igc_hw.1* %49)
  %51 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %52 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.igc_hw.0*)*, i64 (%struct.igc_hw.0*)** %54, align 8
  %56 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %57 = bitcast %struct.igc_hw* %56 to %struct.igc_hw.0*
  %58 = call i64 %55(%struct.igc_hw.0* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %1
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %1
  %65 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_running(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %72 = call i32 @igc_power_down_link(%struct.igc_adapter* %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %75 = call i32 @igc_get_phy_info(%struct.igc_hw* %74)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @igc_power_down_link(%struct.igc_adapter*) #1

declare dso_local i32 @igc_get_phy_info(%struct.igc_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
