; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_del_mac_addr_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_del_mac_addr_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i64, i32, %struct.TYPE_4__, i64, i32, %struct.i40e_pf* }
%struct.TYPE_4__ = type { i64 }
%struct.i40e_pf = type { %struct.TYPE_6__*, %struct.i40e_vsi** }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_vsi = type { i32 }
%struct.virtchnl_ether_addr_list = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid MAC addr %pM for VF %d\0A\00", align 1
@I40E_ERR_INVALID_MAC_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"MAC addr %pM has been set by PF, cannot delete it for VF %d, reset VF to change MAC addr\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to program VF %d MAC filters, error %d\0A\00", align 1
@VIRTCHNL_OP_DEL_ETH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_del_mac_addr_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_del_mac_addr_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_ether_addr_list*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_ether_addr_list*
  store %struct.virtchnl_ether_addr_list* %11, %struct.virtchnl_ether_addr_list** %5, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 6
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 5
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %22 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %23 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %2
  %28 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %28, i64* %8, align 8
  br label %177

29:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %111, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %33 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %114

36:                                               ; preds = %30
  %37 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %38 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @is_broadcast_ether_addr(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %36
  %48 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %49 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @is_zero_ether_addr(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %47, %36
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %64 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %72 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %70, i64 %73)
  %75 = load i64, i64* @I40E_ERR_INVALID_MAC_ADDR, align 8
  store i64 %75, i64* %8, align 8
  br label %177

76:                                               ; preds = %47
  %77 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %76
  %82 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %83 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %91 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @ether_addr_equal(i64 %89, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %81
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %102 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %106 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %107)
  %109 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %109, i64* %8, align 8
  br label %177

110:                                              ; preds = %81, %76
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %30

114:                                              ; preds = %30
  %115 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %116 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %115, i32 0, i32 1
  %117 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %116, align 8
  %118 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %119 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %117, i64 %120
  %122 = load %struct.i40e_vsi*, %struct.i40e_vsi** %121, align 8
  store %struct.i40e_vsi* %122, %struct.i40e_vsi** %7, align 8
  %123 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %124 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %123, i32 0, i32 0
  %125 = call i32 @spin_lock_bh(i32* %124)
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %155, %114
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %129 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %158

132:                                              ; preds = %126
  %133 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %134 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %135 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @i40e_del_mac_filter(%struct.i40e_vsi* %133, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %132
  %145 = load i64, i64* @I40E_ERR_INVALID_MAC_ADDR, align 8
  store i64 %145, i64* %8, align 8
  %146 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %147 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_bh(i32* %147)
  br label %177

149:                                              ; preds = %132
  %150 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %151 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %126

158:                                              ; preds = %126
  %159 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %160 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock_bh(i32* %160)
  %162 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %163 = call i64 @i40e_sync_vsi_filters(%struct.i40e_vsi* %162)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %168 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %172 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %8, align 8
  %175 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %173, i64 %174)
  br label %176

176:                                              ; preds = %166, %158
  br label %177

177:                                              ; preds = %176, %144, %96, %58, %27
  %178 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %179 = load i32, i32* @VIRTCHNL_OP_DEL_ETH_ADDR, align 4
  %180 = load i64, i64* %8, align 8
  %181 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %178, i32 %179, i64 %180)
  ret i32 %181
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i64) #1

declare dso_local i64 @is_zero_ether_addr(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i64 @ether_addr_equal(i64, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @i40e_del_mac_filter(%struct.i40e_vsi*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @i40e_sync_vsi_filters(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
