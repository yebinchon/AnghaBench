; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_down_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_down_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_b_down_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_down_finish(%struct.brcms_hardware* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %15, i32 0, i32 6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wlc_phy_hw_state_upd(i32 %19, i32 0)
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %21, i32 0, i32 5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i32 @brcms_deviceremoved(%struct.TYPE_8__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %12
  %28 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %32, i32 0, i32 6
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wlc_phy_hw_clk_state_upd(i32 %36, i32 0)
  %38 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %39 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %38, i32 0, i32 5
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @brcms_c_flushqueues(%struct.TYPE_8__* %40)
  br label %92

42:                                               ; preds = %12
  %43 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %44 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %43, i32 0, i32 3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = call i64 @bcma_core_is_enabled(%struct.TYPE_9__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %50 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %49, i32 0, i32 3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* @maccontrol, align 4
  %53 = call i32 @D11REGOFFS(i32 %52)
  %54 = call i32 @bcma_read32(%struct.TYPE_9__* %51, i32 %53)
  %55 = load i32, i32* @MCTL_EN_MAC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %59, i32 0, i32 5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @brcms_c_suspend_mac_and_wait(%struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %58, %48
  %64 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %65 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %64, i32 0, i32 5
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @brcms_reset(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  %74 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %75 = call i32 @brcms_c_coredisable(%struct.brcms_hardware* %74)
  br label %76

76:                                               ; preds = %63, %42
  %77 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %78 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %82, i32 0, i32 3
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bcma_host_pci_down(i32 %86)
  %88 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %89 = load i32, i32* @OFF, align 4
  %90 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %88, i32 %89)
  br label %91

91:                                               ; preds = %81, %76
  br label %92

92:                                               ; preds = %91, %27
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %10
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @wlc_phy_hw_state_upd(i32, i32) #1

declare dso_local i32 @brcms_deviceremoved(%struct.TYPE_8__*) #1

declare dso_local i32 @wlc_phy_hw_clk_state_upd(i32, i32) #1

declare dso_local i32 @brcms_c_flushqueues(%struct.TYPE_8__*) #1

declare dso_local i64 @bcma_core_is_enabled(%struct.TYPE_9__*) #1

declare dso_local i32 @bcma_read32(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.TYPE_8__*) #1

declare dso_local i64 @brcms_reset(i32) #1

declare dso_local i32 @brcms_c_coredisable(%struct.brcms_hardware*) #1

declare dso_local i32 @bcma_host_pci_down(i32) #1

declare dso_local i32 @brcms_b_xtal(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
