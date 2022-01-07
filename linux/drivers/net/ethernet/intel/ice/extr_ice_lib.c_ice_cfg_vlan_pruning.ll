; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_cfg_vlan_pruning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_cfg_vlan_pruning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { %struct.TYPE_7__, i32, i32, i32, %struct.ice_pf* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ice_pf = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_vsi_ctx = type { %struct.TYPE_7__ }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SECURITY_VALID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SW_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_cfg_vlan_pruning(%struct.ice_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_vsi_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.ice_pf*, align 8
  %11 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %13 = icmp ne %struct.ice_vsi* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %140

17:                                               ; preds = %3
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 4
  %20 = load %struct.ice_pf*, %struct.ice_pf** %19, align 8
  store %struct.ice_pf* %20, %struct.ice_pf** %10, align 8
  %21 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %9, align 8
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device* %25, i32 12, i32 %26)
  store %struct.ice_vsi_ctx* %27, %struct.ice_vsi_ctx** %8, align 8
  %28 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %29 = icmp ne %struct.ice_vsi_ctx* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %140

33:                                               ; preds = %17
  %34 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %34, i32 0, i32 0
  %36 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %37 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %36, i32 0, i32 0
  %38 = bitcast %struct.TYPE_7__* %35 to i8*
  %39 = bitcast %struct.TYPE_7__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %39, i64 12, i1 false)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load i32, i32* @ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA, align 4
  %44 = load i32, i32* @ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA, align 4
  %52 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %74

57:                                               ; preds = %33
  %58 = load i32, i32* @ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA, align 4
  %59 = load i32, i32* @ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S, align 4
  %60 = shl i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %57, %42
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @ICE_AQ_VSI_PROP_SECURITY_VALID, align 4
  %79 = load i32, i32* @ICE_AQ_VSI_PROP_SW_VALID, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %87 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %86, i32 0, i32 0
  %88 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %89 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %92 = call i32 @ice_update_vsi(%struct.TYPE_8__* %87, i32 %90, %struct.ice_vsi_ctx* %91, i32* null)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %85
  %96 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %97 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %103 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %104 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %107 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %111 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @netdev_err(i32 %98, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %102, i32 %105, i32 %108, i32 %109, i32 %114)
  br label %134

116:                                              ; preds = %85
  %117 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %118 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %122 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %125 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %129 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.device*, %struct.device** %9, align 8
  %132 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %133 = call i32 @devm_kfree(%struct.device* %131, %struct.ice_vsi_ctx* %132)
  store i32 0, i32* %4, align 4
  br label %140

134:                                              ; preds = %95
  %135 = load %struct.device*, %struct.device** %9, align 8
  %136 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %137 = call i32 @devm_kfree(%struct.device* %135, %struct.ice_vsi_ctx* %136)
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %116, %30, %14
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_update_vsi(%struct.TYPE_8__*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
