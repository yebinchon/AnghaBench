; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_radio_read_hwdisabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_radio_read_hwdisabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, i32 }

@ON = common dso_local global i32 0, align 4
@SICF_PCLKE = common dso_local global i32 0, align 4
@phydebug = common dso_local global i32 0, align 4
@PDBG_RFD = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_b_radio_read_hwdisabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_radio_read_hwdisabled(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %14 = load i32, i32* @ON, align 4
  %15 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @D11REV_GE(i32 %25, i32 18)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @SICF_PCLKE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bcma_core_enable(i32 %35, i32 %36)
  %38 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %39 = call i32 @brcms_c_mctrl_reset(%struct.brcms_hardware* %38)
  br label %40

40:                                               ; preds = %32, %16
  %41 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @phydebug, align 4
  %45 = call i32 @D11REGOFFS(i32 %44)
  %46 = call i32 @bcma_read32(i32 %43, i32 %45)
  %47 = load i32, i32* @PDBG_RFD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %40
  %54 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %55 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bcma_core_disable(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %53, %40
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %63 = load i32, i32* @OFF, align 4
  %64 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @brcms_b_xtal(%struct.brcms_hardware*, i32) #1

declare dso_local i64 @D11REV_GE(i32, i32) #1

declare dso_local i32 @bcma_core_enable(i32, i32) #1

declare dso_local i32 @brcms_c_mctrl_reset(%struct.brcms_hardware*) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_core_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
