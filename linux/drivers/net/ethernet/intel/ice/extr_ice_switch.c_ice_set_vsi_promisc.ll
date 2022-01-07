; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_set_vsi_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_set_vsi_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.ice_fltr_list_entry = type { %struct.ice_fltr_info }
%struct.ice_fltr_info = type { %struct.TYPE_10__, i8*, i32, i8*, i32, %struct.TYPE_8__, i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i8* }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_PROMISC_VLAN_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_VLAN_TX = common dso_local global i32 0, align 4
@ICE_SW_LKUP_PROMISC_VLAN = common dso_local global i8* null, align 8
@ICE_SW_LKUP_PROMISC = common dso_local global i8* null, align 8
@ICE_PROMISC_UCAST_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_UCAST_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_MCAST_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_MCAST_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_BCAST_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_BCAST_TX = common dso_local global i32 0, align 4
@dummy_eth_header = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_FLTR_RX = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_vsi_promisc(%struct.ice_hw* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ice_fltr_list_entry, align 8
  %11 = alloca %struct.ice_fltr_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %23, i32* %5, align 4
  br label %211

24:                                               ; preds = %4
  %25 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @ice_get_hw_vsi_num(%struct.ice_hw* %25, i8* %26)
  store i8* %27, i8** %14, align 8
  %28 = call i32 @memset(%struct.ice_fltr_info* %11, i32 0, i32 64)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ICE_PROMISC_VLAN_RX, align 4
  %31 = load i32, i32* @ICE_PROMISC_VLAN_TX, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load i8*, i8** @ICE_SW_LKUP_PROMISC_VLAN, align 8
  %37 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 6
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @ICE_SW_LKUP_PROMISC_VLAN, align 8
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %16, align 4
  br label %49

44:                                               ; preds = %24
  %45 = load i8*, i8** @ICE_SW_LKUP_PROMISC, align 8
  %46 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 6
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** @ICE_SW_LKUP_PROMISC, align 8
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %44, %35
  br label %50

50:                                               ; preds = %207, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %208

53:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ICE_PROMISC_UCAST_RX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @ICE_PROMISC_UCAST_RX, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  store i32 1, i32* %15, align 4
  br label %118

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ICE_PROMISC_UCAST_TX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @ICE_PROMISC_UCAST_TX, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %117

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ICE_PROMISC_MCAST_RX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @ICE_PROMISC_MCAST_RX, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  store i32 2, i32* %15, align 4
  br label %116

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ICE_PROMISC_MCAST_TX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @ICE_PROMISC_MCAST_TX, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  store i32 2, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %115

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ICE_PROMISC_BCAST_RX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @ICE_PROMISC_BCAST_RX, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  store i32 3, i32* %15, align 4
  br label %114

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ICE_PROMISC_BCAST_TX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @ICE_PROMISC_BCAST_TX, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  store i32 3, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %78
  br label %117

117:                                              ; preds = %116, %68
  br label %118

118:                                              ; preds = %117, %58
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @ICE_PROMISC_VLAN_RX, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @ICE_PROMISC_VLAN_RX, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %139

128:                                              ; preds = %118
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @ICE_PROMISC_VLAN_TX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @ICE_PROMISC_VLAN_TX, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %123
  %140 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %17, align 8
  %144 = load i32, i32* %15, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @eth_broadcast_addr(i32* %147)
  br label %168

149:                                              ; preds = %139
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %167

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %17, align 8
  %157 = load i32, i32* @dummy_eth_header, align 4
  %158 = call i32 @ether_addr_copy(i32* %156, i32 %157)
  %159 = load i32, i32* %15, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32*, i32** %17, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %161, %155
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %146
  %169 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 4
  store i32 0, i32* %169, align 8
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32, i32* @ICE_FLTR_TX, align 4
  %174 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 8
  %177 = load i8*, i8** %14, align 8
  %178 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 3
  store i8* %177, i8** %178, align 8
  br label %190

179:                                              ; preds = %168
  %180 = load i32, i32* @ICE_FLTR_RX, align 4
  %181 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %180
  store i32 %183, i32* %181, align 8
  %184 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %185 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 3
  store i8* %188, i8** %189, align 8
  br label %190

190:                                              ; preds = %179, %172
  %191 = load i32, i32* @ICE_FWD_TO_VSI, align 4
  %192 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 2
  store i32 %191, i32* %192, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 1
  store i8* %193, i8** %194, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %10, i32 0, i32 0
  %199 = bitcast %struct.ice_fltr_info* %198 to i8*
  %200 = bitcast %struct.ice_fltr_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 64, i1 false)
  %201 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @ice_add_rule_internal(%struct.ice_hw* %201, i32 %202, %struct.ice_fltr_list_entry* %10)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  br label %209

207:                                              ; preds = %190
  br label %50

208:                                              ; preds = %50
  br label %209

209:                                              ; preds = %208, %206
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %209, %22
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i8*) #1

declare dso_local i8* @ice_get_hw_vsi_num(%struct.ice_hw*, i8*) #1

declare dso_local i32 @memset(%struct.ice_fltr_info*, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_add_rule_internal(%struct.ice_hw*, i32, %struct.ice_fltr_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
