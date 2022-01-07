; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_nvm_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_nvm_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i64, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_NVM_LCB = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i40e_nvmupd_nvm_erase mod 0x%x  off 0x%x len 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i40e_nvmupd_nvm_erase status %d aq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*)* @i40e_nvmupd_nvm_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_nvmupd_nvm_erase(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_nvm_access*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_asq_cmd_details, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i40e_nvmupd_get_transaction(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i40e_nvmupd_get_module(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @I40E_NVM_LCB, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = call i32 @memset(%struct.i40e_asq_cmd_details* %8, i32 0, i32 8)
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %8, i32 0, i32 0
  store i32* %25, i32** %26, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %30 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @i40e_aq_erase_nvm(%struct.i40e_hw* %27, i32 %28, i32 %31, i32 %35, i32 %36, %struct.i40e_asq_cmd_details* %8)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %3
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %42 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %41, i32 %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i64 %49)
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %52 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %51, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i40e_aq_rc_to_posix(i64 %60, i32 %64)
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %40, %3
  %68 = load i64, i64* %7, align 8
  ret i64 %68
}

declare dso_local i32 @i40e_nvmupd_get_transaction(i32) #1

declare dso_local i32 @i40e_nvmupd_get_module(i32) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i64 @i40e_aq_erase_nvm(%struct.i40e_hw*, i32, i32, i32, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
