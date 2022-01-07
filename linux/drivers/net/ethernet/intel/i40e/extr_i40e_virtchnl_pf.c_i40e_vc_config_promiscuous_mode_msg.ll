; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_promiscuous_mode_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_promiscuous_mode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.virtchnl_promisc_info = type { i32, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@I40E_VIRTCHNL_VF_CAP_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Unprivileged VF %d is attempting to configure promiscuous mode\0A\00", align 1
@I40E_MAX_VF_PROMISC_FLAGS = common dso_local global i32 0, align 4
@FLAG_VF_MULTICAST_PROMISC = common dso_local global i32 0, align 4
@FLAG_VF_UNICAST_PROMISC = common dso_local global i32 0, align 4
@I40E_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"VF %d successfully set multicast promiscuous mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"VF %d successfully unset multicast promiscuous mode\0A\00", align 1
@I40E_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"VF %d successfully set unicast promiscuous mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"VF %d successfully unset unicast promiscuous mode\0A\00", align 1
@VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_config_promiscuous_mode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_config_promiscuous_mode_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_promisc_info*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_promisc_info*
  store %struct.virtchnl_promisc_info* %11, %struct.virtchnl_promisc_info** %5, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 3
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %21, i64* %7, align 8
  br label %152

22:                                               ; preds = %2
  %23 = load i32, i32* @I40E_VIRTCHNL_VF_CAP_PRIVILEGE, align 4
  %24 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %24, i32 0, i32 2
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i64 0, i64* %7, align 8
  br label %152

37:                                               ; preds = %22
  %38 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %5, align 8
  %39 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I40E_MAX_VF_PROMISC_FLAGS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %44, i64* %7, align 8
  br label %152

45:                                               ; preds = %37
  %46 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %47 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %5, align 8
  %48 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %53, i64* %7, align 8
  br label %152

54:                                               ; preds = %45
  %55 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %5, align 8
  %56 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %5, align 8
  %64 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FLAG_VF_UNICAST_PROMISC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %72 = load %struct.virtchnl_promisc_info*, %struct.virtchnl_promisc_info** %5, align 8
  %73 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf* %71, i32 %74, i32 %75, i32 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %152

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i32, i32* @I40E_VF_STATE_MC_PROMISC, align 4
  %86 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %87 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %86, i32 0, i32 1
  %88 = call i32 @test_and_set_bit(i32 %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %84
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %96 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %90, %84
  br label %116

100:                                              ; preds = %81
  %101 = load i32, i32* @I40E_VF_STATE_MC_PROMISC, align 4
  %102 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %103 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %102, i32 0, i32 1
  %104 = call i64 @test_and_clear_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %108 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %112 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_info(i32* %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %106, %100
  br label %116

116:                                              ; preds = %115, %99
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i32, i32* @I40E_VF_STATE_UC_PROMISC, align 4
  %121 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %122 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %121, i32 0, i32 1
  %123 = call i32 @test_and_set_bit(i32 %120, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %127 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %131 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_info(i32* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %125, %119
  br label %151

135:                                              ; preds = %116
  %136 = load i32, i32* @I40E_VF_STATE_UC_PROMISC, align 4
  %137 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %138 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %137, i32 0, i32 1
  %139 = call i64 @test_and_clear_bit(i32 %136, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %143 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %147 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @dev_info(i32* %145, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %141, %135
  br label %151

151:                                              ; preds = %150, %134
  br label %152

152:                                              ; preds = %151, %80, %52, %43, %28, %20
  %153 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %154 = load i32, i32* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 4
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %153, i32 %154, i64 %155)
  ret i32 %156
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i64 @i40e_config_vf_promiscuous_mode(%struct.i40e_vf*, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
