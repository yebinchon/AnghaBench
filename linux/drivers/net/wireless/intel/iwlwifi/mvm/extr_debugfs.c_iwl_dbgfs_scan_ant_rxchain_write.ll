; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_scan_ant_rxchain_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_scan_ant_rxchain_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%hhx\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ANT_ABC = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_scan_ant_rxchain_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_scan_ant_rxchain_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %12 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* @EIO, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %64

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %64

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ANT_ABC, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %64

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %34 = call i32 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm* %33)
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %64

41:                                               ; preds = %31
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %56 = call i64 @fw_has_capa(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %60 = call i32 @iwl_mvm_config_scan(%struct.iwl_mvm* %59)
  br label %61

61:                                               ; preds = %58, %47
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %62, %38, %28, %21, %14
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @iwl_mvm_get_valid_rx_ant(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_config_scan(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
