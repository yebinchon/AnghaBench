; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_switch_macfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_switch_macfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@BCMA_CHIP_ID_BCM43224 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43225 = common dso_local global i64 0, align 8
@WL_SPURAVOID_ON2 = common dso_local global i64 0, align 8
@tsf_clk_frac_l = common dso_local global i32 0, align 4
@tsf_clk_frac_h = common dso_local global i32 0, align 4
@WL_SPURAVOID_ON1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_b_switch_macfreq(%struct.brcms_hardware* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bcma_device*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 2
  %8 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  store %struct.bcma_device* %8, %struct.bcma_device** %5, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ai_get_chip_id(i32 %11)
  %13 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ai_get_chip_id(i32 %18)
  %20 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %15, %2
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @WL_SPURAVOID_ON2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %28 = load i32, i32* @tsf_clk_frac_l, align 4
  %29 = call i32 @D11REGOFFS(i32 %28)
  %30 = call i32 @bcma_write16(%struct.bcma_device* %27, i32 %29, i32 8322)
  %31 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %32 = load i32, i32* @tsf_clk_frac_h, align 4
  %33 = call i32 @D11REGOFFS(i32 %32)
  %34 = call i32 @bcma_write16(%struct.bcma_device* %31, i32 %33, i32 8)
  br label %58

35:                                               ; preds = %22
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @WL_SPURAVOID_ON1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %41 = load i32, i32* @tsf_clk_frac_l, align 4
  %42 = call i32 @D11REGOFFS(i32 %41)
  %43 = call i32 @bcma_write16(%struct.bcma_device* %40, i32 %42, i32 21313)
  %44 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %45 = load i32, i32* @tsf_clk_frac_h, align 4
  %46 = call i32 @D11REGOFFS(i32 %45)
  %47 = call i32 @bcma_write16(%struct.bcma_device* %44, i32 %46, i32 8)
  br label %57

48:                                               ; preds = %35
  %49 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %50 = load i32, i32* @tsf_clk_frac_l, align 4
  %51 = call i32 @D11REGOFFS(i32 %50)
  %52 = call i32 @bcma_write16(%struct.bcma_device* %49, i32 %51, i32 34953)
  %53 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %54 = load i32, i32* @tsf_clk_frac_h, align 4
  %55 = call i32 @D11REGOFFS(i32 %54)
  %56 = call i32 @bcma_write16(%struct.bcma_device* %53, i32 %55, i32 8)
  br label %57

57:                                               ; preds = %48, %39
  br label %58

58:                                               ; preds = %57, %26
  br label %89

59:                                               ; preds = %15
  %60 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @BRCMS_ISLCNPHY(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @WL_SPURAVOID_ON1, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %71 = load i32, i32* @tsf_clk_frac_l, align 4
  %72 = call i32 @D11REGOFFS(i32 %71)
  %73 = call i32 @bcma_write16(%struct.bcma_device* %70, i32 %72, i32 31968)
  %74 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %75 = load i32, i32* @tsf_clk_frac_h, align 4
  %76 = call i32 @D11REGOFFS(i32 %75)
  %77 = call i32 @bcma_write16(%struct.bcma_device* %74, i32 %76, i32 12)
  br label %87

78:                                               ; preds = %65
  %79 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %80 = load i32, i32* @tsf_clk_frac_l, align 4
  %81 = call i32 @D11REGOFFS(i32 %80)
  %82 = call i32 @bcma_write16(%struct.bcma_device* %79, i32 %81, i32 52429)
  %83 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %84 = load i32, i32* @tsf_clk_frac_h, align 4
  %85 = call i32 @D11REGOFFS(i32 %84)
  %86 = call i32 @bcma_write16(%struct.bcma_device* %83, i32 %85, i32 12)
  br label %87

87:                                               ; preds = %78, %69
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %58
  ret void
}

declare dso_local i64 @ai_get_chip_id(i32) #1

declare dso_local i32 @bcma_write16(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i64 @BRCMS_ISLCNPHY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
