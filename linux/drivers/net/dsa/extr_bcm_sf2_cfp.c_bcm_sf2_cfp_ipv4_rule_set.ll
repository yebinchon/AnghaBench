; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_ipv4_rule_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_ipv4_rule_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfp_udf_layout = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bcm_sf2_priv = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ethtool_rx_flow_spec = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ethtool_rx_flow_spec_input = type { %struct.ethtool_rx_flow_spec* }
%struct.ethtool_rx_flow_rule = type { i32 }
%struct.flow_match_ipv4_addrs = type { i32, i32 }
%struct.flow_match_ports = type { i32, i32 }
%struct.flow_match_ip = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RX_CLS_LOC_ANY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@udf_tcpip4_layout = common dso_local global %struct.cfp_udf_layout zeroinitializer, align 8
@UDF_NUM_SLICES = common dso_local global i32 0, align 4
@IPTOS_SHIFT = common dso_local global i32 0, align 4
@IPPROTO_SHIFT = common dso_local global i32 0, align 4
@IP_FRAG_SHIFT = common dso_local global i32 0, align 4
@SLICE_NUM_MASK = common dso_local global i32 0, align 4
@OP_SEL_WRITE = common dso_local global i32 0, align 4
@TCAM_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TCAM entry at addr %d failed\0A\00", align 1
@CORE_CFP_CTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i32, i32, %struct.ethtool_rx_flow_spec*)* @bcm_sf2_cfp_ipv4_rule_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_ipv4_rule_set(%struct.bcm_sf2_priv* %0, i32 %1, i32 %2, i32 %3, %struct.ethtool_rx_flow_spec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_sf2_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %12 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %13 = alloca %struct.cfp_udf_layout*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ethtool_rx_flow_rule*, align 8
  %17 = alloca %struct.flow_match_ipv4_addrs, align 4
  %18 = alloca %struct.flow_match_ports, align 4
  %19 = alloca %struct.flow_match_ip, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ethtool_rx_flow_spec* %4, %struct.ethtool_rx_flow_spec** %11, align 8
  %25 = bitcast %struct.ethtool_rx_flow_spec_input* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 8, i1 false)
  %26 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FLOW_EXT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  switch i32 %31, label %36 [
    i32 129, label %32
    i32 128, label %34
  ]

32:                                               ; preds = %5
  %33 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %33, i32* %20, align 4
  br label %39

34:                                               ; preds = %5
  %35 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %35, i32* %20, align 4
  br label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %240

39:                                               ; preds = %34, %32
  %40 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %41 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  store i32 %46, i32* %21, align 4
  %47 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %48 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RX_CLS_LOC_ANY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %54 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %58 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @find_first_zero_bit(i32 %56, i32 %59)
  store i32 %60, i32* %15, align 4
  br label %65

61:                                               ; preds = %39
  %62 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %63 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %68 = call i32 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv* %67)
  %69 = icmp ugt i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %240

73:                                               ; preds = %65
  %74 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %75 = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, %struct.ethtool_rx_flow_spec_input* %12, i32 0, i32 0
  store %struct.ethtool_rx_flow_spec* %74, %struct.ethtool_rx_flow_spec** %75, align 8
  %76 = call %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input* %12)
  store %struct.ethtool_rx_flow_rule* %76, %struct.ethtool_rx_flow_rule** %16, align 8
  %77 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %78 = call i64 @IS_ERR(%struct.ethtool_rx_flow_rule* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %82 = call i32 @PTR_ERR(%struct.ethtool_rx_flow_rule* %81)
  store i32 %82, i32* %6, align 4
  br label %240

83:                                               ; preds = %73
  %84 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %85 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @flow_rule_match_ipv4_addrs(i32 %86, %struct.flow_match_ipv4_addrs* %17)
  %88 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %89 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @flow_rule_match_ports(i32 %90, %struct.flow_match_ports* %18)
  %92 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %93 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @flow_rule_match_ip(i32 %94, %struct.flow_match_ip* %19)
  store %struct.cfp_udf_layout* @udf_tcpip4_layout, %struct.cfp_udf_layout** %13, align 8
  %96 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %13, align 8
  %97 = call i32 @bcm_sf2_get_slice_number(%struct.cfp_udf_layout* %96, i32 0)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @UDF_NUM_SLICES, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %24, align 4
  br label %236

104:                                              ; preds = %83
  %105 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %13, align 8
  %106 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bcm_sf2_get_num_udf_slices(i32 %112)
  store i32 %113, i32* %22, align 4
  %114 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %115 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @bcm_sf2_cfp_udf_set(%struct.bcm_sf2_priv* %114, %struct.cfp_udf_layout* %115, i32 %116)
  %118 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = call i32 @CORE_CFP_DATA_PORT(i32 7)
  %122 = call i32 @core_writel(%struct.bcm_sf2_priv* %118, i32 %120, i32 %121)
  %123 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %124 = call i32 @CORE_CFP_MASK_PORT(i32 7)
  %125 = call i32 @core_writel(%struct.bcm_sf2_priv* %123, i32 255, i32 %124)
  %126 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %127 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %19, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IPTOS_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* @IPPROTO_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = or i32 %132, %135
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* @IP_FRAG_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %136, %139
  %141 = load i32, i32* %22, align 4
  %142 = call i32 @udf_upper_bits(i32 %141)
  %143 = or i32 %140, %142
  %144 = call i32 @CORE_CFP_DATA_PORT(i32 6)
  %145 = call i32 @core_writel(%struct.bcm_sf2_priv* %126, i32 %143, i32 %144)
  %146 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %147 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %13, align 8
  %148 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %22, align 4
  %156 = call i32 @udf_upper_bits(i32 %155)
  %157 = or i32 %154, %156
  %158 = call i32 @CORE_CFP_MASK_PORT(i32 6)
  %159 = call i32 @core_writel(%struct.bcm_sf2_priv* %146, i32 %157, i32 %158)
  %160 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %161 = load i32, i32* %22, align 4
  %162 = call i32 @udf_lower_bits(i32 %161)
  %163 = shl i32 %162, 24
  %164 = call i32 @CORE_CFP_DATA_PORT(i32 5)
  %165 = call i32 @core_writel(%struct.bcm_sf2_priv* %160, i32 %163, i32 %164)
  %166 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @udf_lower_bits(i32 %167)
  %169 = shl i32 %168, 24
  %170 = call i32 @CORE_CFP_MASK_PORT(i32 5)
  %171 = call i32 @core_writel(%struct.bcm_sf2_priv* %166, i32 %169, i32 %170)
  %172 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %173 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %17, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %18, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @bcm_sf2_cfp_slice_ipv4(%struct.bcm_sf2_priv* %172, i32 %174, i32 %176, i32 %177, i32 0)
  %179 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %180 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %17, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %18, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @SLICE_NUM_MASK, align 4
  %185 = call i32 @bcm_sf2_cfp_slice_ipv4(%struct.bcm_sf2_priv* %179, i32 %181, i32 %183, i32 %184, i32 1)
  %186 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv* %186, i32 %187)
  %189 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %190 = load i32, i32* @OP_SEL_WRITE, align 4
  %191 = load i32, i32* @TCAM_SEL, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %189, i32 %192)
  store i32 %193, i32* %24, align 4
  %194 = load i32, i32* %24, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %104
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %197)
  br label %236

