; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_set_l1off_cfg_sub_d0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_set_l1off_cfg_sub_d0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i32, i32 }

@RTSX_BIPR = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4
@ASPM_L1_1_EN = common dso_local global i32 0, align 4
@ASPM_L1_2_EN = common dso_local global i32 0, align 4
@LTR_L1SS_PWR_GATE_CHECK_CARD_EN = common dso_local global i32 0, align 4
@L1OFF_MBIAS2_EN_5250 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i32)* @rts5260_set_l1off_cfg_sub_d0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_set_l1off_cfg_sub_d0(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_cr_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %12 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %11, i32 0, i32 0
  store %struct.rtsx_cr_option* %12, %struct.rtsx_cr_option** %5, align 8
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %14 = load i32, i32* @RTSX_BIPR, align 4
  %15 = call i32 @rtsx_pci_readl(%struct.rtsx_pcr* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SD_EXIST, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MS_EXIST, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %24 = load i32, i32* @ASPM_L1_1_EN, align 4
  %25 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %27 = load i32, i32* @ASPM_L1_2_EN, align 4
  %28 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %36 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %34, %31
  br label %47

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %5, align 8
  %44 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50, %47
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %55 = load i32, i32* @LTR_L1SS_PWR_GATE_CHECK_CARD_EN, align 4
  %56 = call i32 @rtsx_check_dev_flag(%struct.rtsx_pcr* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @L1OFF_MBIAS2_EN_5250, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @L1OFF_MBIAS2_EN_5250, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @rtsx_set_l1off_sub(%struct.rtsx_pcr* %73, i32 %74)
  ret void
}

declare dso_local i32 @rtsx_pci_readl(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_check_dev_flag(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_set_l1off_sub(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
