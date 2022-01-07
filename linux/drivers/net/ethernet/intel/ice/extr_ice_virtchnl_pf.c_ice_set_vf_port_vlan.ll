; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_port_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_5__*, %struct.ice_vsi**, %struct.ice_vf* }
%struct.TYPE_5__ = type { i32 }
%struct.ice_vsi = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ice_vf = type { i64, i32, i32 }

@ICE_VLAN_PRIORITY_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid VF id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_MAX_VLANID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid VF Parameters\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"VF VLAN protocol is not supported\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"VF %d in reset. Try again.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Duplicate pvid %d request\0A\00", align 1
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Setting VLAN %d, QOS 0x%x on VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_vf_port_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_netdev_priv*, align 8
  %14 = alloca %struct.ice_pf*, align 8
  %15 = alloca %struct.ice_vsi*, align 8
  %16 = alloca %struct.ice_vf*, align 8
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ICE_VLAN_PRIORITY_S, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %23)
  store %struct.ice_netdev_priv* %24, %struct.ice_netdev_priv** %13, align 8
  %25 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %13, align 8
  %26 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.ice_pf*, %struct.ice_pf** %28, align 8
  store %struct.ice_pf* %29, %struct.ice_pf** %14, align 8
  store i32 0, i32* %17, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %32 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %5
  %36 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %183

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ICE_MAX_VLANID, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 7
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %44
  %52 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %183

59:                                               ; preds = %48
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* @ETH_P_8021Q, align 4
  %62 = call i64 @htons(i32 %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %66 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EPROTONOSUPPORT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %183

72:                                               ; preds = %59
  %73 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %74 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %73, i32 0, i32 3
  %75 = load %struct.ice_vf*, %struct.ice_vf** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %75, i64 %77
  store %struct.ice_vf* %78, %struct.ice_vf** %16, align 8
  %79 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %80 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %79, i32 0, i32 2
  %81 = load %struct.ice_vsi**, %struct.ice_vsi*** %80, align 8
  %82 = load %struct.ice_vf*, %struct.ice_vf** %16, align 8
  %83 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %81, i64 %84
  %86 = load %struct.ice_vsi*, %struct.ice_vsi** %85, align 8
  store %struct.ice_vsi* %86, %struct.ice_vsi** %15, align 8
  %87 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %88 = load %struct.ice_vf*, %struct.ice_vf** %16, align 8
  %89 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @test_bit(i32 %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %72
  %94 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %95 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %183

102:                                              ; preds = %72
  %103 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %104 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @le16_to_cpu(i64 %106)
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %112 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %12, align 4
  %116 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %6, align 4
  br label %183

118:                                              ; preds = %102
  %119 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %120 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %126 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %127 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @le16_to_cpu(i64 %129)
  %131 = load i32, i32* @VLAN_VID_MASK, align 4
  %132 = and i32 %130, %131
  %133 = call i32 @ice_vsi_kill_vlan(%struct.ice_vsi* %125, i32 %132)
  br label %134

134:                                              ; preds = %124, %118
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137, %134
  %141 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @ice_vsi_manage_pvid(%struct.ice_vsi* %141, i32 %142, i32 1)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %181

147:                                              ; preds = %140
  br label %154

148:                                              ; preds = %137
  %149 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %150 = call i32 @ice_vsi_manage_pvid(%struct.ice_vsi* %149, i32 0, i32 0)
  %151 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %152 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %147
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  %159 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  %166 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @ice_vsi_add_vlan(%struct.ice_vsi* %166, i32 %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %181

172:                                              ; preds = %157
  br label %173

173:                                              ; preds = %172, %154
  %174 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  %175 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @le16_to_cpu(i64 %177)
  %179 = load %struct.ice_vf*, %struct.ice_vf** %16, align 8
  %180 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %173, %171, %146
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %110, %93, %64, %51, %35
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @ice_vsi_kill_vlan(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_vsi_manage_pvid(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_vsi_add_vlan(%struct.ice_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