199:                                              ; preds = %104
  %200 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @bcm_sf2_cfp_act_pol_set(%struct.bcm_sf2_priv* %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 1)
  store i32 %205, i32* %24, align 4
  %206 = load i32, i32* %24, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %199
  br label %236

209:                                              ; preds = %199
  %210 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %211 = load i32, i32* @CORE_CFP_CTL_REG, align 4
  %212 = call i32 @core_readl(%struct.bcm_sf2_priv* %210, i32 %211)
  store i32 %212, i32* %23, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @BIT(i32 %213)
  %215 = load i32, i32* %23, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %23, align 4
  %217 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %218 = load i32, i32* %23, align 4
  %219 = load i32, i32* @CORE_CFP_CTL_REG, align 4
  %220 = call i32 @core_writel(%struct.bcm_sf2_priv* %217, i32 %218, i32 %219)
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %223 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @set_bit(i32 %221, i32 %225)
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %229 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @set_bit(i32 %227, i32 %231)
  %233 = load i32, i32* %15, align 4
  %234 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %11, align 8
  %235 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  store i32 0, i32* %6, align 4
  br label %240

236:                                              ; preds = %208, %196, %101
  %237 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %16, align 8
  %238 = call i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule* %237)
  %239 = load i32, i32* %24, align 4
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %236, %209, %80, %70, %36
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @find_first_zero_bit(i32, i32) #2

declare dso_local i32 @bcm_sf2_cfp_rule_size(%struct.bcm_sf2_priv*) #2

declare dso_local %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input*) #2

declare dso_local i64 @IS_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @PTR_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @flow_rule_match_ipv4_addrs(i32, %struct.flow_match_ipv4_addrs*) #2

declare dso_local i32 @flow_rule_match_ports(i32, %struct.flow_match_ports*) #2

declare dso_local i32 @flow_rule_match_ip(i32, %struct.flow_match_ip*) #2

declare dso_local i32 @bcm_sf2_get_slice_number(%struct.cfp_udf_layout*, i32) #2

declare dso_local i32 @bcm_sf2_get_num_udf_slices(i32) #2

declare dso_local i32 @bcm_sf2_cfp_udf_set(%struct.bcm_sf2_priv*, %struct.cfp_udf_layout*, i32) #2

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @CORE_CFP_DATA_PORT(i32) #2

declare dso_local i32 @CORE_CFP_MASK_PORT(i32) #2

declare dso_local i32 @udf_upper_bits(i32) #2

declare dso_local i32 @udf_lower_bits(i32) #2

declare dso_local i32 @bcm_sf2_cfp_slice_ipv4(%struct.bcm_sf2_priv*, i32, i32, i32, i32) #2

declare dso_local i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv*, i32) #2

declare dso_local i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @bcm_sf2_cfp_act_pol_set(%struct.bcm_sf2_priv*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #2

declare dso_local i32 @set_bit(i32, i32) #2

declare dso_local i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
