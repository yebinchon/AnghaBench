; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_discover_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_discover_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_list_caps = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ice_aqc_list_caps }

@ice_aqc_opc_list_func_caps = common dso_local global i32 0, align 4
@ice_aqc_opc_list_dev_caps = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_AQ_RC_ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i8*, i32, i32*, i32, %struct.ice_sq_cd*)* @ice_aq_discover_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_discover_caps(%struct.ice_hw* %0, i8* %1, i32 %2, i32* %3, i32 %4, %struct.ice_sq_cd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_sq_cd*, align 8
  %14 = alloca %struct.ice_aqc_list_caps*, align 8
  %15 = alloca %struct.ice_aq_desc, align 4
  %16 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ice_sq_cd* %5, %struct.ice_sq_cd** %13, align 8
  %17 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %15, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.ice_aqc_list_caps* %18, %struct.ice_aqc_list_caps** %14, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @ice_aqc_opc_list_func_caps, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ice_aqc_opc_list_dev_caps, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %27, i32* %7, align 4
  br label %63

28:                                               ; preds = %22, %6
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %15, i32 %29)
  %31 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %13, align 8
  %35 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %31, %struct.ice_aq_desc* %15, i8* %32, i32 %33, %struct.ice_sq_cd* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.ice_aqc_list_caps*, %struct.ice_aqc_list_caps** %14, align 8
  %42 = getelementptr inbounds %struct.ice_aqc_list_caps, %struct.ice_aqc_list_caps* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ice_parse_caps(%struct.ice_hw* %39, i8* %40, i32 %44, i32 %45)
  br label %61

47:                                               ; preds = %28
  %48 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %49 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ICE_AQ_RC_ENOMEM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ice_aqc_list_caps*, %struct.ice_aqc_list_caps** %14, align 8
  %56 = getelementptr inbounds %struct.ice_aqc_list_caps, %struct.ice_aqc_list_caps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %26
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @ice_parse_caps(%struct.ice_hw*, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
