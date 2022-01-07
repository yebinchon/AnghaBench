; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_assign_default_mac_vlan_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_assign_default_mac_vlan_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.fm10k_vf_info = type { i64, i32, i64, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.fm10k_hw.0*, %struct.TYPE_8__*, i64*)* }
%struct.fm10k_hw.0 = type opaque

@FM10K_ERR_PARAM = common dso_local global i64 0, align 8
@FM10K_VLAN_OVERRIDE = common dso_local global i64 0, align 8
@FM10K_VF_MSG_ID_MAC_VLAN = common dso_local global i32 0, align 4
@FM10K_MAC_VLAN_MSG_DEFAULT_MAC = common dso_local global i32 0, align 4
@FM10K_TXQCTL_VID_SHIFT = common dso_local global i64 0, align 8
@FM10K_TXQCTL_VID_MASK = common dso_local global i64 0, align 8
@FM10K_TXQCTL_TC_SHIFT = common dso_local global i64 0, align 8
@FM10K_TXQCTL_VF = common dso_local global i64 0, align 8
@FM10K_MBX_ERR_NO_MBX = common dso_local global i64 0, align 8
@FM10K_TXDCTL_ENABLE = common dso_local global i64 0, align 8
@FM10K_ERR_DMA_PENDING = common dso_local global i64 0, align 8
@FM10K_TDLEN_ITR_SCALE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_vf_info*)* @fm10k_iov_assign_default_mac_vlan_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_iov_assign_default_mac_vlan_pf(%struct.fm10k_hw* %0, %struct.fm10k_vf_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_vf_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_vf_info* %1, %struct.fm10k_vf_info** %5, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %20 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %21 = icmp ne %struct.fm10k_vf_info* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %24 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %27 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22, %2
  %32 = load i64, i64* @FM10K_ERR_PARAM, align 8
  store i64 %32, i64* %3, align 8
  br label %240

33:                                               ; preds = %22
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %35 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 8
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 32, i32 256
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  %42 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %43 = call i64 @fm10k_queues_per_pool(%struct.fm10k_hw* %42)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %45 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %18, align 8
  %47 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %48 = load i64, i64* %18, align 8
  %49 = call i64 @fm10k_vf_queue_index(%struct.fm10k_hw* %47, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %18, align 8
  %52 = mul nsw i64 %50, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %54 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %33
  %58 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %59 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @FM10K_VLAN_OVERRIDE, align 8
  %63 = or i64 %61, %62
  store i64 %63, i64* %19, align 8
  br label %68

64:                                               ; preds = %33
  %65 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %66 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %19, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %70 = load i32, i32* @FM10K_VF_MSG_ID_MAC_VLAN, align 4
  %71 = call i32 @fm10k_tlv_msg_init(i64* %69, i32 %70)
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %73 = load i32, i32* @FM10K_MAC_VLAN_MSG_DEFAULT_MAC, align 4
  %74 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %75 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %19, align 8
  %78 = call i32 @fm10k_tlv_attr_put_mac_vlan(i64* %72, i32 %73, i64* %76, i64 %77)
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @FM10K_TXQCTL_VID_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load i64, i64* @FM10K_TXQCTL_VID_MASK, align 8
  %83 = and i64 %81, %82
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* @FM10K_TXQCTL_TC_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = load i64, i64* @FM10K_TXQCTL_VF, align 8
  %88 = or i64 %86, %87
  %89 = load i64, i64* %18, align 8
  %90 = or i64 %88, %89
  %91 = load i64, i64* %14, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %105, %68
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @FM10K_TXQCTL(i64 %101)
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %98, i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i64, i64* %11, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %93

108:                                              ; preds = %93
  %109 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %110 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64 (%struct.fm10k_hw.0*, %struct.TYPE_8__*, i64*)*, i64 (%struct.fm10k_hw.0*, %struct.TYPE_8__*, i64*)** %112, align 8
  %114 = icmp ne i64 (%struct.fm10k_hw.0*, %struct.TYPE_8__*, i64*)* %113, null
  br i1 %114, label %115, label %133

115:                                              ; preds = %108
  %116 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %117 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64 (%struct.fm10k_hw.0*, %struct.TYPE_8__*, i64*)*, i64 (%struct.fm10k_hw.0*, %struct.TYPE_8__*, i64*)** %119, align 8
  %121 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %122 = bitcast %struct.fm10k_hw* %121 to %struct.fm10k_hw.0*
  %123 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %124 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %123, i32 0, i32 4
  %125 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %126 = call i64 %120(%struct.fm10k_hw.0* %122, %struct.TYPE_8__* %124, i64* %125)
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* @FM10K_MBX_ERR_NO_MBX, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %115
  %131 = load i64, i64* %17, align 8
  store i64 %131, i64* %3, align 8
  br label %240

132:                                              ; preds = %115
  store i64 0, i64* %17, align 8
  br label %133

133:                                              ; preds = %132, %108
  %134 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @FM10K_TQMAP(i64 %135)
  %137 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %134, i32 %136, i64 0)
  %138 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @FM10K_TXDCTL(i64 %139)
  %141 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %138, i32 %140, i64 0)
  %142 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @FM10K_TXDCTL(i64 %143)
  %145 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %142, i32 %144)
  store i64 %145, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %146

