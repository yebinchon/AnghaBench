; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@MAX_EEPROM_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i64 0, align 8
@E2P_CMD_EPC_CMD_EWEN_ = common dso_local global i64 0, align 8
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_WRITE_ = common dso_local global i64 0, align 8
@E2P_CMD_EPC_ADDR_MASK_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, i64, i64, i64*)* @lan743x_eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_eeprom_write(%struct.lan743x_adapter* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan743x_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* @MAX_EEPROM_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %83

21:                                               ; preds = %4
  %22 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %23 = call i32 @lan743x_eeprom_confirm_not_busy(%struct.lan743x_adapter* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %83

28:                                               ; preds = %21
  %29 = load i64, i64* @E2P_CMD_EPC_BUSY_, align 8
  %30 = load i64, i64* @E2P_CMD_EPC_CMD_EWEN_, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %11, align 8
  %32 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %33 = load i32, i32* @E2P_CMD, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %32, i32 %33, i64 %34)
  %36 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %37 = call i32 @lan743x_eeprom_wait(%struct.lan743x_adapter* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %83

42:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = load i64*, i64** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %55 = load i32, i32* @E2P_DATA, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %54, i32 %55, i64 %56)
  %58 = load i64, i64* @E2P_CMD_EPC_BUSY_, align 8
  %59 = load i64, i64* @E2P_CMD_EPC_CMD_WRITE_, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @E2P_CMD_EPC_ADDR_MASK_, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* %11, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %67 = load i32, i32* @E2P_CMD, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %66, i32 %67, i64 %68)
  %70 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %71 = call i32 @lan743x_eeprom_wait(%struct.lan743x_adapter* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %48
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %83

76:                                               ; preds = %48
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %43

82:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %74, %40, %26, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @lan743x_eeprom_confirm_not_busy(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i64) #1

declare dso_local i32 @lan743x_eeprom_wait(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
