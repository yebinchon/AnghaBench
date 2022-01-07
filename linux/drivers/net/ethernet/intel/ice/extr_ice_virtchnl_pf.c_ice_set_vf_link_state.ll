; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_8__*, %struct.ice_hw, %struct.ice_vf* }
%struct.TYPE_8__ = type { i32 }
%struct.ice_hw = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32 }
%struct.ice_vf = type { i32, i32, i32, i32 }
%struct.virtchnl_pf_event = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid VF Identifier %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"vf %d in reset. Try again.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@VIRTCHNL_EVENT_LINK_CHANGE = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_INFO = common dso_local global i32 0, align 4
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4
@VIRTCHNL_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_vf_link_state(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_netdev_priv*, align 8
  %9 = alloca %struct.ice_pf*, align 8
  %10 = alloca %struct.virtchnl_pf_event, align 4
  %11 = alloca %struct.ice_link_status*, align 8
  %12 = alloca %struct.ice_vf*, align 8
  %13 = alloca %struct.ice_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.ice_netdev_priv* %15, %struct.ice_netdev_priv** %8, align 8
  %16 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %8, align 8
  %17 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.ice_pf*, %struct.ice_pf** %19, align 8
  store %struct.ice_pf* %20, %struct.ice_pf** %9, align 8
  %21 = bitcast %struct.virtchnl_pf_event* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %24 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %124

36:                                               ; preds = %3
  %37 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %38 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %37, i32 0, i32 3
  %39 = load %struct.ice_vf*, %struct.ice_vf** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %39, i64 %41
  store %struct.ice_vf* %42, %struct.ice_vf** %12, align 8
  %43 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %44 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %43, i32 0, i32 2
  store %struct.ice_hw* %44, %struct.ice_hw** %13, align 8
  %45 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %46 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store %struct.ice_link_status* %50, %struct.ice_link_status** %11, align 8
  %51 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %52 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %53 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @test_bit(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %36
  %58 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %59 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %124

66:                                               ; preds = %36
  %67 = load i32, i32* @VIRTCHNL_EVENT_LINK_CHANGE, align 4
  %68 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @PF_EVENT_SEVERITY_INFO, align 4
  %70 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %92 [
    i32 130, label %72
    i32 128, label %82
    i32 129, label %87
  ]

72:                                               ; preds = %66
  %73 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %74 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.ice_link_status*, %struct.ice_link_status** %11, align 8
  %76 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %81 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %95

82:                                               ; preds = %66
  %83 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %84 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %86 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %95

87:                                               ; preds = %66
  %88 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %89 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %91 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %95

92:                                               ; preds = %66
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %124

95:                                               ; preds = %87, %82, %72
  %96 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %97 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %102 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %103 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ice_set_pfe_link_forced(%struct.ice_vf* %101, %struct.virtchnl_pf_event* %10, i32 %104)
  br label %115

106:                                              ; preds = %95
  %107 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %108 = load %struct.ice_link_status*, %struct.ice_link_status** %11, align 8
  %109 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %112 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ice_set_pfe_link(%struct.ice_vf* %107, %struct.virtchnl_pf_event* %10, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %106, %100
  %116 = load %struct.ice_hw*, %struct.ice_hw** %13, align 8
  %117 = load %struct.ice_vf*, %struct.ice_vf** %12, align 8
  %118 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %121 = load i32, i32* @VIRTCHNL_STATUS_SUCCESS, align 4
  %122 = bitcast %struct.virtchnl_pf_event* %10 to i32*
  %123 = call i32 @ice_aq_send_msg_to_vf(%struct.ice_hw* %116, i32 %119, i32 %120, i32 %121, i32* %122, i32 12, i32* null)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %115, %92, %57, %27
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_set_pfe_link_forced(%struct.ice_vf*, %struct.virtchnl_pf_event*, i32) #1

declare dso_local i32 @ice_set_pfe_link(%struct.ice_vf*, %struct.virtchnl_pf_event*, i32, i32) #1

declare dso_local i32 @ice_aq_send_msg_to_vf(%struct.ice_hw*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
