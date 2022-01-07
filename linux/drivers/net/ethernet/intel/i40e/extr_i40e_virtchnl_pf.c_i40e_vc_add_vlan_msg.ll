; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_vlan_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_vlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i64, i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, i32, %struct.i40e_vsi** }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vsi = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.virtchnl_vlan_filter_list = type { i32, i64*, i32 }

@I40E_VC_MAX_VLAN_PER_VF = common dso_local global i64 0, align 8
@I40E_VIRTCHNL_VF_CAP_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"VF is not trusted, switch the VF to trusted to add more VLAN addresses\0A\00", align 1
@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_MAX_VLANID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid VF VLAN id %d\0A\00", align 1
@I40E_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@I40E_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unable to add VLAN filter %d for VF %d, error %d\0A\00", align 1
@VIRTCHNL_OP_ADD_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_add_vlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_add_vlan_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_vlan_filter_list*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.virtchnl_vlan_filter_list*
  store %struct.virtchnl_vlan_filter_list* %12, %struct.virtchnl_vlan_filter_list** %5, align 8
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 5
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I40E_VC_MAX_VLAN_PER_VF, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i32, i32* @I40E_VIRTCHNL_VF_CAP_PRIVILEGE, align 4
  %23 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %23, i32 0, i32 4
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %190

33:                                               ; preds = %21, %2
  %34 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %35 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %35, i32 0, i32 3
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %41 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %42 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %47, i32* %8, align 4
  br label %190

48:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %52 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %57 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @I40E_MAX_VLANID, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %72 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %190

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %49

83:                                               ; preds = %49
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %85 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %84, i32 0, i32 2
  %86 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %85, align 8
  %87 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %86, i64 %89
  %91 = load %struct.i40e_vsi*, %struct.i40e_vsi** %90, align 8
  store %struct.i40e_vsi* %91, %struct.i40e_vsi** %7, align 8
  %92 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %93 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %98, i32* %8, align 4
  br label %190

99:                                               ; preds = %83
  %100 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %101 = call i32 @i40e_vlan_stripping_enable(%struct.i40e_vsi* %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %186, %99
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %105 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %189

108:                                              ; preds = %102
  %109 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %110 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %111 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @i40e_vsi_add_vlan(%struct.i40e_vsi* %109, i64 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %108
  %121 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %122 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %120, %108
  %126 = load i32, i32* @I40E_VF_STATE_UC_PROMISC, align 4
  %127 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %128 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %127, i32 0, i32 3
  %129 = call i64 @test_bit(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %133 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %132, i32 0, i32 1
  %134 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %135 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %138 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @i40e_aq_set_vsi_uc_promisc_on_vlan(i32* %133, i32 %136, i32 1, i64 %143, i32* null)
  br label %145

145:                                              ; preds = %131, %125
  %146 = load i32, i32* @I40E_VF_STATE_MC_PROMISC, align 4
  %147 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %148 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %147, i32 0, i32 3
  %149 = call i64 @test_bit(i32 %146, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %153 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %152, i32 0, i32 1
  %154 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %155 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %158 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @i40e_aq_set_vsi_mc_promisc_on_vlan(i32* %153, i32 %156, i32 1, i64 %163, i32* null)
  br label %165

165:                                              ; preds = %151, %145
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %170 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %174 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %181 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 (i32*, i8*, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %179, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %168, %165
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %102

189:                                              ; preds = %102
  br label %190

190:                                              ; preds = %189, %97, %65, %46, %27
  %191 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %192 = load i32, i32* @VIRTCHNL_OP_ADD_VLAN, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %191, i32 %192, i32 %193)
  ret i32 %194
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vlan_stripping_enable(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_add_vlan(%struct.i40e_vsi*, i64) #1

declare dso_local i32 @i40e_aq_set_vsi_uc_promisc_on_vlan(i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @i40e_aq_set_vsi_mc_promisc_on_vlan(i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
