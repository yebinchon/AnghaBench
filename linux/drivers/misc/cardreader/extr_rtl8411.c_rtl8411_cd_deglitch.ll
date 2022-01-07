; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_cd_deglitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_cd_deglitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@RTSX_BIPR = common dso_local global i32 0, align 4
@CARD_EXIST = common dso_local global i32 0, align 4
@CD_PAD_CTL = common dso_local global i32 0, align 4
@CD_DISABLE_MASK = common dso_local global i32 0, align 4
@CD_ENABLE = common dso_local global i32 0, align 4
@EFUSE_CONTENT = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@BPP_POWER_MASK = common dso_local global i32 0, align 4
@BPP_POWER_5_PERCENT_ON = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@BPP_POWER_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"After CD deglitch, card_exist = 0x%x\0A\00", align 1
@MS_CD_EN_ONLY = common dso_local global i32 0, align 4
@SD_CD_EN_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rtl8411_cd_deglitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8411_cd_deglitch(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = load i32, i32* @RTSX_BIPR, align 4
  %7 = call i32 @rtsx_pci_readl(%struct.rtsx_pcr* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @CARD_EXIST, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = load i32, i32* @CD_PAD_CTL, align 4
  %16 = load i32, i32* @CD_DISABLE_MASK, align 4
  %17 = load i32, i32* @CD_ENABLE, align 4
  %18 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %20 = load i32, i32* @EFUSE_CONTENT, align 4
  %21 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %19, i32 %20, i32 224, i32 0)
  store i32 0, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @hweight32(i32 %23)
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %28 = load i32, i32* @CARD_PWR_CTL, align 4
  %29 = load i32, i32* @BPP_POWER_MASK, align 4
  %30 = load i32, i32* @BPP_POWER_5_PERCENT_ON, align 4
  %31 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %27, i32 %28, i32 %29, i32 %30)
  %32 = call i32 @msleep(i32 100)
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %34 = load i32, i32* @RTSX_BIPR, align 4
  %35 = call i32 @rtsx_pci_readl(%struct.rtsx_pcr* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MS_EXIST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @MS_EXIST, align 4
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %26
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SD_EXIST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @SD_EXIST, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %53 = load i32, i32* @CARD_PWR_CTL, align 4
  %54 = load i32, i32* @BPP_POWER_MASK, align 4
  %55 = load i32, i32* @BPP_POWER_OFF, align 4
  %56 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pcr_dbg(%struct.rtsx_pcr* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %51, %22
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MS_EXIST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %67 = load i32, i32* @EFUSE_CONTENT, align 4
  %68 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %66, i32 %67, i32 224, i32 64)
  %69 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %70 = load i32, i32* @CD_PAD_CTL, align 4
  %71 = load i32, i32* @CD_DISABLE_MASK, align 4
  %72 = load i32, i32* @MS_CD_EN_ONLY, align 4
  %73 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %69, i32 %70, i32 %71, i32 %72)
  br label %89

74:                                               ; preds = %60
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SD_EXIST, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %81 = load i32, i32* @EFUSE_CONTENT, align 4
  %82 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %80, i32 %81, i32 224, i32 128)
  %83 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %84 = load i32, i32* @CD_PAD_CTL, align 4
  %85 = load i32, i32* @CD_DISABLE_MASK, align 4
  %86 = load i32, i32* @SD_CD_EN_ONLY, align 4
  %87 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %83, i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %74
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @rtsx_pci_readl(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
