; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_qfilters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_qfilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32 }
%struct.vfpf_set_q_filters_tlv = type { i32, i32, i32, i32, i32 }
%struct.bnx2x_vf_mac_vlan_filters = type { i32 }
%struct.pf_vf_bulletin_content = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vfpf_set_q_filters_tlv }

@VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED = common dso_local global i32 0, align 4
@VFPF_VLAN_MAC_FILTER = common dso_local global i32 0, align 4
@VFPF_MAC_FILTER = common dso_local global i32 0, align 4
@VFPF_VLAN_FILTER = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_RX_MASK_CHANGED = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_NONE = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_UNICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@VLAN_VALID = common dso_local global i32 0, align 4
@VF_CFG_VLAN_FILTER = common dso_local global i32 0, align 4
@VFPF_RX_MASK_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_MULTICAST_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"QFILTERS[%d:%d] error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_mbx_qfilters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_mbx_qfilters(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %7 = alloca %struct.bnx2x_vf_mac_vlan_filters*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pf_vf_bulletin_content*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_6__* @BP_VF_MBX(%struct.bnx2x* %10, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %18, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %19 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %2
  store %struct.bnx2x_vf_mac_vlan_filters* null, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %28 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %29 = load i32, i32* @VFPF_VLAN_MAC_FILTER, align 4
  %30 = call i32 @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %26, %struct.bnx2x_virtf* %27, %struct.vfpf_set_q_filters_tlv* %28, %struct.bnx2x_vf_mac_vlan_filters** %7, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %182

34:                                               ; preds = %25
  %35 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %36 = icmp ne %struct.bnx2x_vf_mac_vlan_filters* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %40 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %41 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %42 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bnx2x_vf_mac_vlan_config_list(%struct.bnx2x* %38, %struct.bnx2x_virtf* %39, %struct.bnx2x_vf_mac_vlan_filters* %40, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %182

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %34
  store %struct.bnx2x_vf_mac_vlan_filters* null, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %52 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %53 = load i32, i32* @VFPF_MAC_FILTER, align 4
  %54 = call i32 @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %50, %struct.bnx2x_virtf* %51, %struct.vfpf_set_q_filters_tlv* %52, %struct.bnx2x_vf_mac_vlan_filters** %7, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %182

58:                                               ; preds = %49
  %59 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %60 = icmp ne %struct.bnx2x_vf_mac_vlan_filters* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %63 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %64 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %65 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %66 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bnx2x_vf_mac_vlan_config_list(%struct.bnx2x* %62, %struct.bnx2x_virtf* %63, %struct.bnx2x_vf_mac_vlan_filters* %64, i32 %67, i32 0)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %182

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %58
  store %struct.bnx2x_vf_mac_vlan_filters* null, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %76 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %77 = load i32, i32* @VFPF_VLAN_FILTER, align 4
  %78 = call i32 @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %74, %struct.bnx2x_virtf* %75, %struct.vfpf_set_q_filters_tlv* %76, %struct.bnx2x_vf_mac_vlan_filters** %7, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %182

82:                                               ; preds = %73
  %83 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %84 = icmp ne %struct.bnx2x_vf_mac_vlan_filters* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %88 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %7, align 8
  %89 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %90 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bnx2x_vf_mac_vlan_config_list(%struct.bnx2x* %86, %struct.bnx2x_virtf* %87, %struct.bnx2x_vf_mac_vlan_filters* %88, i32 %91, i32 0)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %182

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %2
  %99 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %100 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VFPF_SET_Q_FILTERS_RX_MASK_CHANGED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %160

105:                                              ; preds = %98
  store i64 0, i64* %8, align 8
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %108 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %106, i32 %109)
  store %struct.pf_vf_bulletin_content* %110, %struct.pf_vf_bulletin_content** %9, align 8
  %111 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %112 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VFPF_RX_MASK_ACCEPT_NONE, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %118 = call i32 @__set_bit(i32 %117, i64* %8)
  %119 = load i32, i32* @BNX2X_ACCEPT_MULTICAST, align 4
  %120 = call i32 @__set_bit(i32 %119, i64* %8)
  %121 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %122 = call i32 @__set_bit(i32 %121, i64* %8)
  br label %123

123:                                              ; preds = %116, %105
  %124 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %9, align 8
  %125 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @VLAN_VALID, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %123
  %132 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %133 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @VF_CFG_VLAN_FILTER, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %140 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @VFPF_RX_MASK_ACCEPT_ANY_VLAN, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138, %131
  %146 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %147 = call i32 @__set_bit(i32 %146, i64* %8)
  br label %148

148:                                              ; preds = %145, %138, %123
  %149 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %150 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %151 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %152 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @bnx2x_vf_rxmode(%struct.bnx2x* %149, %struct.bnx2x_virtf* %150, i32 %153, i64 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %182

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %98
  %161 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %162 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @VFPF_SET_Q_FILTERS_MULTICAST_CHANGED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %160
  %168 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %169 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %170 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %171 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %174 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @bnx2x_vf_mcast(%struct.bnx2x* %168, %struct.bnx2x_virtf* %169, i32 %172, i32 %175, i32 0)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %182

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180, %160
  br label %182

182:                                              ; preds = %181, %179, %158, %95, %81, %71, %57, %47, %33
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %187 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %6, align 8
  %190 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %185, %182
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.TYPE_6__* @BP_VF_MBX(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*, %struct.bnx2x_vf_mac_vlan_filters**, i32) #1

declare dso_local i32 @bnx2x_vf_mac_vlan_config_list(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mac_vlan_filters*, i32, i32) #1

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vf_rxmode(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i64) #1

declare dso_local i32 @bnx2x_vf_mcast(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
