; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_rss_hash_opt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_rss_hash_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_2__*, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Change of RSS hash input set is not supported when MFP mode is enabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_TCP = common dso_local global i64 0, align 8
@I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV6_TCP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV4_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_FRAG_IPV4 = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV6_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_FRAG_IPV6 = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV4_OTHER = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV6_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.ethtool_rxnfc*)* @i40e_set_rss_hash_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_rss_hash_opt(%struct.i40e_pf* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 3
  store %struct.i40e_hw* %12, %struct.i40e_hw** %6, align 8
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %14 = call i32 @I40E_PFQF_HENA(i32 0)
  %15 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %13, i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %18 = call i32 @I40E_PFQF_HENA(i32 1)
  %19 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %17, i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 32
  %22 = or i32 %16, %21
  store i32 %22, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %249

37:                                               ; preds = %2
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RXH_IP_SRC, align 4
  %42 = load i32, i32* @RXH_IP_DST, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RXH_L4_B_0_1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RXH_L4_B_2_3, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %40, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %249

54:                                               ; preds = %37
  %55 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %200 [
    i32 131, label %58
    i32 130, label %72
    i32 129, label %98
    i32 128, label %119
    i32 141, label %140
    i32 139, label %140
    i32 137, label %140
    i32 133, label %140
    i32 140, label %162
    i32 138, label %162
    i32 136, label %162
    i32 132, label %162
    i32 135, label %184
    i32 134, label %192
  ]

58:                                               ; preds = %54
  %59 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_TCP, align 8
  store i64 %59, i64* %8, align 8
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK, align 8
  %68 = call i32 @BIT_ULL(i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %58
  br label %203

72:                                               ; preds = %54
  %73 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_TCP, align 8
  store i64 %73, i64* %8, align 8
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK, align 8
  %82 = call i32 @BIT_ULL(i64 %81)
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK, align 8
  %94 = call i32 @BIT_ULL(i64 %93)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %92, %85
  br label %203

98:                                               ; preds = %54
  %99 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_UDP, align 8
  store i64 %99, i64* %8, align 8
  %100 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %101 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP, align 8
  %108 = call i32 @BIT_ULL(i64 %107)
  %109 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP, align 8
  %110 = call i32 @BIT_ULL(i64 %109)
  %111 = or i32 %108, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106, %98
  %115 = load i64, i64* @I40E_FILTER_PCTYPE_FRAG_IPV4, align 8
  %116 = call i32 @BIT_ULL(i64 %115)
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  br label %203

119:                                              ; preds = %54
  %120 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_UDP, align 8
  store i64 %120, i64* %8, align 8
  %121 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %122 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @I40E_HW_MULTIPLE_TCP_UDP_RSS_PCTYPE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP, align 8
  %129 = call i32 @BIT_ULL(i64 %128)
  %130 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP, align 8
  %131 = call i32 @BIT_ULL(i64 %130)
  %132 = or i32 %129, %131
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %127, %119
  %136 = load i64, i64* @I40E_FILTER_PCTYPE_FRAG_IPV6, align 8
  %137 = call i32 @BIT_ULL(i64 %136)
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %203

140:                                              ; preds = %54, %54, %54, %54
  %141 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %142 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RXH_L4_B_0_1, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RXH_L4_B_2_3, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147, %140
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %249

157:                                              ; preds = %147
  %158 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_OTHER, align 8
  %159 = call i32 @BIT_ULL(i64 %158)
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %203

162:                                              ; preds = %54, %54, %54, %54
  %163 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %164 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @RXH_L4_B_0_1, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %171 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @RXH_L4_B_2_3, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169, %162
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %249

179:                                              ; preds = %169
  %180 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_OTHER, align 8
  %181 = call i32 @BIT_ULL(i64 %180)
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %203

184:                                              ; preds = %54
  %185 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_OTHER, align 8
  %186 = call i32 @BIT_ULL(i64 %185)
  %187 = load i64, i64* @I40E_FILTER_PCTYPE_FRAG_IPV4, align 8
  %188 = call i32 @BIT_ULL(i64 %187)
  %189 = or i32 %186, %188
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %203

192:                                              ; preds = %54
  %193 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_OTHER, align 8
  %194 = call i32 @BIT_ULL(i64 %193)
  %195 = load i64, i64* @I40E_FILTER_PCTYPE_FRAG_IPV6, align 8
  %196 = call i32 @BIT_ULL(i64 %195)
  %197 = or i32 %194, %196
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  br label %203

200:                                              ; preds = %54
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %249

203:                                              ; preds = %192, %184, %179, %157, %135, %114, %97, %71
  %204 = load i64, i64* %8, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %237

206:                                              ; preds = %203
  %207 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @I40E_GLQF_HASH_INSET(i32 0, i64 %208)
  %210 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %207, i32 %209)
  %211 = trunc i64 %210 to i32
  %212 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %213 = load i64, i64* %8, align 8
  %214 = call i32 @I40E_GLQF_HASH_INSET(i32 1, i64 %213)
  %215 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %212, i32 %214)
  %216 = trunc i64 %215 to i32
  %217 = shl i32 %216, 32
  %218 = or i32 %211, %217
  store i32 %218, i32* %10, align 4
  %219 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @i40e_get_rss_hash_bits(%struct.ethtool_rxnfc* %219, i32 %220)
  store i32 %221, i32* %9, align 4
  %222 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @I40E_GLQF_HASH_INSET(i32 0, i64 %223)
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %222, i32 %224, i32 %225)
  %227 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %228 = load i64, i64* %8, align 8
  %229 = call i32 @I40E_GLQF_HASH_INSET(i32 1, i64 %228)
  %230 = load i32, i32* %9, align 4
  %231 = ashr i32 %230, 32
  %232 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %227, i32 %229, i32 %231)
  %233 = load i64, i64* %8, align 8
  %234 = call i32 @BIT_ULL(i64 %233)
  %235 = load i32, i32* %7, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %206, %203
  %238 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %239 = call i32 @I40E_PFQF_HENA(i32 0)
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %238, i32 %239, i32 %240)
  %242 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %243 = call i32 @I40E_PFQF_HENA(i32 1)
  %244 = load i32, i32* %7, align 4
  %245 = ashr i32 %244, 32
  %246 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %242, i32 %243, i32 %245)
  %247 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %248 = call i32 @i40e_flush(%struct.i40e_hw* %247)
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %237, %200, %176, %154, %51, %29
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i64 @i40e_read_rx_ctl(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PFQF_HENA(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @I40E_GLQF_HASH_INSET(i32, i64) #1

declare dso_local i32 @i40e_get_rss_hash_bits(%struct.ethtool_rxnfc*, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
