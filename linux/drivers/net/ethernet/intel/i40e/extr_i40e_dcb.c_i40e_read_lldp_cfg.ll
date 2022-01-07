; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_read_lldp_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_read_lldp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_lldp_variables = type { i32 }

@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_SR_NVM_CONTROL_WORD = common dso_local global i32 0, align 4
@I40E_SR_NVM_MAP_STRUCTURE_TYPE = common dso_local global i32 0, align 4
@I40E_SR_EMP_MODULE_PTR = common dso_local global i32 0, align 4
@I40E_SR_LLDP_CFG_PTR = common dso_local global i32 0, align 4
@I40E_EMP_MODULE_PTR = common dso_local global i32 0, align 4
@I40E_NVM_LLDP_CFG_PTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_read_lldp_cfg(%struct.i40e_hw* %0, %struct.i40e_lldp_variables* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_lldp_variables*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_lldp_variables* %1, %struct.i40e_lldp_variables** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %5, align 8
  %9 = icmp ne %struct.i40e_lldp_variables* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %11, i64* %3, align 8
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %14 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %15 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %3, align 8
  br label %49

20:                                               ; preds = %12
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %22 = load i32, i32* @I40E_SR_NVM_CONTROL_WORD, align 4
  %23 = call i64 @i40e_aq_read_nvm(%struct.i40e_hw* %21, i32 %22, i32 0, i32 4, i32* %7, i32 1, i32* null)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = call i32 @i40e_release_nvm(%struct.i40e_hw* %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %49

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @I40E_SR_NVM_MAP_STRUCTURE_TYPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %37 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %5, align 8
  %38 = load i32, i32* @I40E_SR_EMP_MODULE_PTR, align 4
  %39 = load i32, i32* @I40E_SR_LLDP_CFG_PTR, align 4
  %40 = call i64 @_i40e_read_lldp_cfg(%struct.i40e_hw* %36, %struct.i40e_lldp_variables* %37, i32 %38, i32 %39)
  store i64 %40, i64* %6, align 8
  br label %47

41:                                               ; preds = %30
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %43 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %5, align 8
  %44 = load i32, i32* @I40E_EMP_MODULE_PTR, align 4
  %45 = load i32, i32* @I40E_NVM_LLDP_CFG_PTR, align 4
  %46 = call i64 @_i40e_read_lldp_cfg(%struct.i40e_hw* %42, %struct.i40e_lldp_variables* %43, i32 %44, i32 %45)
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %28, %18, %10
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

declare dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i64 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i64 @_i40e_read_lldp_cfg(%struct.i40e_hw*, %struct.i40e_lldp_variables*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
