; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_get_ver = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_get_ver }

@ice_aqc_opc_get_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_get_fw_ver(%struct.ice_hw* %0, %struct.ice_sq_cd* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_sq_cd*, align 8
  %5 = alloca %struct.ice_aqc_get_ver*, align 8
  %6 = alloca %struct.ice_aq_desc, align 4
  %7 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_sq_cd* %1, %struct.ice_sq_cd** %4, align 8
  %8 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %6, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ice_aqc_get_ver* %9, %struct.ice_aqc_get_ver** %5, align 8
  %10 = load i32, i32* @ice_aqc_opc_get_ver, align 4
  %11 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %6, i32 %10)
  %12 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %13 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %4, align 8
  %14 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %12, %struct.ice_aq_desc* %6, i32* null, i32 0, %struct.ice_sq_cd* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %2
  %18 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %19 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %29 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %34 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %45 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %50 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %55 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %58 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ice_aqc_get_ver*, %struct.ice_aqc_get_ver** %5, align 8
  %60 = getelementptr inbounds %struct.ice_aqc_get_ver, %struct.ice_aqc_get_ver* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %17, %2
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
