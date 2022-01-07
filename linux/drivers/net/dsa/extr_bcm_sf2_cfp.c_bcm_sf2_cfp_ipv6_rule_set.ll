; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_ipv6_rule_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_ipv6_rule_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfp_udf_layout = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.bcm_sf2_priv = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.ethtool_rx_flow_spec = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }
%struct.ethtool_rx_flow_spec_input = type { %struct.ethtool_rx_flow_spec* }
%struct.ethtool_rx_flow_rule = type { i32 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_21__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_27__ }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_25__ }
%struct.TYPE_16__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_18__*, %struct.TYPE_28__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@udf_tcpip6_layout = common dso_local global %struct.cfp_udf_layout zeroinitializer, align 8
@UDF_NUM_SLICES = common dso_local global i32 0, align 4
@RX_CLS_LOC_ANY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@L3_FRAMING_SHIFT = common dso_local global i32 0, align 4
@IPPROTO_SHIFT = common dso_local global i32 0, align 4
@IP_FRAG_SHIFT = common dso_local global i32 0, align 4
@SLICE_NUM_MASK = common dso_local global i32 0, align 4
@OP_SEL_WRITE = common dso_local global i32 0, align 4
@TCAM_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TCAM entry at addr %d failed\0A\00", align 1
@XCESS_ADDR_MASK = common dso_local global i32 0, align 4
@CORE_CFP_CTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i32, i32, %struct.ethtool_rx_flow_spec*)* @bcm_sf2_cfp_ipv6_rule_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_ipv6_rule_set(%struct.bcm_sf2_priv* %0, i32 %1, i32 %2, i32 %3, %struct.ethtool_rx_flow_spec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_sf2_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %12 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.cfp_udf_layout*, align 8
  %16 = alloca %struct.ethtool_rx_flow_rule*, align 8
  %17 = alloca %struct.flow_match_ipv6_addrs, align 8
  %18 = alloca %struct.flow_match_ports, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ethtool_rx_flow_spec* %4, %struct.ethtool_rx_flow_spec** %11, align 8
  %24 = bitcast %struct.ethtool_rx_flow_spec_input* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 8, i1 false)
  store i32 0, i32* %21, align 4
  %25 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %26 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FLOW_EXT, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %5
  %32 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %32, i32* %19, align 4
  br label %38

33:                                               ; preds = %5
  %34 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %34, i32* %19, align 4
  br label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %406

38:                                               ; preds = %33, %31
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  store i32 %45, i32* %20, align 4
  store %struct.cfp_udf_layout* @udf_tcpip6_layout, %struct.cfp_udf_layout** %15, align 8
  %46 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %47 = call i32 @bcm_sf2_get_slice_number(%struct.cfp_udf_layout* %46, i32 0)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @UDF_NUM_SLICES, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %406

54:                                               ; preds = %38
  %55 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %56 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %55, i32 0, i32 0
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bcm_sf2_get_num_udf_slices(i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %65 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RX_CLS_LOC_ANY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %54
  %70 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %71 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %75 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @find_first_zero_bit(i32 %73, i32 %76)
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  br label %84

79:                                               ; preds = %54
  %80 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %81 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %69
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %88 = call i32 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv* %87)
  %89 = icmp ugt i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @ENOSPC, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %406

93:                                               ; preds = %84
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %97 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @set_bit(i32 %95, i32 %99)
  %101 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %102 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %106 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @find_first_zero_bit(i32 %104, i32 %107)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %113 = call i32 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv* %112)
  %114 = icmp ugt i32 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %93
  %116 = load i32, i32* @ENOSPC, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %21, align 4
  br label %397

