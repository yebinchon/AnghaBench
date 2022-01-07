; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_init_nvm_params_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_base.c_igc_init_nvm_params_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_nvm_info }
%struct.igc_nvm_info = type { i32, i32, i32, i32, i32, i32 }

@IGC_EECD = common dso_local global i32 0, align 4
@IGC_EECD_SIZE_EX_MASK = common dso_local global i32 0, align 4
@IGC_EECD_SIZE_EX_SHIFT = common dso_local global i32 0, align 4
@NVM_WORD_SIZE_BASE_SHIFT = common dso_local global i64 0, align 8
@igc_nvm_eeprom_spi = common dso_local global i32 0, align 4
@IGC_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_hw*)* @igc_init_nvm_params_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_init_nvm_params_base(%struct.igc_hw* %0) #0 {
  %2 = alloca %struct.igc_hw*, align 8
  %3 = alloca %struct.igc_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %2, align 8
  %6 = load %struct.igc_hw*, %struct.igc_hw** %2, align 8
  %7 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %6, i32 0, i32 0
  store %struct.igc_nvm_info* %7, %struct.igc_nvm_info** %3, align 8
  %8 = load i32, i32* @IGC_EECD, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IGC_EECD_SIZE_EX_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IGC_EECD_SIZE_EX_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @NVM_WORD_SIZE_BASE_SHIFT, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 15, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* @igc_nvm_eeprom_spi, align 4
  %25 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %26 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %30 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %32 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %31, i32 0, i32 0
  store i32 8, i32* %32, align 4
  %33 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %34 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IGC_EECD_ADDR_BITS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 32, i32 8
  %41 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %42 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IGC_EECD_ADDR_BITS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 16, i32 8
  %49 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %50 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %52 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BIT(i32 15)
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %23
  %57 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %3, align 8
  %58 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %57, i32 0, i32 2
  store i32 128, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %23
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
