; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_init_nvm_params_82571.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_init_nvm_params_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_nvm_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EECD = common dso_local global i32 0, align 4
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i32 0, align 4
@E1000_EECD_AUPDEN = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i32 0, align 4
@e1000_get_hw_semaphore_82574 = common dso_local global i32 0, align 4
@e1000_put_hw_semaphore_82574 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_nvm_info* %7, %struct.e1000_nvm_info** %3, align 8
  %8 = load i32, i32* @EECD, align 4
  %9 = call i32 @er32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 128, label %22
  ]

17:                                               ; preds = %1
  %18 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %18, i32 0, i32 3
  store i32 32, i32* %19, align 4
  %20 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %20, i32 0, i32 4
  store i32 16, i32* %21, align 4
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %23, i32 0, i32 3
  store i32 8, i32* %24, align 4
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 4
  store i32 8, i32* %26, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 32, i32 8
  %34 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 16, i32 8
  %42 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %27, %22, %17
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %68 [
    i32 132, label %49
    i32 131, label %49
    i32 130, label %49
  ]

49:                                               ; preds = %44, %44, %44
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 15
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* @e1000_nvm_flash_hw, align 4
  %56 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %58, i32 0, i32 5
  store i32 2048, i32* %59, align 4
  %60 = load i32, i32* @E1000_EECD_AUPDEN, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @EECD, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ew32(i32 %64, i32 %65)
  br label %88

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %44, %67
  %69 = load i32, i32* @e1000_nvm_eeprom_spi, align 4
  %70 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @E1000_EECD_SIZE_EX_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @E1000_EECD_SIZE_EX_SHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @NVM_WORD_SIZE_BASE_SHIFT, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %80, 14
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  store i32 14, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %54
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %102 [
    i32 131, label %93
    i32 130, label %93
  ]

93:                                               ; preds = %88, %88
  %94 = load i32, i32* @e1000_get_hw_semaphore_82574, align 4
  %95 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @e1000_put_hw_semaphore_82574, align 4
  %99 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  br label %103

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %93
  ret i32 0
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
