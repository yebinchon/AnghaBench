; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ice_port_info = type { %struct.ice_phy_info, i32 }
%struct.ice_phy_info = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ice_vsi = type { i32, i32 }

@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Failed to update link status and re-enable link events for port %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_FLAG_NO_MEDIA = common dso_local global i32 0, align 4
@ICE_AQ_MEDIA_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to set link down, VSI %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, %struct.ice_port_info*, i32, i64)* @ice_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_link_event(%struct.ice_pf* %0, %struct.ice_port_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca %struct.ice_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_phy_info*, align 8
  %11 = alloca %struct.ice_vsi*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %6, align 8
  store %struct.ice_port_info* %1, %struct.ice_port_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %16 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %15, i32 0, i32 0
  store %struct.ice_phy_info* %16, %struct.ice_phy_info** %10, align 8
  %17 = load %struct.ice_phy_info*, %struct.ice_phy_info** %10, align 8
  %18 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %17, i32 0, i32 1
  %19 = load %struct.ice_phy_info*, %struct.ice_phy_info** %10, align 8
  %20 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_3__* %18 to i8*
  %22 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = load %struct.ice_phy_info*, %struct.ice_phy_info** %10, align 8
  %24 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ice_phy_info*, %struct.ice_phy_info** %10, align 8
  %34 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %38 = call i32 @ice_update_link_info(%struct.ice_port_info* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %4
  %42 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %43 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %47 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %41, %4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %127

60:                                               ; preds = %54, %50
  %61 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %62 = call %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf* %61)
  store %struct.ice_vsi* %62, %struct.ice_vsi** %11, align 8
  %63 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %64 = icmp ne %struct.ice_vsi* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %67 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %127

73:                                               ; preds = %65
  %74 = load i32, i32* @ICE_FLAG_NO_MEDIA, align 4
  %75 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %76 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @test_bit(i32 %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %73
  %81 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %82 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ICE_AQ_MEDIA_AVAILABLE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ICE_FLAG_NO_MEDIA, align 4
  %91 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %92 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @set_bit(i32 %90, i32 %93)
  %95 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %96 = call i32 @ice_aq_set_link_restart_an(%struct.ice_port_info* %95, i32 0, i32* null)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %89
  %100 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %101 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %105 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %127

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %80, %73
  %112 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @ice_vsi_link_event(%struct.ice_vsi* %112, i32 %113)
  %115 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @ice_print_link_msg(%struct.ice_vsi* %115, i32 %116)
  %118 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %119 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %124 = call i32 @ice_vc_notify_link_state(%struct.ice_pf* %123)
  br label %125

125:                                              ; preds = %122, %111
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %99, %70, %58
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ice_update_link_info(%struct.ice_port_info*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #2

declare dso_local %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf*) #2

declare dso_local i32 @test_bit(i32, i32) #2

declare dso_local i32 @set_bit(i32, i32) #2

declare dso_local i32 @ice_aq_set_link_restart_an(%struct.ice_port_info*, i32, i32*) #2

declare dso_local i32 @ice_vsi_link_event(%struct.ice_vsi*, i32) #2

declare dso_local i32 @ice_print_link_msg(%struct.ice_vsi*, i32) #2

declare dso_local i32 @ice_vc_notify_link_state(%struct.ice_pf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
