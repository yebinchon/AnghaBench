; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_alloc_vsi_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_alloc_vsi_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.ice_pf* }
%struct.TYPE_4__ = type { i32* }
%struct.ice_pf = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ice_vsi = type { i32, i32 }

@tmp_add_list = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to create VF VSI\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ICE_VLAN_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not add mac filters error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*)* @ice_alloc_vsi_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_alloc_vsi_res(%struct.ice_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vf*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %3, align 8
  %10 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %11 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %10, i32 0, i32 7
  %12 = load %struct.ice_pf*, %struct.ice_pf** %11, align 8
  store %struct.ice_pf* %12, %struct.ice_pf** %4, align 8
  %13 = load i32, i32* @tmp_add_list, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %20 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %21 = call i32 @ice_calc_vf_first_vector_idx(%struct.ice_pf* %19, %struct.ice_vf* %20)
  %22 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %23 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %25 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %30 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ice_vsi* @ice_vf_vsi_setup(%struct.ice_pf* %24, i32 %28, i32 %31)
  store %struct.ice_vsi* %32, %struct.ice_vsi** %7, align 8
  %33 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %34 = icmp ne %struct.ice_vsi* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %1
  %36 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %120

43:                                               ; preds = %1
  %44 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %45 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %48 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %50 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %53 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %55 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %43
  %59 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %60 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %61 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ice_vsi_manage_pvid(%struct.ice_vsi* %59, i32 %62, i32 1)
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %65 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %66 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ICE_VLAN_M, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @ice_vsi_add_vlan(%struct.ice_vsi* %64, i32 %69)
  br label %71

71:                                               ; preds = %58, %43
  %72 = call i32 @eth_broadcast_addr(i32* %18)
  %73 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %74 = call i32 @ice_add_mac_to_list(%struct.ice_vsi* %73, i32* @tmp_add_list, i32* %18)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %113

78:                                               ; preds = %71
  %79 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %80 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @is_valid_ether_addr(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %87 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %88 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @ice_add_mac_to_list(%struct.ice_vsi* %86, i32* @tmp_add_list, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %113

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %78
  %97 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %98 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %97, i32 0, i32 1
  %99 = call i32 @ice_add_mac(%struct.TYPE_6__* %98, i32* @tmp_add_list)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %104 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %112

109:                                              ; preds = %96
  %110 = load %struct.ice_vf*, %struct.ice_vf** %3, align 8
  %111 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112, %94, %77
  %114 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %115 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i32 @ice_free_fltr_list(i32* %117, i32* @tmp_add_list)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %120

120:                                              ; preds = %113, %35
  %121 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @LIST_HEAD(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ice_calc_vf_first_vector_idx(%struct.ice_pf*, %struct.ice_vf*) #1

declare dso_local %struct.ice_vsi* @ice_vf_vsi_setup(%struct.ice_pf*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ice_vsi_manage_pvid(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_vsi_add_vlan(%struct.ice_vsi*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i32 @ice_add_mac_to_list(%struct.ice_vsi*, i32*, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ice_add_mac(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ice_free_fltr_list(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
