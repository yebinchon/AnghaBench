; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_reset_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_reset_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i64, i64, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__*, %struct.ice_vsi**, %struct.ice_hw, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vsi = type { i32, i32 }
%struct.ice_hw = type { i32 }

@__ICE_VF_DIS = common dso_local global i32 0, align 4
@ICE_VF_STATE_DIS = common dso_local global i32 0, align 4
@ICE_VF_STATE_QS_ENA = common dso_local global i32 0, align 4
@ICE_VF_RESET = common dso_local global i32 0, align 4
@VPGEN_VFRSTAT_VFRD_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VF reset check timeout on VF %d\0A\00", align 1
@ICE_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@ICE_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@ICE_UCAST_VLAN_PROMISC_BITS = common dso_local global i32 0, align 4
@ICE_UCAST_PROMISC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"disabling promiscuous mode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, i32)* @ice_reset_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_reset_vf(%struct.ice_vf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %13, i32 0, i32 5
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  store %struct.ice_pf* %15, %struct.ice_pf** %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @__ICE_VF_DIS, align 4
  %17 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %18 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

23:                                               ; preds = %2
  %24 = load i32, i32* @ICE_VF_STATE_DIS, align 4
  %25 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %26 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @test_and_set_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %154

31:                                               ; preds = %23
  %32 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ice_trigger_vf_reset(%struct.ice_vf* %32, i32 %33, i32 0)
  %35 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 1
  %37 = load %struct.ice_vsi**, %struct.ice_vsi*** %36, align 8
  %38 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %39 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %37, i64 %40
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %41, align 8
  store %struct.ice_vsi* %42, %struct.ice_vsi** %7, align 8
  %43 = load i32, i32* @ICE_VF_STATE_QS_ENA, align 4
  %44 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %45 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @test_bit(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %51 = call i32 @ice_dis_vf_qs(%struct.ice_vf* %50)
  br label %52

52:                                               ; preds = %49, %31
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %57 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ICE_VF_RESET, align 4
  %60 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %61 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ice_dis_vsi_txq(i32 %55, i32 %58, i32 0, i32 0, i32* null, i32* null, i32* null, i32 %59, i32 %62, i32* null)
  %64 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %65 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %64, i32 0, i32 2
  store %struct.ice_hw* %65, %struct.ice_hw** %8, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %83, %52
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %71 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %72 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VPGEN_VFRSTAT(i32 %73)
  %75 = call i32 @rd32(%struct.ice_hw* %70, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @VPGEN_VFRSTAT_VFRD_M, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %86

81:                                               ; preds = %69
  %82 = call i32 @usleep_range(i32 10, i32 20)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %66

86:                                               ; preds = %80, %66
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %91 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %95 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_warn(i32* %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %89, %86
  %99 = load i32, i32* @ICE_VF_STATE_UC_PROMISC, align 4
  %100 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %101 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @test_bit(i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ICE_VF_STATE_MC_PROMISC, align 4
  %107 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %108 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @test_bit(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %105, %98
  %113 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %114 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %119 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117, %112
  %123 = load i32, i32* @ICE_UCAST_VLAN_PROMISC_BITS, align 4
  store i32 %123, i32* %10, align 4
  br label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @ICE_UCAST_PROMISC_BITS, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %128 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %127, i32 0, i32 1
  %129 = load %struct.ice_vsi**, %struct.ice_vsi*** %128, align 8
  %130 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %131 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %129, i64 %132
  %134 = load %struct.ice_vsi*, %struct.ice_vsi** %133, align 8
  store %struct.ice_vsi* %134, %struct.ice_vsi** %7, align 8
  %135 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %136 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i64 @ice_vf_set_vsi_promisc(%struct.ice_vf* %135, %struct.ice_vsi* %136, i32 %137, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %126
  %141 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %142 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %140, %126
  br label %147

147:                                              ; preds = %146, %105
  %148 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %149 = call i32 @ice_free_vf_res(%struct.ice_vf* %148)
  %150 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %151 = call i32 @ice_cleanup_and_realloc_vf(%struct.ice_vf* %150)
  %152 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %153 = call i32 @ice_flush(%struct.ice_hw* %152)
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %147, %30, %22
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @ice_trigger_vf_reset(%struct.ice_vf*, i32, i32) #1

declare dso_local i32 @ice_dis_vf_qs(%struct.ice_vf*) #1

declare dso_local i32 @ice_dis_vsi_txq(i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @VPGEN_VFRSTAT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @ice_vf_set_vsi_promisc(%struct.ice_vf*, %struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ice_free_vf_res(%struct.ice_vf*) #1

declare dso_local i32 @ice_cleanup_and_realloc_vf(%struct.ice_vf*) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
