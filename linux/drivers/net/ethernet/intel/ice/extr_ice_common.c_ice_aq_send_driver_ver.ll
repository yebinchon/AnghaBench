; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_send_driver_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_send_driver_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_driver_ver = type { i64*, i32, i32, i32, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_driver_ver = type { i32, i32, i32, i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_driver_ver }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_driver_ver = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_send_driver_ver(%struct.ice_hw* %0, %struct.ice_driver_ver* %1, %struct.ice_sq_cd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_driver_ver*, align 8
  %7 = alloca %struct.ice_sq_cd*, align 8
  %8 = alloca %struct.ice_aqc_driver_ver*, align 8
  %9 = alloca %struct.ice_aq_desc, align 4
  %10 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store %struct.ice_driver_ver* %1, %struct.ice_driver_ver** %6, align 8
  store %struct.ice_sq_cd* %2, %struct.ice_sq_cd** %7, align 8
  %11 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %9, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ice_aqc_driver_ver* %12, %struct.ice_aqc_driver_ver** %8, align 8
  %13 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %14 = icmp ne %struct.ice_driver_ver* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %16, i32* %4, align 4
  br label %81

17:                                               ; preds = %3
  %18 = load i32, i32* @ice_aqc_opc_driver_ver, align 4
  %19 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %9, i32 %18)
  %20 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %26 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_aqc_driver_ver*, %struct.ice_aqc_driver_ver** %8, align 8
  %29 = getelementptr inbounds %struct.ice_aqc_driver_ver, %struct.ice_aqc_driver_ver* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %31 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ice_aqc_driver_ver*, %struct.ice_aqc_driver_ver** %8, align 8
  %34 = getelementptr inbounds %struct.ice_aqc_driver_ver, %struct.ice_aqc_driver_ver* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %36 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ice_aqc_driver_ver*, %struct.ice_aqc_driver_ver** %8, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_driver_ver, %struct.ice_aqc_driver_ver* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %41 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ice_aqc_driver_ver*, %struct.ice_aqc_driver_ver** %8, align 8
  %44 = getelementptr inbounds %struct.ice_aqc_driver_ver, %struct.ice_aqc_driver_ver* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %70, %17
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %51 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @isascii(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %61 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %59, %49, %45
  %69 = phi i1 [ false, %49 ], [ false, %45 ], [ %67, %59 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %45

73:                                               ; preds = %68
  %74 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %75 = load %struct.ice_driver_ver*, %struct.ice_driver_ver** %6, align 8
  %76 = getelementptr inbounds %struct.ice_driver_ver, %struct.ice_driver_ver* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %7, align 8
  %80 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %74, %struct.ice_aq_desc* %9, i64* %77, i32 %78, %struct.ice_sq_cd* %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @isascii(i64) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i64*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
