; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_rebuild.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, %struct.TYPE_2__*, %struct.ice_hw }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_hw = type { i32 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"rebuilding PF after reset_type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"control queues init failed %d\0A\00", align 1
@ICE_RESET_PFR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"clear PF configuration failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ice_get_caps failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Get link status error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"misc vector setup failed: %d\0A\00", align 1
@ICE_FLAG_DCB_ENA = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"PF VSI rebuild failed: %d\0A\00", align 1
@ICE_FLAG_SRIOV_ENA = common dso_local global i32 0, align 4
@ICE_VSI_VF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"VF VSI rebuild failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Rebuild failed due to error sending driver version: %d\0A\00", align 1
@__ICE_RESET_FAILED = common dso_local global i32 0, align 4
@__ICE_NEEDS_RESTART = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Rebuild failed, unload and reload driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*, i32)* @ice_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_rebuild(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 3
  store %struct.ice_hw* %14, %struct.ice_hw** %6, align 8
  %15 = load i32, i32* @__ICE_DOWN, align 4
  %16 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %169

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %27 = call i32 @ice_init_all_ctrlq(%struct.ice_hw* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %161

34:                                               ; preds = %22
  %35 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %36 = call i32 @ice_is_safe_mode(%struct.ice_pf* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ICE_RESET_PFR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %44 = call i32 @ice_fill_blk_tbls(%struct.ice_hw* %43)
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %47 = call i32 @ice_load_pkg(i32* null, %struct.ice_pf* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %51 = call i32 @ice_clear_pf_cfg(%struct.ice_hw* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %161

58:                                               ; preds = %49
  %59 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %60 = call i32 @ice_clear_pxe_mode(%struct.ice_hw* %59)
  %61 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %62 = call i32 @ice_get_caps(%struct.ice_hw* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %161

69:                                               ; preds = %58
  %70 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %71 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ice_sched_init_port(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %158

77:                                               ; preds = %69
  %78 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %79 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ice_update_link_info(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %86 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %93 = call i32 @ice_req_irq_msix_misc(%struct.ice_pf* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %158

100:                                              ; preds = %91
  %101 = load i32, i32* @ICE_FLAG_DCB_ENA, align 4
  %102 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %103 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @test_bit(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %109 = call i32 @ice_dcb_rebuild(%struct.ice_pf* %108)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %112 = load i32, i32* @ICE_VSI_PF, align 4
  %113 = call i32 @ice_vsi_rebuild_by_type(%struct.ice_pf* %111, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %157

120:                                              ; preds = %110
  %121 = load i32, i32* @ICE_FLAG_SRIOV_ENA, align 4
  %122 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %123 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @test_bit(i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %129 = load i32, i32* @ICE_VSI_VF, align 4
  %130 = call i32 @ice_vsi_rebuild_by_type(%struct.ice_pf* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  br label %157

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %120
  %139 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %140 = call i32 @ice_update_pf_netdev_link(%struct.ice_pf* %139)
  %141 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %142 = call i32 @ice_send_version(%struct.ice_pf* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  br label %157

149:                                              ; preds = %138
  %150 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %151 = call i32 @ice_replay_post(%struct.ice_hw* %150)
  %152 = load i32, i32* @__ICE_RESET_FAILED, align 4
  %153 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %154 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @clear_bit(i32 %152, i32 %155)
  br label %177

157:                                              ; preds = %145, %133, %116
  br label %158

158:                                              ; preds = %157, %96, %76
  %159 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %160 = call i32 @ice_sched_cleanup_all(%struct.ice_hw* %159)
  br label %161

161:                                              ; preds = %158, %65, %54, %30
  %162 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %163 = call i32 @ice_shutdown_all_ctrlq(%struct.ice_hw* %162)
  %164 = load i32, i32* @__ICE_RESET_FAILED, align 4
  %165 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %166 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @set_bit(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %161, %21
  %170 = load i32, i32* @__ICE_NEEDS_RESTART, align 4
  %171 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %172 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @set_bit(i32 %170, i32 %173)
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %177

177:                                              ; preds = %169, %149
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @ice_init_all_ctrlq(%struct.ice_hw*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ice_is_safe_mode(%struct.ice_pf*) #1

declare dso_local i32 @ice_fill_blk_tbls(%struct.ice_hw*) #1

declare dso_local i32 @ice_load_pkg(i32*, %struct.ice_pf*) #1

declare dso_local i32 @ice_clear_pf_cfg(%struct.ice_hw*) #1

declare dso_local i32 @ice_clear_pxe_mode(%struct.ice_hw*) #1

declare dso_local i32 @ice_get_caps(%struct.ice_hw*) #1

declare dso_local i32 @ice_sched_init_port(i32) #1

declare dso_local i32 @ice_update_link_info(i32) #1

declare dso_local i32 @ice_req_irq_msix_misc(%struct.ice_pf*) #1

declare dso_local i32 @ice_dcb_rebuild(%struct.ice_pf*) #1

declare dso_local i32 @ice_vsi_rebuild_by_type(%struct.ice_pf*, i32) #1

declare dso_local i32 @ice_update_pf_netdev_link(%struct.ice_pf*) #1

declare dso_local i32 @ice_send_version(%struct.ice_pf*) #1

declare dso_local i32 @ice_replay_post(%struct.ice_hw*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ice_sched_cleanup_all(%struct.ice_hw*) #1

declare dso_local i32 @ice_shutdown_all_ctrlq(%struct.ice_hw*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
