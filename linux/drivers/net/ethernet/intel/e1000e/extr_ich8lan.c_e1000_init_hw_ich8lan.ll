; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_hw_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_hw_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_mac_info }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_mac_info = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@BM_PORT_GEN_CFG = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_TXDCTL_PTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_MAX_TX_DESC_PREFETCH = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@PCIE_ICH8_SNOOP_ALL = common dso_local global i32 0, align 4
@PCIE_NO_SNOOP_ALL = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_RO_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_mac_info* %11, %struct.e1000_mac_info** %4, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = call i32 @e1000_initialize_hw_bits_ich8lan(%struct.e1000_hw* %12)
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.1*
  %20 = call i64 %17(%struct.e1000_hw.1* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @e1000e_init_rx_addrs(%struct.e1000_hw* %26, i32 %29)
  %31 = call i32 @e_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %43, %25
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = load i32, i32* @E1000_MTA, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %39, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_phy_82578, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %56 = call i32 @e1e_rphy(%struct.e1000_hw* %54, i32 %55, i32* %9)
  %57 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @e1e_wphy(%struct.e1000_hw* %61, i32 %62, i32 %63)
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i64 @e1000_phy_hw_reset_ich8lan(%struct.e1000_hw* %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %2, align 8
  br label %140

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %75, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = bitcast %struct.e1000_hw* %77 to %struct.e1000_hw.0*
  %79 = call i64 %76(%struct.e1000_hw.0* %78)
  store i64 %79, i64* %8, align 8
  %80 = call i32 @TXDCTL(i32 0)
  %81 = call i32 @er32(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @E1000_TXDCTL_PTHRESH, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* @E1000_TXDCTL_MAX_TX_DESC_PREFETCH, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %6, align 4
  %94 = call i32 @TXDCTL(i32 0)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @ew32(i32 %94, i32 %95)
  %97 = call i32 @TXDCTL(i32 1)
  %98 = call i32 @er32(i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @E1000_TXDCTL_PTHRESH, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* @E1000_TXDCTL_MAX_TX_DESC_PREFETCH, align 4
  %110 = or i32 %108, %109
  store i32 %110, i32* %6, align 4
  %111 = call i32 @TXDCTL(i32 1)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ew32(i32 %111, i32 %112)
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @e1000_ich8lan, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %72
  %120 = load i32, i32* @PCIE_ICH8_SNOOP_ALL, align 4
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %72
  %122 = load i64, i64* @PCIE_NO_SNOOP_ALL, align 8
  %123 = xor i64 %122, -1
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %119
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @e1000e_set_pcie_no_snoop(%struct.e1000_hw* %126, i32 %127)
  %129 = load i32, i32* @CTRL_EXT, align 4
  %130 = call i32 @er32(i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @E1000_CTRL_EXT_RO_DIS, align 4
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @CTRL_EXT, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @ew32(i32 %134, i32 %135)
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = call i32 @e1000_clear_hw_cntrs_ich8lan(%struct.e1000_hw* %137)
  %139 = load i64, i64* %8, align 8
  store i64 %139, i64* %2, align 8
  br label %140

140:                                              ; preds = %125, %69
  %141 = load i64, i64* %2, align 8
  ret i64 %141
}

declare dso_local i32 @e1000_initialize_hw_bits_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000e_init_rx_addrs(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_phy_hw_reset_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_set_pcie_no_snoop(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
