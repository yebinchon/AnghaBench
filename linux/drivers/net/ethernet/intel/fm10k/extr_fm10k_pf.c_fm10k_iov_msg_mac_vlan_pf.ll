; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_msg_mac_vlan_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_msg_mac_vlan_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, i32, i32, i32)*, i32 (%struct.fm10k_hw.1*, i32, i32*, i32, i32, i32)*, i32 (%struct.fm10k_hw.2*, i32, i32*, i32, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_hw.2 = type opaque
%struct.fm10k_mbx_info = type { i32 }
%struct.fm10k_vf_info = type { i32, i32, i32, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_MAC_VLAN_MSG_VLAN = common dso_local global i64 0, align 8
@FM10K_VLAN_CLEAR = common dso_local global i32 0, align 4
@FM10K_MAC_VLAN_MSG_MAC = common dso_local global i64 0, align 8
@FM10K_MAC_VLAN_MSG_MULTICAST = common dso_local global i64 0, align 8
@FM10K_VF_FLAG_MULTI_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_iov_msg_mac_vlan_pf(%struct.fm10k_hw* %0, i32** %1, %struct.fm10k_mbx_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.fm10k_mbx_info*, align 8
  %8 = alloca %struct.fm10k_vf_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.fm10k_mbx_info* %2, %struct.fm10k_mbx_info** %7, align 8
  %17 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %18 = bitcast %struct.fm10k_mbx_info* %17 to %struct.fm10k_vf_info*
  store %struct.fm10k_vf_info* %18, %struct.fm10k_vf_info** %8, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %24 = call i32 @FM10K_VF_FLAG_ENABLED(%struct.fm10k_vf_info* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %3
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %94, label %31

31:                                               ; preds = %28
  %32 = load i32**, i32*** %6, align 8
  %33 = load i64, i64* @FM10K_MAC_VLAN_MSG_VLAN, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %94

37:                                               ; preds = %31
  %38 = load i32**, i32*** %6, align 8
  %39 = load i64, i64* @FM10K_MAC_VLAN_MSG_VLAN, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @fm10k_tlv_attr_get_u32(i32* %42, i32* %15)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

48:                                               ; preds = %37
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %15, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = ashr i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %64 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

69:                                               ; preds = %62
  br label %80

70:                                               ; preds = %48
  %71 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %78, %69
  %81 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %82 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32 (%struct.fm10k_hw.0*, i32, i32, i32)*, i32 (%struct.fm10k_hw.0*, i32, i32, i32)** %84, align 8
  %86 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %87 = bitcast %struct.fm10k_hw* %86 to %struct.fm10k_hw.0*
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %90 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 %85(%struct.fm10k_hw.0* %87, i32 %88, i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %80, %31, %28
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %161, label %97

97:                                               ; preds = %94
  %98 = load i32**, i32*** %6, align 8
  %99 = load i64, i64* @FM10K_MAC_VLAN_MSG_MAC, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %161

103:                                              ; preds = %97
  %104 = load i32**, i32*** %6, align 8
  %105 = load i64, i64* @FM10K_MAC_VLAN_MSG_MAC, align 8
  %106 = getelementptr inbounds i32*, i32** %104, i64 %105
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @fm10k_tlv_attr_get_mac_vlan(i32* %108, i32* %22, i32* %14)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

114:                                              ; preds = %103
  %115 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %116 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @is_valid_ether_addr(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %122 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ether_addr_equal(i32* %22, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %127, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

128:                                              ; preds = %120, %114
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %14, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %128
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

146:                                              ; preds = %128
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %14, align 4
  %148 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %149 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32 (%struct.fm10k_hw.1*, i32, i32*, i32, i32, i32)*, i32 (%struct.fm10k_hw.1*, i32, i32*, i32, i32, i32)** %151, align 8
  %153 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %154 = bitcast %struct.fm10k_hw* %153 to %struct.fm10k_hw.1*
  %155 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %156 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 %152(%struct.fm10k_hw.1* %154, i32 %157, i32* %22, i32 %158, i32 %159, i32 0)
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %146, %97, %94
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %223, label %164

164:                                              ; preds = %161
  %165 = load i32**, i32*** %6, align 8
  %166 = load i64, i64* @FM10K_MAC_VLAN_MSG_MULTICAST, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %223

170:                                              ; preds = %164
  %171 = load i32**, i32*** %6, align 8
  %172 = load i64, i64* @FM10K_MAC_VLAN_MSG_MULTICAST, align 8
  %173 = getelementptr inbounds i32*, i32** %171, i64 %172
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %11, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @fm10k_tlv_attr_get_mac_vlan(i32* %175, i32* %22, i32* %14)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

181:                                              ; preds = %170
  %182 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %183 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @FM10K_VF_FLAG_MULTI_ENABLED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %189, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

190:                                              ; preds = %181
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %14, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %201, i32 %202)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %190
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

208:                                              ; preds = %190
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %14, align 4
  %210 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %211 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i32 (%struct.fm10k_hw.2*, i32, i32*, i32, i32)*, i32 (%struct.fm10k_hw.2*, i32, i32*, i32, i32)** %213, align 8
  %215 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %216 = bitcast %struct.fm10k_hw* %215 to %struct.fm10k_hw.2*
  %217 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %218 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i32 %214(%struct.fm10k_hw.2* %216, i32 %219, i32* %22, i32 %220, i32 %221)
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %208, %164, %161
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %225

225:                                              ; preds = %223, %206, %188, %179, %144, %126, %112, %76, %67, %46
  %226 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FM10K_VF_FLAG_ENABLED(%struct.fm10k_vf_info*) #2

declare dso_local i32 @fm10k_tlv_attr_get_u32(i32*, i32*) #2

declare dso_local i32 @fm10k_iov_select_vid(%struct.fm10k_vf_info*, i32) #2

declare dso_local i32 @fm10k_tlv_attr_get_mac_vlan(i32*, i32*, i32*) #2

declare dso_local i64 @is_valid_ether_addr(i32) #2

declare dso_local i32 @ether_addr_equal(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
