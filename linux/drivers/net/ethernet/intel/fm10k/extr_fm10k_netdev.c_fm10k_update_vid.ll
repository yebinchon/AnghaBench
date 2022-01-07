; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_update_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_update_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.fm10k_intfc = type { i32, i32, i32, i32, i32, %struct.fm10k_ring**, %struct.fm10k_hw, %struct.fm10k_l2_accel* }
%struct.fm10k_ring = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.fm10k_l2_accel = type { i32, i32, %struct.net_device** }

@VLAN_N_VID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FM10K_VLAN_CLEAR = common dso_local global i32 0, align 4
@__FM10K_DOWN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@fm10k_uc_vlan_unsync = common dso_local global i32 0, align 4
@fm10k_mc_vlan_unsync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @fm10k_update_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_update_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm10k_intfc*, align 8
  %9 = alloca %struct.fm10k_l2_accel*, align 8
  %10 = alloca %struct.fm10k_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fm10k_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %17)
  store %struct.fm10k_intfc* %18, %struct.fm10k_intfc** %8, align 8
  %19 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %20 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %19, i32 0, i32 7
  %21 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %20, align 8
  store %struct.fm10k_l2_accel* %21, %struct.fm10k_l2_accel** %9, align 8
  %22 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %23 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %22, i32 0, i32 6
  store %struct.fm10k_hw* %23, %struct.fm10k_hw** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %225

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @VLAN_N_VID, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %225

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.fm10k_hw*, %struct.fm10k_hw** %10, align 8
  %39 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %225

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %49 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @set_bit(i32 %47, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %57 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @clear_bit(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %46
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %101, %60
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %64 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %69 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %68, i32 0, i32 5
  %70 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %70, i64 %72
  %74 = load %struct.fm10k_ring*, %struct.fm10k_ring** %73, align 8
  store %struct.fm10k_ring* %74, %struct.fm10k_ring** %14, align 8
  %75 = load %struct.fm10k_ring*, %struct.fm10k_ring** %14, align 8
  %76 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VLAN_N_VID, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %77, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %83 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @test_bit(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %67
  %88 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %89 = load %struct.fm10k_ring*, %struct.fm10k_ring** %14, align 8
  %90 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %100

93:                                               ; preds = %67
  %94 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.fm10k_ring*, %struct.fm10k_ring** %14, align 8
  %97 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %87
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %61

104:                                              ; preds = %61
  %105 = load %struct.fm10k_hw*, %struct.fm10k_hw** %10, align 8
  %106 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %225

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.fm10k_hw*, %struct.fm10k_hw** %10, align 8
  %117 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %225

122:                                              ; preds = %114, %111
  %123 = load i32, i32* @__FM10K_DOWN, align 4
  %124 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %125 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @test_bit(i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %225

130:                                              ; preds = %122
  %131 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %132 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %131)
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @IFF_PROMISC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %130
  %140 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc* %140, i32 %141, i32 0, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %221

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %130
  %149 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %150 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %151 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fm10k_hw*, %struct.fm10k_hw** %10, align 8
  %154 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %149, i32 %152, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %148
  br label %221

163:                                              ; preds = %148
  %164 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %9, align 8
  %165 = icmp ne %struct.fm10k_l2_accel* %164, null
  br i1 %165, label %166, label %203

166:                                              ; preds = %163
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %199, %166
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %9, align 8
  %170 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %202

173:                                              ; preds = %167
  %174 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %9, align 8
  %175 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %174, i32 0, i32 2
  %176 = load %struct.net_device**, %struct.net_device*** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.net_device*, %struct.net_device** %176, i64 %178
  %180 = load %struct.net_device*, %struct.net_device** %179, align 8
  store %struct.net_device* %180, %struct.net_device** %16, align 8
  %181 = load %struct.net_device*, %struct.net_device** %16, align 8
  %182 = icmp ne %struct.net_device* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %173
  br label %199

184:                                              ; preds = %173
  %185 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %9, align 8
  %186 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %11, align 4
  %191 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.net_device*, %struct.net_device** %16, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %191, i32 %192, i32 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %184, %183
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %167

202:                                              ; preds = %167
  br label %203

203:                                              ; preds = %202, %163
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @VLAN_N_VID, align 4
  br label %210

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ]
  %212 = add nsw i32 %204, %211
  %213 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %214 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.net_device*, %struct.net_device** %5, align 8
  %216 = load i32, i32* @fm10k_uc_vlan_unsync, align 4
  %217 = call i32 @__dev_uc_unsync(%struct.net_device* %215, i32 %216)
  %218 = load %struct.net_device*, %struct.net_device** %5, align 8
  %219 = load i32, i32* @fm10k_mc_vlan_unsync, align 4
  %220 = call i32 @__dev_mc_unsync(%struct.net_device* %218, i32 %219)
  br label %221

221:                                              ; preds = %210, %162, %146
  %222 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %223 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %222)
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %221, %129, %121, %110, %43, %31, %26
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc*, i32, i32, i32) #1

declare dso_local i32 @fm10k_queue_mac_request(%struct.fm10k_intfc*, i32, i32, i32, i32) #1

declare dso_local i32 @__dev_uc_unsync(%struct.net_device*, i32) #1

declare dso_local i32 @__dev_mc_unsync(%struct.net_device*, i32) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
