; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vlan_stripping_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vlan_stripping_enable.c"
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
@I40E_AQ_VSI_PVLAN_MODE_MASK = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_MODE_ALL = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"update vlan stripping failed, err %s aq_err %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vlan_stripping_enable(%struct.i40e_vsi* %0) #0 {
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
  br label %83

11:                                               ; preds = %1
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I40E_AQ_VSI_PROP_VLAN_VALID, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I40E_AQ_VSI_PVLAN_MODE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %83

29:                                               ; preds = %20, %11
  %30 = load i32, i32* @I40E_AQ_VSI_PROP_VLAN_VALID, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @I40E_AQ_VSI_PVLAN_MODE_ALL, align 4
  %36 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %3, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %3, i32 0, i32 0
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %47 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %46, i32 0, i32 1
  %48 = bitcast %struct.TYPE_8__* %45 to i8*
  %49 = bitcast %struct.TYPE_8__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %51 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = call i64 @i40e_aq_update_vsi_params(%struct.TYPE_12__* %53, %struct.i40e_vsi_context* %3, i32* null)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %29
  %58 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %59 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @i40e_stat_str(%struct.TYPE_12__* %67, i64 %68)
  %70 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %71 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %75 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @i40e_aq_str(%struct.TYPE_12__* %73, i32 %80)
  %82 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %81)
  br label %83

83:                                               ; preds = %10, %28, %57, %29
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
