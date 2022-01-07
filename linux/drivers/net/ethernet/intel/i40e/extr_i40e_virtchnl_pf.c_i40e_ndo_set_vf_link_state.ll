; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, %struct.i40e_hw, %struct.i40e_vf*, %struct.TYPE_9__* }
%struct.i40e_hw = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i40e_vf = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.virtchnl_pf_event = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@__I40E_VIRTCHNL_OP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to configure VFs, other operation is pending.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid VF Identifier %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIRTCHNL_EVENT_LINK_CHANGE = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_INFO = common dso_local global i32 0, align 4
@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@VIRTCHNL_LINK_SPEED_40GB = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ndo_set_vf_link_state(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_netdev_priv*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca %struct.virtchnl_pf_event, align 4
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca %struct.i40e_vf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.i40e_netdev_priv* %16, %struct.i40e_netdev_priv** %8, align 8
  %17 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %20, align 8
  store %struct.i40e_pf* %21, %struct.i40e_pf** %9, align 8
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 2
  store %struct.i40e_hw* %23, %struct.i40e_hw** %11, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_and_set_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %135

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %128

53:                                               ; preds = %38
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 3
  %56 = load %struct.i40e_vf*, %struct.i40e_vf** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %56, i64 %58
  store %struct.i40e_vf* %59, %struct.i40e_vf** %12, align 8
  %60 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %61 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %64 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %62, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* @VIRTCHNL_EVENT_LINK_CHANGE, align 4
  %69 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @PF_EVENT_SEVERITY_INFO, align 4
  %71 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  switch i32 %72, label %119 [
    i32 130, label %73
    i32 128, label %96
    i32 129, label %108
  ]

73:                                               ; preds = %53
  %74 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %75 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %83 = and i32 %81, %82
  %84 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %88 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  br label %122

96:                                               ; preds = %53
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %100 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %99, i32 0, i32 2
  store i32 1, i32* %100, align 4
  %101 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @VIRTCHNL_LINK_SPEED_40GB, align 4
  %105 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  br label %122

108:                                              ; preds = %53
  %109 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %110 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %112 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %111, i32 0, i32 2
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %10, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  br label %122

119:                                              ; preds = %53
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %14, align 4
  br label %128

122:                                              ; preds = %108, %96, %73
  %123 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %126 = bitcast %struct.virtchnl_pf_event* %10 to i32*
  %127 = call i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %123, i32 %124, i32 %125, i32 0, i32* %126, i32 16, i32* null)
  br label %128

128:                                              ; preds = %122, %119, %44
  %129 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %130 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %131 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @clear_bit(i32 %129, i32 %132)
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %128, %30
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