118:                                              ; preds = %93
  %119 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %120 = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, %struct.ethtool_rx_flow_spec_input* %12, i32 0, i32 0
  store %struct.ethtool_rx_flow_spec* %119, %struct.ethtool_rx_flow_spec** %120, align 8
  %121 = call %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input* %12)
  store %struct.ethtool_rx_flow_rule* %121, %struct.ethtool_rx_flow_rule** %16, align 8
  %122 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %123 = call i64 @IS_ERR(%struct.ethtool_rx_flow_rule* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %127 = call i32 @PTR_ERR(%struct.ethtool_rx_flow_rule* %126)
  store i32 %127, i32* %21, align 4
  br label %397

128:                                              ; preds = %118
  %129 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %130 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @flow_rule_match_ipv6_addrs(i32 %131, %struct.flow_match_ipv6_addrs* %17)
  %133 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %134 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @flow_rule_match_ports(i32 %135, %struct.flow_match_ports* %18)
  %137 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %138 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @bcm_sf2_cfp_udf_set(%struct.bcm_sf2_priv* %137, %struct.cfp_udf_layout* %138, i32 %139)
  %141 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @BIT(i32 %142)
  %144 = call i32 @CORE_CFP_DATA_PORT(i32 7)
  %145 = call i32 @core_writel(%struct.bcm_sf2_priv* %141, i32 %143, i32 %144)
  %146 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %147 = call i32 @CORE_CFP_MASK_PORT(i32 7)
  %148 = call i32 @core_writel(%struct.bcm_sf2_priv* %146, i32 255, i32 %147)
  %149 = load i32, i32* @L3_FRAMING_SHIFT, align 4
  %150 = shl i32 1, %149
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* @IPPROTO_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = or i32 %150, %153
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @IP_FRAG_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  %159 = load i32, i32* %22, align 4
  %160 = call i32 @udf_upper_bits(i32 %159)
  %161 = or i32 %158, %160
  store i32 %161, i32* %23, align 4
  %162 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %163 = load i32, i32* %23, align 4
  %164 = call i32 @CORE_CFP_DATA_PORT(i32 6)
  %165 = call i32 @core_writel(%struct.bcm_sf2_priv* %162, i32 %163, i32 %164)
  %166 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %167 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %166, i32 0, i32 0
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %22, align 4
  %175 = call i32 @udf_upper_bits(i32 %174)
  %176 = or i32 %173, %175
  store i32 %176, i32* %23, align 4
  %177 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %178 = load i32, i32* %23, align 4
  %179 = call i32 @CORE_CFP_MASK_PORT(i32 6)
  %180 = call i32 @core_writel(%struct.bcm_sf2_priv* %177, i32 %178, i32 %179)
  %181 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %182 = load i32, i32* %22, align 4
  %183 = call i32 @udf_lower_bits(i32 %182)
  %184 = shl i32 %183, 24
  %185 = call i32 @CORE_CFP_DATA_PORT(i32 5)
  %186 = call i32 @core_writel(%struct.bcm_sf2_priv* %181, i32 %184, i32 %185)
  %187 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %188 = load i32, i32* %22, align 4
  %189 = call i32 @udf_lower_bits(i32 %188)
  %190 = shl i32 %189, 24
  %191 = call i32 @CORE_CFP_MASK_PORT(i32 5)
  %192 = call i32 @core_writel(%struct.bcm_sf2_priv* %187, i32 %190, i32 %191)
  %193 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %194 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %17, i32 0, i32 1
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %18, i32 0, i32 0
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @bcm_sf2_cfp_slice_ipv6(%struct.bcm_sf2_priv* %193, i32 %199, i32 %203, i32 %204, i32 0)
  %206 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %207 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %17, i32 0, i32 0
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %18, i32 0, i32 1
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SLICE_NUM_MASK, align 4
  %218 = call i32 @bcm_sf2_cfp_slice_ipv6(%struct.bcm_sf2_priv* %206, i32 %212, i32 %216, i32 %217, i32 1)
  %219 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv* %219, i32 %221)
  %223 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %224 = load i32, i32* @OP_SEL_WRITE, align 4
  %225 = load i32, i32* @TCAM_SEL, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %223, i32 %226)
  store i32 %227, i32* %21, align 4
  %228 = load i32, i32* %21, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %128
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %232)
  br label %394

