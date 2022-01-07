; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_radio_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_radio_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_cfg = type { i64 }
%struct.iwl_nvm_data = type { i32, i32, i32, i32, i32, i32 }

@IWL_NVM_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_cfg*, %struct.iwl_nvm_data*, i32)* @iwl_set_radio_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_set_radio_cfg(%struct.iwl_cfg* %0, %struct.iwl_nvm_data* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_cfg*, align 8
  %5 = alloca %struct.iwl_nvm_data*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_cfg* %0, %struct.iwl_cfg** %4, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iwl_cfg*, %struct.iwl_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IWL_NVM_EXT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @NVM_RF_CFG_TYPE_MSK(i32 %13)
  %15 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @NVM_RF_CFG_STEP_MSK(i32 %17)
  %19 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @NVM_RF_CFG_DASH_MSK(i32 %21)
  %23 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @NVM_RF_CFG_PNUM_MSK(i32 %25)
  %27 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %54

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @EXT_NVM_RF_CFG_TYPE_MSK(i32 %30)
  %32 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @EXT_NVM_RF_CFG_STEP_MSK(i32 %34)
  %36 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @EXT_NVM_RF_CFG_DASH_MSK(i32 %38)
  %40 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %41 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @EXT_NVM_RF_CFG_FLAVOR_MSK(i32 %42)
  %44 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @EXT_NVM_RF_CFG_TX_ANT_MSK(i32 %46)
  %48 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @EXT_NVM_RF_CFG_RX_ANT_MSK(i32 %50)
  %52 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %29, %12
  ret void
}

declare dso_local i32 @NVM_RF_CFG_TYPE_MSK(i32) #1

declare dso_local i32 @NVM_RF_CFG_STEP_MSK(i32) #1

declare dso_local i32 @NVM_RF_CFG_DASH_MSK(i32) #1

declare dso_local i32 @NVM_RF_CFG_PNUM_MSK(i32) #1

declare dso_local i32 @EXT_NVM_RF_CFG_TYPE_MSK(i32) #1

declare dso_local i32 @EXT_NVM_RF_CFG_STEP_MSK(i32) #1

declare dso_local i32 @EXT_NVM_RF_CFG_DASH_MSK(i32) #1

declare dso_local i32 @EXT_NVM_RF_CFG_FLAVOR_MSK(i32) #1

declare dso_local i32 @EXT_NVM_RF_CFG_TX_ANT_MSK(i32) #1

declare dso_local i32 @EXT_NVM_RF_CFG_RX_ANT_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
