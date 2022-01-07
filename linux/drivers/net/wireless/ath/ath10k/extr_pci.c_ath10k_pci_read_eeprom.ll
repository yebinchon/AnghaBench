; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@QCA9887_EEPROM_SELECT_READ = common dso_local global i32 0, align 4
@QCA9887_EEPROM_ADDR_LO = common dso_local global i32 0, align 4
@QCA9887_EEPROM_ADDR_HI = common dso_local global i32 0, align 4
@SI_BASE_ADDRESS = common dso_local global i64 0, align 8
@SI_TX_DATA0_OFFSET = common dso_local global i64 0, align 8
@SI_CS_OFFSET = common dso_local global i64 0, align 8
@SI_CS_START = common dso_local global i32 0, align 4
@SI_CS_RX_CNT = common dso_local global i32 0, align 4
@SI_CS_TX_CNT = common dso_local global i32 0, align 4
@SI_CS_DONE_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"timeout while reading device EEPROM at %04x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SI_CS_DONE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to read device EEPROM at %04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SI_RX_DATA0_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32*)* @ath10k_pci_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_read_eeprom(%struct.ath10k* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @QCA9887_EEPROM_SELECT_READ, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @QCA9887_EEPROM_ADDR_LO, align 4
  %13 = call i32 @SM(i32 %11, i32 %12)
  %14 = or i32 %10, %13
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 8
  %17 = load i32, i32* @QCA9887_EEPROM_ADDR_HI, align 4
  %18 = call i32 @SM(i32 %16, i32 %17)
  %19 = or i32 %14, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %21 = load i64, i64* @SI_BASE_ADDRESS, align 8
  %22 = load i64, i64* @SI_TX_DATA0_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ath10k_pci_write32(%struct.ath10k* %20, i64 %23, i32 %24)
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = load i64, i64* @SI_BASE_ADDRESS, align 8
  %28 = load i64, i64* @SI_CS_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @SI_CS_START, align 4
  %31 = call i32 @SM(i32 1, i32 %30)
  %32 = load i32, i32* @SI_CS_RX_CNT, align 4
  %33 = call i32 @SM(i32 1, i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @SI_CS_TX_CNT, align 4
  %36 = call i32 @SM(i32 4, i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @ath10k_pci_write32(%struct.ath10k* %26, i64 %29, i32 %37)
  store i32 100000, i32* %9, align 4
  br label %39

39:                                               ; preds = %54, %3
  %40 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %41 = load i64, i64* @SI_BASE_ADDRESS, align 8
  %42 = load i64, i64* @SI_CS_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ath10k_pci_read32(%struct.ath10k* %40, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SI_CS_DONE_INT, align 4
  %47 = call i64 @MS(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  %53 = call i32 @udelay(i32 10)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %39, label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SI_CS_DONE_INT, align 4
  %60 = call i64 @MS(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ath10k_err(%struct.ath10k* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %93

68:                                               ; preds = %57
  %69 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %70 = load i64, i64* @SI_BASE_ADDRESS, align 8
  %71 = load i64, i64* @SI_CS_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ath10k_pci_write32(%struct.ath10k* %69, i64 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SI_CS_DONE_ERR, align 4
  %77 = call i64 @MS(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ath10k_err(%struct.ath10k* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %93

85:                                               ; preds = %68
  %86 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %87 = load i64, i64* @SI_BASE_ADDRESS, align 8
  %88 = load i64, i64* @SI_RX_DATA0_OFFSET, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @ath10k_pci_read32(%struct.ath10k* %86, i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %85, %79, %62
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @ath10k_pci_read32(%struct.ath10k*, i64) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
