; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_hw_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_set_hw_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_cfg = type { i64, i64 }
%struct.iwl_nvm_data = type { i32* }

@IWL_NVM_EXT = common dso_local global i64 0, align 8
@HW_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no valid mac address was found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"base HW address: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i32*)* @iwl_set_hw_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_hw_address(%struct.iwl_trans* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.iwl_cfg*, align 8
  %9 = alloca %struct.iwl_nvm_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %7, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %8, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %14 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %19 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %20 = call i32 @iwl_set_hw_address_from_csr(%struct.iwl_trans* %18, %struct.iwl_nvm_data* %19)
  br label %82

21:                                               ; preds = %5
  %22 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_NVM_EXT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @HW_ADDR, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %43 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %57 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %55, i32* %59, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %64 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %62, i32* %66, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  store i32 %69, i32* %73, align 4
  br label %81

74:                                               ; preds = %21
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %76 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %77 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @iwl_set_hw_address_family_8000(%struct.iwl_trans* %75, %struct.iwl_cfg* %76, %struct.iwl_nvm_data* %77, i32* %78, i32* %79)
  br label %81

81:                                               ; preds = %74, %27
  br label %82

82:                                               ; preds = %81, %17
  %83 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %84 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @is_valid_ether_addr(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %90 = call i32 @IWL_ERR(%struct.iwl_trans* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %99

93:                                               ; preds = %82
  %94 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %95 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %96 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @IWL_INFO(%struct.iwl_trans* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @iwl_set_hw_address_from_csr(%struct.iwl_trans*, %struct.iwl_nvm_data*) #1

declare dso_local i32 @iwl_set_hw_address_family_8000(%struct.iwl_trans*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i32*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_trans*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
