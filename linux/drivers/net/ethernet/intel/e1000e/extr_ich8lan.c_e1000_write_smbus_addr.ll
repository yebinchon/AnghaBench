; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_smbus_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_smbus_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@STRAP = common dso_local global i32 0, align 4
@E1000_STRAP_SMT_FREQ_MASK = common dso_local global i32 0, align 4
@E1000_STRAP_SMT_FREQ_SHIFT = common dso_local global i32 0, align 4
@E1000_STRAP_SMBUS_ADDRESS_MASK = common dso_local global i32 0, align 4
@HV_SMB_ADDR = common dso_local global i32 0, align 4
@HV_SMB_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_STRAP_SMBUS_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@HV_SMB_ADDR_PEC_EN = common dso_local global i32 0, align 4
@HV_SMB_ADDR_VALID = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@HV_SMB_ADDR_FREQ_MASK = common dso_local global i32 0, align 4
@HV_SMB_ADDR_FREQ_LOW_SHIFT = common dso_local global i32 0, align 4
@HV_SMB_ADDR_FREQ_HIGH_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unsupported SMB frequency in PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_write_smbus_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_smbus_addr(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @STRAP, align 4
  %9 = call i32 @er32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @E1000_STRAP_SMT_FREQ_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @E1000_STRAP_SMT_FREQ_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @E1000_STRAP_SMBUS_ADDRESS_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = load i32, i32* @HV_SMB_ADDR, align 4
  %20 = call i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %18, i32 %19, i32* %4)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %2, align 8
  br label %78

25:                                               ; preds = %1
  %26 = load i32, i32* @HV_SMB_ADDR_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @E1000_STRAP_SMBUS_ADDRESS_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @HV_SMB_ADDR_PEC_EN, align 4
  %36 = load i32, i32* @HV_SMB_ADDR_VALID, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @e1000_phy_i217, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* @HV_SMB_ADDR_FREQ_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @BIT(i32 0)
  %57 = and i32 %55, %56
  %58 = load i32, i32* @HV_SMB_ADDR_FREQ_LOW_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @BIT(i32 1)
  %64 = and i32 %62, %63
  %65 = load i32, i32* @HV_SMB_ADDR_FREQ_HIGH_SHIFT, align 4
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 %64, %66
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %46
  %71 = call i32 @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %50
  br label %73

73:                                               ; preds = %72, %25
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = load i32, i32* @HV_SMB_ADDR, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %74, i32 %75, i32 %76)
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %73, %23
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
