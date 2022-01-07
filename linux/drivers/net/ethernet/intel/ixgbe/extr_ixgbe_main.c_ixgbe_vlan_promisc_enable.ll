; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_vlan_promisc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_vlan_promisc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IXGBE_VLNCTRL = common dso_local global i32 0, align 4
@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@IXGBE_VLNCTRL_VFE = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_FLAG2_VLAN_PROMISC = common dso_local global i32 0, align 4
@IXGBE_VLVF_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_vlan_promisc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_vlan_promisc_enable(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %12 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IXGBE_FLAG_VMDQ_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @IXGBE_VLNCTRL_VFE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %23, i32 %24, i32 %25)
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @IXGBE_VLNCTRL_VFE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = load i32, i32* @IXGBE_VLNCTRL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i32 %33, i32 %34)
  br label %96

36:                                               ; preds = %19
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %96

44:                                               ; preds = %36
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IXGBE_FLAG2_VLAN_PROMISC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %96

52:                                               ; preds = %44
  %53 = load i32, i32* @IXGBE_FLAG2_VLAN_PROMISC, align 4
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @IXGBE_VLVF_ENTRIES, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %63, %52
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 2
  %66 = call i32 @VMDQ_P(i32 0)
  %67 = sdiv i32 %66, 32
  %68 = add nsw i32 %65, %67
  %69 = call i32 @IXGBE_VLVFB(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = call i32 @VMDQ_P(i32 0)
  %74 = srem i32 %73, 32
  %75 = call i32 @BIT(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %78, i32 %79, i32 %80)
  br label %59

82:                                               ; preds = %59
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %91, %82
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %5, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @IXGBE_VFTA(i32 %93)
  %95 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %94, i32 -1)
  br label %87

96:                                               ; preds = %27, %43, %51, %87
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VLVFB(i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