234:                                              ; preds = %128
  %235 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @bcm_sf2_cfp_act_pol_set(%struct.bcm_sf2_priv* %235, i32 %237, i32 %238, i32 %239, i32 %240, i32 0)
  store i32 %241, i32* %21, align 4
  %242 = load i32, i32* %21, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %234
  br label %394

245:                                              ; preds = %234
  %246 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %247 = load i32, i32* %13, align 4
  %248 = add i32 %247, 1
  %249 = call i32 @bcm_sf2_get_slice_number(%struct.cfp_udf_layout* %246, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* @UDF_NUM_SLICES, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %245
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %21, align 4
  br label %394

256:                                              ; preds = %245
  %257 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %258 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %257, i32 0, i32 0
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %258, align 8
  %260 = load i32, i32* %13, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @bcm_sf2_get_num_udf_slices(i32 %264)
  store i32 %265, i32* %22, align 4
  %266 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %267 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %15, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @bcm_sf2_cfp_udf_set(%struct.bcm_sf2_priv* %266, %struct.cfp_udf_layout* %267, i32 %268)
  %270 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %271 = call i32 @CORE_CFP_DATA_PORT(i32 7)
  %272 = call i32 @core_writel(%struct.bcm_sf2_priv* %270, i32 0, i32 %271)
  %273 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %274 = call i32 @CORE_CFP_MASK_PORT(i32 7)
  %275 = call i32 @core_writel(%struct.bcm_sf2_priv* %273, i32 0, i32 %274)
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 24
  %279 = load i32, i32* %22, align 4
  %280 = call i32 @udf_upper_bits(i32 %279)
  %281 = shl i32 %280, 16
  %282 = or i32 %278, %281
  %283 = load i32, i32* %22, align 4
  %284 = call i32 @udf_lower_bits(i32 %283)
  %285 = shl i32 %284, 8
  %286 = or i32 %282, %285
  store i32 %286, i32* %23, align 4
  %287 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %288 = load i32, i32* %23, align 4
  %289 = call i32 @CORE_CFP_DATA_PORT(i32 6)
  %290 = call i32 @core_writel(%struct.bcm_sf2_priv* %287, i32 %288, i32 %289)
  %291 = load i32, i32* @XCESS_ADDR_MASK, align 4
  %292 = shl i32 %291, 24
  %293 = load i32, i32* %22, align 4
  %294 = call i32 @udf_upper_bits(i32 %293)
  %295 = shl i32 %294, 16
  %296 = or i32 %292, %295
  %297 = load i32, i32* %22, align 4
  %298 = call i32 @udf_lower_bits(i32 %297)
  %299 = shl i32 %298, 8
  %300 = or i32 %296, %299
  store i32 %300, i32* %23, align 4
  %301 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %302 = load i32, i32* %23, align 4
  %303 = call i32 @CORE_CFP_MASK_PORT(i32 6)
  %304 = call i32 @core_writel(%struct.bcm_sf2_priv* %301, i32 %302, i32 %303)
  %305 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %306 = call i32 @CORE_CFP_DATA_PORT(i32 5)
  %307 = call i32 @core_writel(%struct.bcm_sf2_priv* %305, i32 0, i32 %306)
  %308 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %309 = call i32 @CORE_CFP_MASK_PORT(i32 5)
  %310 = call i32 @core_writel(%struct.bcm_sf2_priv* %308, i32 0, i32 %309)
  %311 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %312 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %17, i32 0, i32 1
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %18, i32 0, i32 0
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %13, align 4
  %323 = call i32 @bcm_sf2_cfp_slice_ipv6(%struct.bcm_sf2_priv* %311, i32 %317, i32 %321, i32 %322, i32 0)
  %324 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %325 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %17, i32 0, i32 0
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %18, i32 0, i32 0
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @SLICE_NUM_MASK, align 4
  %336 = call i32 @bcm_sf2_cfp_slice_ipv6(%struct.bcm_sf2_priv* %324, i32 %330, i32 %334, i32 %335, i32 1)
  %337 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv* %337, i32 %339)
  %341 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %342 = load i32, i32* @OP_SEL_WRITE, align 4
  %343 = load i32, i32* @TCAM_SEL, align 4
  %344 = or i32 %342, %343
  %345 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %341, i32 %344)
  store i32 %345, i32* %21, align 4
  %346 = load i32, i32* %21, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %256
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %350)
  br label %394

