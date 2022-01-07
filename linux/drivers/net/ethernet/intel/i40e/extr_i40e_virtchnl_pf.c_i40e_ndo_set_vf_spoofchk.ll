; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, %struct.TYPE_6__*, %struct.i40e_hw, %struct.TYPE_4__**, %struct.i40e_vf* }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_hw = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vf = type { i32, i64, i32 }
%struct.i40e_vsi_context = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@__I40E_VIRTCHNL_OP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to configure VFs, other operation is pending.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid VF Identifier %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"VF %d still in reset. Try again.\0A\00", align 1
@I40E_AQ_VSI_PROP_SECURITY_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_SEC_FLAG_ENABLE_VLAN_CHK = common dso_local global i32 0, align 4
@I40E_AQ_VSI_SEC_FLAG_ENABLE_MAC_CHK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Error %d updating VSI parameters\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ndo_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_netdev_priv*, align 8
  %9 = alloca %struct.i40e_vsi*, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_vsi_context, align 4
  %12 = alloca %struct.i40e_hw*, align 8
  %13 = alloca %struct.i40e_vf*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.i40e_netdev_priv* %16, %struct.i40e_netdev_priv** %8, align 8
  %17 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %18, align 8
  store %struct.i40e_vsi* %19, %struct.i40e_vsi** %9, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 0
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %21, align 8
  store %struct.i40e_pf* %22, %struct.i40e_pf** %10, align 8
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 3
  store %struct.i40e_hw* %24, %struct.i40e_hw** %12, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @test_and_set_bit(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %139

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %132

54:                                               ; preds = %39
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 5
  %57 = load %struct.i40e_vf*, %struct.i40e_vf** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %57, i64 %59
  store %struct.i40e_vf* %60, %struct.i40e_vf** %13, align 8
  %61 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %62 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %63 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %62, i32 0, i32 2
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %54
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %132

75:                                               ; preds = %54
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %78 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %132

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %85 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = call i32 @memset(%struct.i40e_vsi_context* %11, i32 0, i32 16)
  %87 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %88 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %88, align 8
  %90 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %91 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %11, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %11, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @I40E_AQ_VSI_PROP_SECURITY_VALID, align 4
  %104 = call i32 @cpu_to_le16(i32 %103)
  %105 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %11, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %82
  %110 = load i32, i32* @I40E_AQ_VSI_SEC_FLAG_ENABLE_VLAN_CHK, align 4
  %111 = load i32, i32* @I40E_AQ_VSI_SEC_FLAG_ENABLE_MAC_CHK, align 4
  %112 = or i32 %110, %111
  %113 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %11, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %109, %82
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %12, align 8
  %119 = call i32 @i40e_aq_update_vsi_params(%struct.i40e_hw* %118, %struct.i40e_vsi_context* %11, i32* null)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %124 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %122, %117
  br label %132

132:                                              ; preds = %131, %81, %66, %45
  %133 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %134 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %135 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clear_bit(i32 %133, i32 %136)
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %132, %31
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.i40e_vsi_context*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_aq_update_vsi_params(%struct.i40e_hw*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
