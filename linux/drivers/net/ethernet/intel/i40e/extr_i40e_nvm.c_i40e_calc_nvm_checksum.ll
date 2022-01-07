; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_calc_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_calc_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_virt_mem = type { i64 }

@I40E_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i32 0, align 4
@I40E_SR_VPD_PTR = common dso_local global i32 0, align 4
@I40E_ERR_NVM_CHECKSUM = common dso_local global i64 0, align 8
@I40E_SR_PCIE_ALT_AUTO_LOAD_PTR = common dso_local global i32 0, align 4
@I40E_SR_SW_CHECKSUM_WORD = common dso_local global i32 0, align 4
@I40E_SR_VPD_MODULE_MAX_SIZE = common dso_local global i32 0, align 4
@I40E_SR_PCIE_ALT_MODULE_MAX_SIZE = common dso_local global i32 0, align 4
@I40E_SR_SW_CHECKSUM_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, i32*)* @i40e_calc_nvm_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_calc_nvm_checksum(%struct.i40e_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_virt_mem, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @i40e_allocate_virt_mem(%struct.i40e_hw* %13, %struct.i40e_virt_mem* %6, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %113

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.i40e_virt_mem, %struct.i40e_virt_mem* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %10, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %27 = load i32, i32* @I40E_SR_VPD_PTR, align 4
  %28 = call i64 @__i40e_read_nvm_word(%struct.i40e_hw* %26, i32 %27, i32* %9)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @I40E_ERR_NVM_CHECKSUM, align 8
  store i64 %32, i64* %5, align 8
  br label %113

33:                                               ; preds = %22
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %35 = load i32, i32* @I40E_SR_PCIE_ALT_AUTO_LOAD_PTR, align 4
  %36 = call i64 @__i40e_read_nvm_word(%struct.i40e_hw* %34, i32 %35, i32* %7)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @I40E_ERR_NVM_CHECKSUM, align 8
  store i64 %40, i64* %5, align 8
  br label %113

41:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %104, %41
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %45 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  %52 = srem i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  store i32 %55, i32* %12, align 4
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @__i40e_read_nvm_buffer(%struct.i40e_hw* %56, i32 %57, i32* %12, i32* %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* @I40E_ERR_NVM_CHECKSUM, align 8
  store i64 %63, i64* %5, align 8
  br label %113

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @I40E_SR_SW_CHECKSUM_WORD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %104

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @I40E_SR_VPD_MODULE_MAX_SIZE, align 4
  %78 = sdiv i32 %77, 2
  %79 = add nsw i32 %76, %78
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %104

82:                                               ; preds = %74, %70
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @I40E_SR_PCIE_ALT_MODULE_MAX_SIZE, align 4
  %90 = sdiv i32 %89, 2
  %91 = add nsw i32 %88, %90
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %104

94:                                               ; preds = %86, %82
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 4
  %98 = srem i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %94, %93, %81, %69
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %42

107:                                              ; preds = %42
  %108 = load i64, i64* @I40E_SR_SW_CHECKSUM_BASE, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32*, i32** %4, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %62, %39, %31, %21
  %114 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %115 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %114, %struct.i40e_virt_mem* %6)
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local i64 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*, i32) #1

declare dso_local i64 @__i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i64 @__i40e_read_nvm_buffer(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
