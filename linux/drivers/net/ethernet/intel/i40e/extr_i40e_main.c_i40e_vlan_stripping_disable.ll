; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vlan_stripping_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vlan_stripping_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_11__*, %struct.TYPE_8__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.i40e_vsi_context = type { %struct.TYPE_8__, i32 }

@I40E_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_EMOD_MASK = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_MODE_ALL = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_EMOD_NOTHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"update vlan stripping failed, err %s aq_err %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vlan_stripping_disable(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_vsi_context, align 8
  %4 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I40E_AQ_VSI_PROP_VLAN_VALID, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_MASK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %84

30:                                               ; preds = %20, %11
  %31 = load i32, i32* @I40E_AQ_VSI_PROP_VLAN_VALID, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @I40E_AQ_VSI_PVLAN_MODE_ALL, align 4
  %37 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_NOTHING, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %3, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %3, i32 0, i32 0
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 1
  %49 = bitcast %struct.TYPE_8__* %46 to i8*
  %50 = bitcast %struct.TYPE_8__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = call i64 @i40e_aq_update_vsi_params(%struct.TYPE_12__* %54, %struct.i40e_vsi_context* %3, i32* null)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %30
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @i40e_stat_str(%struct.TYPE_12__* %68, i64 %69)
  %71 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %76 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @i40e_aq_str(%struct.TYPE_12__* %74, i32 %81)
  %83 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %82)
  br label %84

84:                                               ; preds = %10, %29, %58, %30
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @i40e_aq_update_vsi_params(%struct.TYPE_12__*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
