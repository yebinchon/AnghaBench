; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_req_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_req_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_req_res = type { i8*, i32, i8*, i8*, i8* }
%struct.ice_aq_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ice_aqc_req_res }

@ice_aqc_opc_req_res = common dso_local global i32 0, align 4
@ICE_GLOBAL_CFG_LOCK_RES_ID = common dso_local global i32 0, align 4
@ICE_AQ_RES_GLBL_SUCCESS = common dso_local global i64 0, align 8
@ICE_AQ_RES_GLBL_IN_PROG = common dso_local global i64 0, align 8
@ICE_ERR_AQ_ERROR = common dso_local global i32 0, align 4
@ICE_AQ_RES_GLBL_DONE = common dso_local global i64 0, align 8
@ICE_ERR_AQ_NO_WORK = common dso_local global i32 0, align 4
@ICE_AQ_RC_EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, i32, i32, i32*, %struct.ice_sq_cd*)* @ice_aq_req_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_req_res(%struct.ice_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.ice_sq_cd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ice_sq_cd*, align 8
  %14 = alloca %struct.ice_aqc_req_res*, align 8
  %15 = alloca %struct.ice_aq_desc, align 8
  %16 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.ice_sq_cd* %5, %struct.ice_sq_cd** %13, align 8
  %17 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %15, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.ice_aqc_req_res* %18, %struct.ice_aqc_req_res** %14, align 8
  %19 = load i32, i32* @ice_aqc_opc_req_res, align 4
  %20 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %15, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %28 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %32 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %37 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %12, align 8
  store i32 0, i32* %38, align 4
  %39 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %40 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %13, align 8
  %41 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %39, %struct.ice_aq_desc* %15, i32* null, i32 0, %struct.ice_sq_cd* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ICE_GLOBAL_CFG_LOCK_RES_ID, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %6
  %46 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %47 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le16_to_cpu(i32 %48)
  %50 = load i64, i64* @ICE_AQ_RES_GLBL_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %54 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @le32_to_cpu(i8* %55)
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %7, align 4
  br label %104

58:                                               ; preds = %45
  %59 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %60 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = load i64, i64* @ICE_AQ_RES_GLBL_IN_PROG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %67 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @le32_to_cpu(i8* %68)
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @ICE_ERR_AQ_ERROR, align 4
  store i32 %71, i32* %7, align 4
  br label %104

72:                                               ; preds = %58
  %73 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %74 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @le16_to_cpu(i32 %75)
  %77 = load i64, i64* @ICE_AQ_RES_GLBL_DONE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  store i32 %80, i32* %7, align 4
  br label %104

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %12, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @ICE_ERR_AQ_ERROR, align 4
  store i32 %85, i32* %7, align 4
  br label %104

86:                                               ; preds = %6
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %91 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ICE_AQ_RC_EBUSY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %89, %86
  %97 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %14, align 8
  %98 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @le32_to_cpu(i8* %99)
  %101 = load i32*, i32** %12, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %89
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %83, %79, %65, %52
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
