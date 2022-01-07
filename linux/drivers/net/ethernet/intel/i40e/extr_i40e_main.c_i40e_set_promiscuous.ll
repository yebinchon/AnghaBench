; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_promiscuous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, i64, i32, i32, %struct.TYPE_3__*, %struct.i40e_hw, %struct.i40e_vsi** }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vsi = type { i64, i32 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_NO_VEB = common dso_local global i64 0, align 8
@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Set default VSI failed, err %s, aq_err %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"set unicast promisc failed, err %s, aq_err %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"set multicast promisc failed, err %s, aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32)* @i40e_set_promiscuous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_promiscuous(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 6
  %10 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %9, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %10, i64 %13
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  store %struct.i40e_vsi* %15, %struct.i40e_vsi** %5, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 5
  store %struct.i40e_hw* %17, %struct.i40e_hw** %6, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I40E_VSI_MAIN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %2
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I40E_NO_VEB, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %23
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @i40e_aq_set_default_vsi(%struct.i40e_hw* %40, i32 %43, i32* null)
  store i32 %44, i32* %7, align 4
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @i40e_aq_clear_default_vsi(%struct.i40e_hw* %46, i32 %49, i32* null)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @i40e_stat_str(%struct.i40e_hw* %59, i32 %60)
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %64 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @i40e_aq_str(%struct.i40e_hw* %62, i32 %66)
  %68 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %54, %51
  br label %119

70:                                               ; preds = %29, %23, %2
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %72 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %73 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @i40e_aq_set_vsi_unicast_promiscuous(%struct.i40e_hw* %71, i32 %74, i32 %75, i32* null, i32 1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %70
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @i40e_stat_str(%struct.i40e_hw* %84, i32 %85)
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %88 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %89 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @i40e_aq_str(%struct.i40e_hw* %87, i32 %91)
  %93 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %79, %70
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %96 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %97 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw* %95, i32 %98, i32 %99, i32* null)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %94
  %104 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %105 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %104, i32 0, i32 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @i40e_stat_str(%struct.i40e_hw* %108, i32 %109)
  %111 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %113 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @i40e_aq_str(%struct.i40e_hw* %111, i32 %115)
  %117 = call i32 @dev_info(i32* %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %116)
  br label %118

118:                                              ; preds = %103, %94
  br label %119

119:                                              ; preds = %118, %69
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %125 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @i40e_aq_set_default_vsi(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @i40e_aq_clear_default_vsi(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_set_vsi_unicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*, i32) #1

declare dso_local i32 @i40e_aq_set_vsi_multicast_promiscuous(%struct.i40e_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
