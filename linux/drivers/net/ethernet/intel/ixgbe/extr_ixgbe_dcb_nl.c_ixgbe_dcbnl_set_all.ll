; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_set_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_set_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_5__*, %struct.ixgbe_hw, %struct.ixgbe_dcb_config }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_dcb_config = type { i64 }

@DCB_NO_HW_CHG = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@BIT_PG_TX = common dso_local global i32 0, align 4
@BIT_PG_RX = common dso_local global i32 0, align 4
@MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@DCB_TX_CONFIG = common dso_local global i32 0, align 4
@DCB_RX_CONFIG = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@DCB_HW_CHG_RST = common dso_local global i32 0, align 4
@BIT_PFC = common dso_local global i32 0, align 4
@DCB_HW_CHG = common dso_local global i32 0, align 4
@BIT_APP_UPCHG = common dso_local global i32 0, align 4
@DCB_APP_IDTYPE_ETHTYPE = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@IXGBE_FCOE_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@NETIF_F_FCOE_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ixgbe_dcbnl_set_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_set_all(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_dcb_config*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %19)
  store %struct.ixgbe_adapter* %20, %struct.ixgbe_adapter** %4, align 8
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 5
  store %struct.ixgbe_dcb_config* %22, %struct.ixgbe_dcb_config** %5, align 8
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 4
  store %struct.ixgbe_hw* %24, %struct.ixgbe_hw** %6, align 8
  %25 = load i32, i32* @DCB_NO_HW_CHG, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @DCB_NO_HW_CHG, align 4
  store i32 %33, i32* %2, align 4
  br label %174

34:                                               ; preds = %1
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %36 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %37 = call i32 @ixgbe_copy_dcb_cfg(%struct.ixgbe_adapter* %35, i32 %36)
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @DCB_NO_HW_CHG, align 4
  store i32 %47, i32* %2, align 4
  br label %174

48:                                               ; preds = %34
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BIT_PG_TX, align 4
  %53 = load i32, i32* @BIT_PG_RX, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %131

57:                                               ; preds = %48
  %58 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %9, align 8
  %61 = alloca i32 (i32, i32)*, i64 %59, align 16
  store i64 %59, i64* %10, align 8
  %62 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %63 = zext i32 %62 to i64
  %64 = alloca i32 (i32, i32)*, i64 %63, align 16
  store i64 %63, i64* %11, align 8
  %65 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %66 = zext i32 %65 to i64
  %67 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %12, align 8
  %68 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %13, align 8
  %71 = load i32, i32* @MAX_USER_PRIORITY, align 4
  %72 = zext i32 %71 to i64
  %73 = alloca i32, i64 %72, align 16
  store i64 %72, i64* %14, align 8
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ETH_HLEN, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @ETH_FCS_LEN, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %15, align 4
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %84 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @DCB_TX_CONFIG, align 4
  %87 = call i32 @ixgbe_dcb_calculate_tc_credits(%struct.ixgbe_hw* %83, %struct.ixgbe_dcb_config* %84, i32 %85, i32 %86)
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %89 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @DCB_RX_CONFIG, align 4
  %92 = call i32 @ixgbe_dcb_calculate_tc_credits(%struct.ixgbe_hw* %88, %struct.ixgbe_dcb_config* %89, i32 %90, i32 %91)
  %93 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %94 = load i32, i32* @DCB_TX_CONFIG, align 4
  %95 = bitcast i32 (i32, i32)** %61 to i32 (i32, i32)*
  %96 = call i32 @ixgbe_dcb_unpack_refill(%struct.ixgbe_dcb_config* %93, i32 %94, i32 (i32, i32)* %95)
  %97 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %98 = bitcast i32 (i32, i32)** %64 to i32 (i32, i32)*
  %99 = call i32 @ixgbe_dcb_unpack_max(%struct.ixgbe_dcb_config* %97, i32 (i32, i32)* %98)
  %100 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %101 = load i32, i32* @DCB_TX_CONFIG, align 4
  %102 = call i32 @ixgbe_dcb_unpack_bwgid(%struct.ixgbe_dcb_config* %100, i32 %101, i32* %67)
  %103 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %104 = load i32, i32* @DCB_TX_CONFIG, align 4
  %105 = call i32 @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config* %103, i32 %104, i32* %70)
  %106 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %107 = load i32, i32* @DCB_TX_CONFIG, align 4
  %108 = call i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config* %106, i32 %107, i32* %73)
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %110 = bitcast i32 (i32, i32)** %61 to i32 (i32, i32)*
  %111 = bitcast i32 (i32, i32)** %64 to i32 (i32, i32)*
  %112 = call i32 @ixgbe_dcb_hw_ets_config(%struct.ixgbe_hw* %109, i32 (i32, i32)* %110, i32 (i32, i32)* %111, i32* %67, i32* %70, i32* %73)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %125, %57
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %73, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %118, i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %113