352:                                              ; preds = %256
  %353 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %354 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* %10, align 4
  %359 = call i32 @bcm_sf2_cfp_act_pol_set(%struct.bcm_sf2_priv* %353, i32 %355, i32 %356, i32 %357, i32 %358, i32 1)
  store i32 %359, i32* %21, align 4
  %360 = load i32, i32* %21, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %352
  br label %394

363:                                              ; preds = %352
  %364 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %365 = load i32, i32* @CORE_CFP_CTL_REG, align 4
  %366 = call i32 @core_readl(%struct.bcm_sf2_priv* %364, i32 %365)
  store i32 %366, i32* %23, align 4
  %367 = load i32, i32* %8, align 4
  %368 = call i32 @BIT(i32 %367)
  %369 = load i32, i32* %23, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %23, align 4
  %371 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %372 = load i32, i32* %23, align 4
  %373 = load i32, i32* @CORE_CFP_CTL_REG, align 4
  %374 = call i32 @core_writel(%struct.bcm_sf2_priv* %371, i32 %372, i32 %373)
  %375 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %378 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @set_bit(i32 %376, i32 %380)
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %385 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @set_bit(i32 %383, i32 %387)
  %389 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %392 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %391, i32 0, i32 1
  store i32 %390, i32* %392, align 4
  %393 = load i32, i32* %21, align 4
  store i32 %393, i32* %6, align 4
  br label %406

394:                                              ; preds = %362, %348, %253, %244, %230
  %395 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %396 = call i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule* %395)
  br label %397

397:                                              ; preds = %394, %125, %115
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %401 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @clear_bit(i32 %399, i32 %403)
  %405 = load i32, i32* %21, align 4
  store i32 %405, i32* %6, align 4
  br label %406

406:                                              ; preds = %397, %363, %90, %51, %35
  %407 = load i32, i32* %6, align 4
  ret i32 %407
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @bcm_sf2_get_slice_number(%struct.cfp_udf_layout*, i32) #2

declare dso_local i32 @bcm_sf2_get_num_udf_slices(i32) #2

declare dso_local i32 @find_first_zero_bit(i32, i32) #2

declare dso_local i32 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv*) #2

declare dso_local i32 @set_bit(i32, i32) #2

declare dso_local %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input*) #2

declare dso_local i64 @IS_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @PTR_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @flow_rule_match_ipv6_addrs(i32, %struct.flow_match_ipv6_addrs*) #2

declare dso_local i32 @flow_rule_match_ports(i32, %struct.flow_match_ports*) #2

declare dso_local i32 @bcm_sf2_cfp_udf_set(%struct.bcm_sf2_priv*, %struct.cfp_udf_layout*, i32) #2

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @CORE_CFP_DATA_PORT(i32) #2

declare dso_local i32 @CORE_CFP_MASK_PORT(i32) #2

declare dso_local i32 @udf_upper_bits(i32) #2

declare dso_local i32 @udf_lower_bits(i32) #2

declare dso_local i32 @bcm_sf2_cfp_slice_ipv6(%struct.bcm_sf2_priv*, i32, i32, i32, i32) #2

declare dso_local i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv*, i32) #2

declare dso_local i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @bcm_sf2_cfp_act_pol_set(%struct.bcm_sf2_priv*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #2

declare dso_local i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @clear_bit(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
