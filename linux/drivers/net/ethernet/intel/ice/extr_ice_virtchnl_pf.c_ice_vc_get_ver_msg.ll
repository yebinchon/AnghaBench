; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_get_ver_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_get_ver_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { %struct.virtchnl_version_info }
%struct.virtchnl_version_info = type { i32, i32, i32 }

@VIRTCHNL_VERSION_MAJOR = common dso_local global i32 0, align 4
@VIRTCHNL_VERSION_MINOR = common dso_local global i32 0, align 4
@VIRTCHNL_VERSION_MINOR_NO_VF_CAPS = common dso_local global i32 0, align 4
@VIRTCHNL_OP_VERSION = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, i32*)* @ice_vc_get_ver_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vc_get_ver_msg(%struct.ice_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.ice_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_version_info, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %5, i32 0, i32 0
  %7 = load i32, i32* @VIRTCHNL_VERSION_MAJOR, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %5, i32 0, i32 1
  %9 = load i32, i32* @VIRTCHNL_VERSION_MINOR, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %12 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %11, i32 0, i32 0
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.virtchnl_version_info*
  %15 = bitcast %struct.virtchnl_version_info* %12 to i8*
  %16 = bitcast %struct.virtchnl_version_info* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %18 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %17, i32 0, i32 0
  %19 = call i64 @VF_IS_V10(%struct.virtchnl_version_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @VIRTCHNL_VERSION_MINOR_NO_VF_CAPS, align 4
  %23 = getelementptr inbounds %struct.virtchnl_version_info, %struct.virtchnl_version_info* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %26 = load i32, i32* @VIRTCHNL_OP_VERSION, align 4
  %27 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  %28 = bitcast %struct.virtchnl_version_info* %5 to i32*
  %29 = call i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %25, i32 %26, i32 %27, i32* %28, i32 12)
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @VF_IS_V10(%struct.virtchnl_version_info*) #2

declare dso_local i32 @ice_vc_send_msg_to_vf(%struct.ice_vf*, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