128:                                              ; preds = %113
  %129 = load i32, i32* @DCB_HW_CHG_RST, align 4
  store i32 %129, i32* %7, align 4
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  br label %131

131:                                              ; preds = %128, %48
  %132 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %133 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BIT_PFC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %131
  %139 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %140 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load i32, i32* @MAX_USER_PRIORITY, align 4
  %145 = zext i32 %144 to i64
  %146 = call i8* @llvm.stacksave()
  store i8* %146, i8** %17, align 8
  %147 = alloca i32, i64 %145, align 16
  store i64 %145, i64* %18, align 8
  %148 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %149 = load i32, i32* @DCB_TX_CONFIG, align 4
  %150 = call i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config* %148, i32 %149, i32* %147)
  %151 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %5, align 8
  %152 = call i32 @ixgbe_dcb_unpack_pfc(%struct.ixgbe_dcb_config* %151, i32* %16)
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @ixgbe_dcb_hw_pfc_config(%struct.ixgbe_hw* %153, i32 %154, i32* %147)
  %156 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %156)
  br label %166

157:                                              ; preds = %138
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %159 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %161, align 8
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %164 = bitcast %struct.ixgbe_hw* %163 to %struct.ixgbe_hw.0*
  %165 = call i32 %162(%struct.ixgbe_hw.0* %164)
  br label %166

166:                                              ; preds = %157, %143
  %167 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %168 = call i32 @ixgbe_set_rx_drop_en(%struct.ixgbe_adapter* %167)
  %169 = load i32, i32* @DCB_HW_CHG, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %166, %131
  %171 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %172 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %46, %32
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_copy_dcb_cfg(%struct.ixgbe_adapter*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ixgbe_dcb_calculate_tc_credits(%struct.ixgbe_hw*, %struct.ixgbe_dcb_config*, i32, i32) #1

declare dso_local i32 @ixgbe_dcb_unpack_refill(%struct.ixgbe_dcb_config*, i32, i32 (i32, i32)*) #1

declare dso_local i32 @ixgbe_dcb_unpack_max(%struct.ixgbe_dcb_config*, i32 (i32, i32)*) #1

declare dso_local i32 @ixgbe_dcb_unpack_bwgid(%struct.ixgbe_dcb_config*, i32, i32*) #1

declare dso_local i32 @ixgbe_dcb_unpack_prio(%struct.ixgbe_dcb_config*, i32, i32*) #1

declare dso_local i32 @ixgbe_dcb_unpack_map(%struct.ixgbe_dcb_config*, i32, i32*) #1

declare dso_local i32 @ixgbe_dcb_hw_ets_config(%struct.ixgbe_hw*, i32 (i32, i32)*, i32 (i32, i32)*, i32*, i32*, i32*) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ixgbe_dcb_unpack_pfc(%struct.ixgbe_dcb_config*, i32*) #1

declare dso_local i32 @ixgbe_dcb_hw_pfc_config(%struct.ixgbe_hw*, i32, i32*) #1

declare dso_local i32 @ixgbe_set_rx_drop_en(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
