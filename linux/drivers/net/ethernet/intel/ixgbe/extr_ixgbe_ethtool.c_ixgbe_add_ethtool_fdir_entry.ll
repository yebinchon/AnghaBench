; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_add_ethtool_fdir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_add_ethtool_fdir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_13__**, %struct.ixgbe_hw }
%struct.TYPE_13__ = type { i32 }
%struct.ixgbe_hw = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, i32, i32, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.ixgbe_fdir_filter = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i8, i32, i32, i32, i32, i32*, i32* }
%union.ixgbe_atr_input = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i8, i32, i32, i32, i32, i32*, i32* }

@IXGBE_FLAG_FDIR_PERFECT_CAPABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@IXGBE_FDIR_DROP_QUEUE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Location out of range\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unrecognized flow type\0A\00", align 1
@IXGBE_ATR_L4TYPE_IPV6_MASK = common dso_local global i32 0, align 4
@IXGBE_ATR_L4TYPE_MASK = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_IPV4 = common dso_local global i64 0, align 8
@FLOW_EXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Error writing mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Only one mask supported per port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*)* @ixgbe_add_ethtool_fdir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_add_ethtool_fdir_entry(%struct.ixgbe_adapter* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ixgbe_fdir_filter*, align 8
  %9 = alloca %union.ixgbe_atr_input, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %16, %struct.ethtool_rx_flow_spec** %6, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 9
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %7, align 8
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %370

28:                                               ; preds = %2
  %29 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** @IXGBE_FDIR_DROP_QUEUE, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %10, align 4
  br label %100

37:                                               ; preds = %28
  %38 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ethtool_get_flow_spec_ring(i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ethtool_get_flow_spec_ring_vf(i64 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %370

57:                                               ; preds = %48, %37
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %370

75:                                               ; preds = %66, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 8
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  br label %99

88:                                               ; preds = %76
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 %91, %94
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %88, %79
  br label %100

100:                                              ; preds = %99, %34
  %101 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %102 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 1024, %106
  %108 = sub nsw i32 %107, 2
  %109 = icmp sge i32 %103, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load i32, i32* @drv, align 4
  %112 = call i32 @e_err(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %370

115:                                              ; preds = %100
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call %struct.ixgbe_fdir_filter* @kzalloc(i32 64, i32 %116)
  store %struct.ixgbe_fdir_filter* %117, %struct.ixgbe_fdir_filter** %8, align 8
  %118 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %119 = icmp ne %struct.ixgbe_fdir_filter* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %370

123:                                              ; preds = %115
  %124 = call i32 @memset(%union.ixgbe_atr_input* %9, i32 0, i32 40)
  %125 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %126 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %129 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %131 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %132 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = call i32 @ixgbe_flowspec_to_flow_type(%struct.ethtool_rx_flow_spec* %130, i64* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %123
  %138 = load i32, i32* @drv, align 4
  %139 = call i32 @e_err(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %365

140:                                              ; preds = %123
  %141 = load i32, i32* @IXGBE_ATR_L4TYPE_IPV6_MASK, align 4
  %142 = load i32, i32* @IXGBE_ATR_L4TYPE_MASK, align 4
  %143 = or i32 %141, %142
  %144 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %147 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @IXGBE_ATR_FLOW_TYPE_IPV4, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %140
  %154 = load i32, i32* @IXGBE_ATR_L4TYPE_IPV6_MASK, align 4
  %155 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %140
  %160 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %161 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %166 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 7
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %164, i32* %170, align 4
  %171 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %172 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 7
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %175, i32* %179, align 4
  %180 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %181 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %186 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 %184, i32* %190, align 4
  %191 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %192 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %195, i32* %199, align 4
  %200 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %201 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %206 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 5
  store i32 %204, i32* %208, align 8
  %209 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %210 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  %216 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %217 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %222 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 4
  store i32 %220, i32* %224, align 4
  %225 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %226 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  %232 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %233 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @FLOW_EXT, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %289

238:                                              ; preds = %159
  %239 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %240 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @ntohl(i32 %244)
  %246 = trunc i64 %245 to i8
  %247 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %248 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  store i8 %246, i8* %250, align 8
  %251 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %252 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @ntohl(i32 %256)
  %258 = trunc i64 %257 to i8
  %259 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  store i8 %258, i8* %260, align 4
  %261 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %262 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %266 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 3
  store i32 %264, i32* %268, align 8
  %269 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %270 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 4
  %275 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %276 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %280 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 2
  store i32 %278, i32* %282, align 4
  %283 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %284 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_20__*
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %238, %159
  %290 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %291 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load i8*, i8** @IXGBE_FDIR_DROP_QUEUE, align 8
  %297 = ptrtoint i8* %296 to i64
  %298 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %299 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %298, i32 0, i32 1
  store i64 %297, i64* %299, align 8
  br label %306

300:                                              ; preds = %289
  %301 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %302 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %305 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %304, i32 0, i32 1
  store i64 %303, i64* %305, align 8
  br label %306

306:                                              ; preds = %300, %295
  %307 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %308 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %307, i32 0, i32 5
  %309 = call i32 @spin_lock(i32* %308)
  %310 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %311 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %310, i32 0, i32 7
  %312 = call i64 @hlist_empty(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %306
  %315 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %316 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %315, i32 0, i32 6
  %317 = call i32 @memcpy(i32* %316, %union.ixgbe_atr_input* %9, i32 40)
  %318 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %319 = call i32 @ixgbe_fdir_set_input_mask_82599(%struct.ixgbe_hw* %318, %union.ixgbe_atr_input* %9)
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %11, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %314
  %323 = load i32, i32* @drv, align 4
  %324 = call i32 @e_err(i32 %323, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %361

325:                                              ; preds = %314
  br label %335

326:                                              ; preds = %306
  %327 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %328 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %327, i32 0, i32 6
  %329 = call i64 @memcmp(i32* %328, %union.ixgbe_atr_input* %9, i32 40)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = load i32, i32* @drv, align 4
  %333 = call i32 @e_err(i32 %332, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %361

334:                                              ; preds = %326
  br label %335

335:                                              ; preds = %334, %325
  %336 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %337 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %336, i32 0, i32 2
  %338 = call i32 @ixgbe_atr_compute_perfect_hash_82599(%struct.TYPE_12__* %337, %union.ixgbe_atr_input* %9)
  %339 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %340 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %341 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %340, i32 0, i32 2
  %342 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %343 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %10, align 4
  %346 = call i32 @ixgbe_fdir_write_perfect_filter_82599(%struct.ixgbe_hw* %339, %struct.TYPE_12__* %341, i32 %344, i32 %345)
  store i32 %346, i32* %11, align 4
  %347 = load i32, i32* %11, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %335
  br label %361

350:                                              ; preds = %335
  %351 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %352 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %353 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %354 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter* %351, %struct.ixgbe_fdir_filter* %352, i32 %355)
  %357 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %358 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %357, i32 0, i32 5
  %359 = call i32 @spin_unlock(i32* %358)
  %360 = load i32, i32* %11, align 4
  store i32 %360, i32* %3, align 4
  br label %370

361:                                              ; preds = %349, %331, %322
  %362 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %363 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %362, i32 0, i32 5
  %364 = call i32 @spin_unlock(i32* %363)
  br label %365

365:                                              ; preds = %361, %137
  %366 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %367 = call i32 @kfree(%struct.ixgbe_fdir_filter* %366)
  %368 = load i32, i32* @EINVAL, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %3, align 4
  br label %370

370:                                              ; preds = %365, %350, %120, %110, %72, %54, %25
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i64 @ethtool_get_flow_spec_ring(i64) #1

declare dso_local i32 @ethtool_get_flow_spec_ring_vf(i64) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local %struct.ixgbe_fdir_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%union.ixgbe_atr_input*, i32, i32) #1

declare dso_local i32 @ixgbe_flowspec_to_flow_type(%struct.ethtool_rx_flow_spec*, i64*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @memcpy(i32*, %union.ixgbe_atr_input*, i32) #1

declare dso_local i32 @ixgbe_fdir_set_input_mask_82599(%struct.ixgbe_hw*, %union.ixgbe_atr_input*) #1

declare dso_local i64 @memcmp(i32*, %union.ixgbe_atr_input*, i32) #1

declare dso_local i32 @ixgbe_atr_compute_perfect_hash_82599(%struct.TYPE_12__*, %union.ixgbe_atr_input*) #1

declare dso_local i32 @ixgbe_fdir_write_perfect_filter_82599(%struct.ixgbe_hw*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter*, %struct.ixgbe_fdir_filter*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ixgbe_fdir_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
