; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_lan_id_multi_port_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_set_lan_id_multi_port_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_4__, %struct.ixgbe_bus_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_bus_info = type { i32, i32, i32 }

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FACTPS_LFS = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP = common dso_local global i64 0, align 8
@IXGBE_EEPROM_CTRL_4 = common dso_local global i32 0, align 4
@IXGBE_EE_CTRL_4_INST_ID = common dso_local global i32 0, align 4
@IXGBE_EE_CTRL_4_INST_ID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_bus_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  store %struct.ixgbe_bus_info* %7, %struct.ixgbe_bus_info** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = load i32, i32* @IXGBE_STATUS, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_STATUS_LAN_ID, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @IXGBE_STATUS_LAN_ID_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i32 @IXGBE_FACTPS(%struct.ixgbe_hw* %24)
  %26 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IXGBE_FACTPS_LFS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IXGBE_DEV_ID_X550EM_A_SFP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.0*
  %50 = load i32, i32* @IXGBE_EEPROM_CTRL_4, align 4
  %51 = call i32 %47(%struct.ixgbe_hw.0* %49, i32 %50, i32* %4)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IXGBE_EE_CTRL_4_INST_ID, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @IXGBE_EE_CTRL_4_INST_ID_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FACTPS(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
