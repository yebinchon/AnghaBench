; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_aq_read_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_aq_read_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_nvm }
%struct.ice_aqc_nvm = type { i32, i8*, i8*, i8*, i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_nvm_read = common dso_local global i32 0, align 4
@ICE_AQC_NVM_LAST_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, i32, i32, i8*, i32, %struct.ice_sq_cd*)* @ice_aq_read_nvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_read_nvm(%struct.ice_hw* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.ice_sq_cd* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ice_sq_cd*, align 8
  %16 = alloca %struct.ice_aq_desc, align 8
  %17 = alloca %struct.ice_aqc_nvm*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ice_sq_cd* %6, %struct.ice_sq_cd** %15, align 8
  %18 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ice_aqc_nvm* %19, %struct.ice_aqc_nvm** %17, align 8
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, -16777216
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %24, i32* %8, align 4
  br label %60

25:                                               ; preds = %7
  %26 = load i32, i32* @ice_aqc_opc_nvm_read, align 4
  %27 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %16, i32 %26)
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @ICE_AQC_NVM_LAST_CMD, align 4
  %32 = load %struct.ice_aqc_nvm*, %struct.ice_aqc_nvm** %17, align 8
  %33 = getelementptr inbounds %struct.ice_aqc_nvm, %struct.ice_aqc_nvm* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.ice_aqc_nvm*, %struct.ice_aqc_nvm** %17, align 8
  %40 = getelementptr inbounds %struct.ice_aqc_nvm, %struct.ice_aqc_nvm* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 65535
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.ice_aqc_nvm*, %struct.ice_aqc_nvm** %17, align 8
  %45 = getelementptr inbounds %struct.ice_aqc_nvm, %struct.ice_aqc_nvm* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = load %struct.ice_aqc_nvm*, %struct.ice_aqc_nvm** %17, align 8
  %50 = getelementptr inbounds %struct.ice_aqc_nvm, %struct.ice_aqc_nvm* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.ice_aqc_nvm*, %struct.ice_aqc_nvm** %17, align 8
  %54 = getelementptr inbounds %struct.ice_aqc_nvm, %struct.ice_aqc_nvm* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %15, align 8
  %59 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %55, %struct.ice_aq_desc* %16, i8* %56, i32 %57, %struct.ice_sq_cd* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %36, %23
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
