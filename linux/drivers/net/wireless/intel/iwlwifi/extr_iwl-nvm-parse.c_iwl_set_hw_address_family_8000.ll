; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_hw_address_family_8000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_hw_address_family_8000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_nvm_data = type { i32 }

@iwl_set_hw_address_family_8000.reserved_mac = internal constant [6 x i32] [i32 2, i32 204, i32 170, i32 255, i32 238, i32 0], align 16
@MAC_ADDRESS_OVERRIDE_EXT_NVM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"mac address from nvm override section is not valid\0A\00", align 1
@WFMP_MAC_ADDR_0 = common dso_local global i32 0, align 4
@WFMP_MAC_ADDR_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mac address is not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i32*)* @iwl_set_hw_address_family_8000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_set_hw_address_family_8000(%struct.iwl_trans* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_cfg*, align 8
  %8 = alloca %struct.iwl_nvm_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %7, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %5
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @MAC_ADDRESS_OVERRIDE_EXT_NVM, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %11, align 8
  %21 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @memcpy(i32 %23, i32* %24, i32 %25)
  %27 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @is_valid_ether_addr(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i64 @memcmp(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @iwl_set_hw_address_family_8000.reserved_mac, i64 0, i64 0), i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %62

38:                                               ; preds = %32, %16
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %40 = call i32 @IWL_ERR(%struct.iwl_trans* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %5
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %46 = load i32, i32* @WFMP_MAC_ADDR_0, align 4
  %47 = call i32 @iwl_trans_read_prph(%struct.iwl_trans* %45, i32 %46)
  %48 = call i32 @cpu_to_le32(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %50 = load i32, i32* @WFMP_MAC_ADDR_1, align 4
  %51 = call i32 @iwl_trans_read_prph(%struct.iwl_trans* %49, i32 %50)
  %52 = call i32 @cpu_to_le32(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iwl_flip_hw_address(i32 %53, i32 %54, i32 %57)
  br label %62

59:                                               ; preds = %41
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %61 = call i32 @IWL_ERR(%struct.iwl_trans* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %44, %37
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_flip_hw_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
