; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_hw_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_hw_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@ON = common dso_local global i32 0, align 4
@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4313 = common dso_local global i64 0, align 8
@BFL_FEM_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_b_hw_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_hw_up(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %3 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %3, i32 0, i32 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @brcms_dbg_info(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %21 = load i32, i32* @ON, align 4
  %22 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %20, i32 %21)
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ai_clkctl_init(i32 %25)
  %27 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %28 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  %29 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %27, i32 %28)
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wlc_phy_por_inform(i32 %34)
  %36 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %45 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BFL_FEM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %12
  %51 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %52 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ai_get_chip_id(i32 %53)
  %55 = load i64, i64* @BCMA_CHIP_ID_BCM4313, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 4688
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BFL_FEM_BT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ai_epa_4313war(i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  br label %75

75:                                               ; preds = %11, %74, %50, %12
  ret void
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i32 @brcms_b_xtal(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @ai_clkctl_init(i32) #1

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @wlc_phy_por_inform(i32) #1

declare dso_local i64 @ai_get_chip_id(i32) #1

declare dso_local i32 @ai_epa_4313war(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
