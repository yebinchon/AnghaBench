; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enable_pf_switch_lb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enable_pf_switch_lb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, %struct.TYPE_12__, %struct.TYPE_10__*, i32, %struct.i40e_vsi** }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i40e_vsi = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.i40e_vsi_context = type { %struct.TYPE_8__, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"couldn't get PF vsi config, err %s aq_err %s\0A\00", align 1
@I40E_AQ_VSI_TYPE_PF = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PROP_SWITCH_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"update vsi switch failed, err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_enable_pf_switch_lb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_enable_pf_switch_lb(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_vsi_context, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 4
  %8 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %7, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %8, i64 %11
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  store %struct.i40e_vsi* %13, %struct.i40e_vsi** %3, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %4, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %4, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %4, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 1
  %26 = call i32 @i40e_aq_get_vsi_params(%struct.TYPE_12__* %25, %struct.i40e_vsi_context* %4, i32* null)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %1
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 1
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @i40e_stat_str(%struct.TYPE_12__* %35, i32 %36)
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 1
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @i40e_aq_str(%struct.TYPE_12__* %39, i32 %44)
  %46 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %45)
  br label %85

47:                                               ; preds = %1
  %48 = load i32, i32* @I40E_AQ_VSI_TYPE_PF, align 4
  %49 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @I40E_AQ_VSI_PROP_SWITCH_VALID, align 4
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %4, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB, align 4
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %4, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @i40e_aq_update_vsi_params(i32* %63, %struct.i40e_vsi_context* %4, i32* null)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %47
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 1
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @i40e_stat_str(%struct.TYPE_12__* %73, i32 %74)
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 1
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @i40e_aq_str(%struct.TYPE_12__* %77, i32 %82)
  %84 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %29, %67, %47
  ret void
}

declare dso_local i32 @i40e_aq_get_vsi_params(%struct.TYPE_12__*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_aq_update_vsi_params(i32*, %struct.i40e_vsi_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
