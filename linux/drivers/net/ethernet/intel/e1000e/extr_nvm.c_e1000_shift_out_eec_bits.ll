; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_nvm.c_e1000_shift_out_eec_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_nvm.c_e1000_shift_out_eec_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32 }

@EECD = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_DO = common dso_local global i32 0, align 4
@E1000_EECD_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32)* @e1000_shift_out_eec_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_shift_out_eec_bits(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_nvm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_nvm_info* %11, %struct.e1000_nvm_info** %7, align 8
  %12 = load i32, i32* @EECD, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %18 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @E1000_EECD_DO, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %3
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* @E1000_EECD_DI, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @E1000_EECD_DI, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load i32, i32* @EECD, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ew32(i32 %41, i32 %42)
  %44 = call i32 (...) @e1e_flush()
  %45 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %46 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @udelay(i32 %47)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = call i32 @e1000_raise_eec_clk(%struct.e1000_hw* %49, i32* %8)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %52 = call i32 @e1000_lower_eec_clk(%struct.e1000_hw* %51, i32* %8)
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %27, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @E1000_EECD_DI, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @EECD, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ew32(i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_raise_eec_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_eec_clk(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
