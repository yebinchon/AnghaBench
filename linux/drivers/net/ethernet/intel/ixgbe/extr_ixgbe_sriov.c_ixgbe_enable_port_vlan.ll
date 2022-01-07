; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_enable_port_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_enable_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.ixgbe_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_QDE_ENABLE = common dso_local global i32 0, align 4
@IXGBE_QDE_HIDE_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Setting VLAN %d, QOS 0x%x on VF %d\0A\00", align 1
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"The VF VLAN has been set, but the PF device is not up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Bring the PF device up before attempting to use the VF device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32, i32, i32)* @ixgbe_enable_port_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_enable_port_vlan(%struct.ixgbe_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 3
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %9, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %13, i32 1, i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %87

20:                                               ; preds = %4
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %21, i32 0, i32 0, i32 %22)
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ixgbe_set_vmolr(%struct.ixgbe_hw* %29, i32 %30, i32 0)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ixgbe_mac_X550, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IXGBE_QDE_ENABLE, align 4
  %42 = load i32, i32* @IXGBE_QDE_HIDE_VLAN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ixgbe_write_qde(%struct.ixgbe_adapter* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %20
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %46, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 4
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @__IXGBE_DOWN, align 4
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %45
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @dev_warn(i32* %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %75, %45
  br label %87

87:                                               ; preds = %86, %19
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_set_vmolr(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_write_qde(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
