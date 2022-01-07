; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_nvm_validate_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_nvm_validate_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_nvm_checksum = type { i32, i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_nvm_checksum }

@ICE_RES_READ = common dso_local global i32 0, align 4
@ice_aqc_opc_nvm_checksum = common dso_local global i32 0, align 4
@ICE_AQC_NVM_CHECKSUM_VERIFY = common dso_local global i32 0, align 4
@ICE_AQC_NVM_CHECKSUM_CORRECT = common dso_local global i64 0, align 8
@ICE_ERR_NVM_CHECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_nvm_validate_checksum(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_aqc_nvm_checksum*, align 8
  %5 = alloca %struct.ice_aq_desc, align 4
  %6 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %7 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %8 = load i32, i32* @ICE_RES_READ, align 4
  %9 = call i32 @ice_acquire_nvm(%struct.ice_hw* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ice_aqc_nvm_checksum* %16, %struct.ice_aqc_nvm_checksum** %4, align 8
  %17 = load i32, i32* @ice_aqc_opc_nvm_checksum, align 4
  %18 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %5, i32 %17)
  %19 = load i32, i32* @ICE_AQC_NVM_CHECKSUM_VERIFY, align 4
  %20 = load %struct.ice_aqc_nvm_checksum*, %struct.ice_aqc_nvm_checksum** %4, align 8
  %21 = getelementptr inbounds %struct.ice_aqc_nvm_checksum, %struct.ice_aqc_nvm_checksum* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %23 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %22, %struct.ice_aq_desc* %5, i32* null, i32 0, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %25 = call i32 @ice_release_nvm(%struct.ice_hw* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %14
  %29 = load %struct.ice_aqc_nvm_checksum*, %struct.ice_aqc_nvm_checksum** %4, align 8
  %30 = getelementptr inbounds %struct.ice_aqc_nvm_checksum, %struct.ice_aqc_nvm_checksum* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le16_to_cpu(i32 %31)
  %33 = load i64, i64* @ICE_AQC_NVM_CHECKSUM_CORRECT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ICE_ERR_NVM_CHECKSUM, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %28
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ice_acquire_nvm(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, i32*) #1

declare dso_local i32 @ice_release_nvm(%struct.ice_hw*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
