; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_msg_queue_mac_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_msg_queue_mac_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_4__, %struct.fm10k_intfc* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, i32, i32, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_intfc = type { i32 }
%struct.fm10k_mbx_info = type { i32 }
%struct.fm10k_vf_info = type { i32, i32, i32, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_MAC_VLAN_MSG_VLAN = common dso_local global i64 0, align 8
@FM10K_VLAN_CLEAR = common dso_local global i32 0, align 4
@FM10K_MAC_VLAN_MSG_MAC = common dso_local global i64 0, align 8
@FM10K_MAC_VLAN_MSG_MULTICAST = common dso_local global i64 0, align 8
@FM10K_VF_FLAG_MULTI_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32**, %struct.fm10k_mbx_info*)* @fm10k_iov_msg_queue_mac_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_iov_msg_queue_mac_vlan(%struct.fm10k_hw* %0, i32** %1, %struct.fm10k_mbx_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.fm10k_mbx_info*, align 8
  %8 = alloca %struct.fm10k_vf_info*, align 8
  %9 = alloca %struct.fm10k_intfc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.fm10k_mbx_info* %2, %struct.fm10k_mbx_info** %7, align 8
  %18 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %19 = bitcast %struct.fm10k_mbx_info* %18 to %struct.fm10k_vf_info*
  store %struct.fm10k_vf_info* %19, %struct.fm10k_vf_info** %8, align 8
  %20 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %20, i32 0, i32 1
  %22 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %21, align 8
  store %struct.fm10k_intfc* %22, %struct.fm10k_intfc** %9, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %28 = call i32 @FM10K_VF_FLAG_ENABLED(%struct.fm10k_vf_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %30, %3
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %98, label %35

35:                                               ; preds = %32
  %36 = load i32**, i32*** %6, align 8
  %37 = load i64, i64* @FM10K_MAC_VLAN_MSG_VLAN, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %98

41:                                               ; preds = %35
  %42 = load i32**, i32*** %6, align 8
  %43 = load i64, i64* @FM10K_MAC_VLAN_MSG_VLAN, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @fm10k_tlv_attr_get_u32(i32* %46, i32* %16)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

52:                                               ; preds = %41
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = ashr i32 %63, 16
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %68 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

73:                                               ; preds = %66
  br label %84

74:                                               ; preds = %52
  %75 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %82, %73
  %85 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %86 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (%struct.fm10k_hw.0*, i32, i32, i32)*, i32 (%struct.fm10k_hw.0*, i32, i32, i32)** %88, align 8
  %90 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %91 = bitcast %struct.fm10k_hw* %90 to %struct.fm10k_hw.0*
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %94 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 %89(%struct.fm10k_hw.0* %91, i32 %92, i32 %95, i32 %96)
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %84, %35, %32
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %159, label %101

101:                                              ; preds = %98
  %102 = load i32**, i32*** %6, align 8
  %103 = load i64, i64* @FM10K_MAC_VLAN_MSG_MAC, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %159

107:                                              ; preds = %101
  %108 = load i32**, i32*** %6, align 8
  %109 = load i64, i64* @FM10K_MAC_VLAN_MSG_MAC, align 8
  %110 = getelementptr inbounds i32*, i32** %108, i64 %109
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @fm10k_tlv_attr_get_mac_vlan(i32* %112, i32* %26, i32* %15)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

118:                                              ; preds = %107
  %119 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %120 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @is_valid_ether_addr(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %126 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ether_addr_equal(i32* %26, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

132:                                              ; preds = %124, %118
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %15, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %15, align 4
  %143 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %143, i32 %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %132
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

150:                                              ; preds = %132
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %15, align 4
  %152 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %153 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %154 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %152, i32 %155, i32* %26, i32 %156, i32 %157)
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %150, %101, %98
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %215, label %162

162:                                              ; preds = %159
  %163 = load i32**, i32*** %6, align 8
  %164 = load i64, i64* @FM10K_MAC_VLAN_MSG_MULTICAST, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %215

168:                                              ; preds = %162
  %169 = load i32**, i32*** %6, align 8
  %170 = load i64, i64* @FM10K_MAC_VLAN_MSG_MULTICAST, align 8
  %171 = getelementptr inbounds i32*, i32** %169, i64 %170
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %12, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @fm10k_tlv_attr_get_mac_vlan(i32* %173, i32* %26, i32* %15)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

179:                                              ; preds = %168
  %180 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %181 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FM10K_VF_FLAG_MULTI_ENABLED, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

188:                                              ; preds = %179
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %15, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %15, align 4
  %199 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %199, i32 %200)
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %188
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

206:                                              ; preds = %188
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %15, align 4
  %208 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %9, align 8
  %209 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %210 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %208, i32 %211, i32* %26, i32 %212, i32 %213)
  store i32 %214, i32* %13, align 4
  br label %215

215:                                              ; preds = %206, %162, %159
  %216 = load i32, i32* %13, align 4
  store i32 %216, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %217

217:                                              ; preds = %215, %204, %186, %177, %148, %130, %116, %80, %71, %50
  %218 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FM10K_VF_FLAG_ENABLED(%struct.fm10k_vf_info*) #2

declare dso_local i32 @fm10k_tlv_attr_get_u32(i32*, i32*) #2

declare dso_local i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info*, i32) #2

declare dso_local i32 @fm10k_tlv_attr_get_mac_vlan(i32*, i32*, i32*) #2

declare dso_local i64 @is_valid_ether_addr(i32) #2

declare dso_local i32 @ether_addr_equal(i32*, i32) #2

declare dso_local i32 @fm10k_queue_mac_request(%struct.fm10k_intfc*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