146:                                              ; preds = %162, %133
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* @FM10K_TXDCTL_ENABLE, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  %152 = load i64, i64* %9, align 8
  %153 = icmp eq i64 %152, 10
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i64, i64* @FM10K_ERR_DMA_PENDING, align 8
  store i64 %155, i64* %17, align 8
  br label %233

156:                                              ; preds = %151
  %157 = call i32 @usleep_range(i32 100, i32 200)
  %158 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @FM10K_TXDCTL(i64 %159)
  %161 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %158, i32 %160)
  store i64 %161, i64* %13, align 8
  br label %162

162:                                              ; preds = %156
  %163 = load i64, i64* %9, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %146

165:                                              ; preds = %146
  %166 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %167 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %166, i32 0, i32 3
  %168 = load i64*, i64** %167, align 8
  %169 = call i64 @is_valid_ether_addr(i64* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %212

171:                                              ; preds = %165
  %172 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %173 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 3
  %176 = load i64, i64* %175, align 8
  %177 = shl i64 %176, 24
  %178 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %179 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 4
  %182 = load i64, i64* %181, align 8
  %183 = shl i64 %182, 16
  %184 = or i64 %177, %183
  %185 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %186 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 5
  %189 = load i64, i64* %188, align 8
  %190 = shl i64 %189, 8
  %191 = or i64 %184, %190
  store i64 %191, i64* %15, align 8
  %192 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %193 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = shl i64 %196, 16
  %198 = or i64 4278190080, %197
  %199 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %200 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %199, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = shl i64 %203, 8
  %205 = or i64 %198, %204
  %206 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %207 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %206, i32 0, i32 3
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 2
  %210 = load i64, i64* %209, align 8
  %211 = or i64 %205, %210
  store i64 %211, i64* %16, align 8
  br label %212

212:                                              ; preds = %171, %165
  %213 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %214 = load i64, i64* %8, align 8
  %215 = call i32 @FM10K_TDBAL(i64 %214)
  %216 = load i64, i64* %15, align 8
  %217 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %213, i32 %215, i64 %216)
  %218 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %219 = load i64, i64* %8, align 8
  %220 = call i32 @FM10K_TDBAH(i64 %219)
  %221 = load i64, i64* %16, align 8
  %222 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %218, i32 %220, i64 %221)
  %223 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %224 = load i64, i64* %8, align 8
  %225 = call i32 @FM10K_TDLEN(i64 %224)
  %226 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %227 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @FM10K_TDLEN_ITR_SCALE_SHIFT, align 8
  %231 = shl i64 %229, %230
  %232 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %223, i32 %225, i64 %231)
  br label %233

233:                                              ; preds = %212, %154
  %234 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @FM10K_TQMAP(i64 %235)
  %237 = load i64, i64* %8, align 8
  %238 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %234, i32 %236, i64 %237)
  %239 = load i64, i64* %17, align 8
  store i64 %239, i64* %3, align 8
  br label %240

240:                                              ; preds = %233, %130, %31
  %241 = load i64, i64* %3, align 8
  ret i64 %241
}

declare dso_local i64 @fm10k_queues_per_pool(%struct.fm10k_hw*) #1

declare dso_local i64 @fm10k_vf_queue_index(%struct.fm10k_hw*, i64) #1

declare dso_local i32 @fm10k_tlv_msg_init(i64*, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_mac_vlan(i64*, i32, i64*, i64) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i64) #1

declare dso_local i32 @FM10K_TXQCTL(i64) #1

declare dso_local i32 @FM10K_TQMAP(i64) #1

declare dso_local i32 @FM10K_TXDCTL(i64) #1

declare dso_local i64 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(i64*) #1

declare dso_local i32 @FM10K_TDBAL(i64) #1

declare dso_local i32 @FM10K_TDBAH(i64) #1

declare dso_local i32 @FM10K_TDLEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
