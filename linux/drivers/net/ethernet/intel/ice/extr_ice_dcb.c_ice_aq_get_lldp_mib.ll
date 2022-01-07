; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_get_lldp_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_get_lldp_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_lldp_get_mib = type { i32, i32, i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_lldp_get_mib }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_lldp_get_mib = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_MIB_TYPE_M = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_BRID_TYPE_S = common dso_local global i32 0, align 4
@ICE_AQ_LLDP_BRID_TYPE_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, i32, i8*, i32, i32*, i32*, %struct.ice_sq_cd*)* @ice_aq_get_lldp_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_get_lldp_mib(%struct.ice_hw* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6, %struct.ice_sq_cd* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ice_sq_cd*, align 8
  %18 = alloca %struct.ice_aqc_lldp_get_mib*, align 8
  %19 = alloca %struct.ice_aq_desc, align 4
  %20 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.ice_sq_cd* %7, %struct.ice_sq_cd** %17, align 8
  %21 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %19, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ice_aqc_lldp_get_mib* %22, %struct.ice_aqc_lldp_get_mib** %18, align 8
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %29, i32* %9, align 4
  br label %78

30:                                               ; preds = %25
  %31 = load i32, i32* @ice_aqc_opc_lldp_get_mib, align 4
  %32 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %19, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @ICE_AQ_LLDP_MIB_TYPE_M, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.ice_aqc_lldp_get_mib*, %struct.ice_aqc_lldp_get_mib** %18, align 8
  %37 = getelementptr inbounds %struct.ice_aqc_lldp_get_mib, %struct.ice_aqc_lldp_get_mib* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ICE_AQ_LLDP_BRID_TYPE_S, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @ICE_AQ_LLDP_BRID_TYPE_M, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.ice_aqc_lldp_get_mib*, %struct.ice_aqc_lldp_get_mib** %18, align 8
  %44 = getelementptr inbounds %struct.ice_aqc_lldp_get_mib, %struct.ice_aqc_lldp_get_mib* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @cpu_to_le16(i32 %47)
  %49 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %19, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ice_hw*, %struct.ice_hw** %10, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %17, align 8
  %54 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %50, %struct.ice_aq_desc* %19, i8* %51, i32 %52, %struct.ice_sq_cd* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %30
  %58 = load i32*, i32** %15, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.ice_aqc_lldp_get_mib*, %struct.ice_aqc_lldp_get_mib** %18, align 8
  %62 = getelementptr inbounds %struct.ice_aqc_lldp_get_mib, %struct.ice_aqc_lldp_get_mib* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load i32*, i32** %15, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i32*, i32** %16, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.ice_aqc_lldp_get_mib*, %struct.ice_aqc_lldp_get_mib** %18, align 8
  %71 = getelementptr inbounds %struct.ice_aqc_lldp_get_mib, %struct.ice_aqc_lldp_get_mib* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = load i32*, i32** %16, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75, %30
  %77 = load i32, i32* %20, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %28
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
