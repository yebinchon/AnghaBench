; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_nvm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_nvm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_nvm_access = type { i64, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_NVM_LCB = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"i40e_nvmupd_nvm_write mod 0x%x off 0x%x len 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i40e_nvmupd_nvm_write status %d aq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_nvm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_nvmupd_nvm_write(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_asq_cmd_details, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @i40e_nvmupd_get_transaction(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %20 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @i40e_nvmupd_get_module(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @I40E_NVM_LCB, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %27 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i40e_nvmupd_get_preservation_flags(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = call i32 @memset(%struct.i40e_asq_cmd_details* %10, i32 0, i32 8)
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %10, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %37 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %40 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @i40e_aq_update_nvm(%struct.i40e_hw* %34, i32 %35, i32 %38, i32 %42, i32* %43, i32 %44, i32 %45, %struct.i40e_asq_cmd_details* %10)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %4
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %51 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %54 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_nvm_access, %struct.i40e_nvm_access* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %50, i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i64 %58)
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %61 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %65 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.i40e_hw*, i32, i8*, i32, i32, ...) @i40e_debug(%struct.i40e_hw* %60, i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @i40e_aq_rc_to_posix(i64 %69, i32 %73)
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %49, %4
  %77 = load i64, i64* %9, align 8
  ret i64 %77
}

declare dso_local i32 @i40e_nvmupd_get_transaction(i32) #1

declare dso_local i32 @i40e_nvmupd_get_module(i32) #1

declare dso_local i32 @i40e_nvmupd_get_preservation_flags(i32) #1

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i64 @i40e_aq_update_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
