; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_init_nvm_params_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_init_nvm_params_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i32, i32, i32, i32, i32, i32, i32 }

@EECD = common dso_local global i32 0, align 4
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
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
  %45 = load i32, i32* @e1000_nvm_eeprom_spi, align 4
  %46 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @E1000_EECD_SIZE_EX_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @E1000_EECD_SIZE_EX_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i64, i64* @NVM_WORD_SIZE_BASE_SHIFT, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 14
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  store i32 14, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  ret i32 0
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
