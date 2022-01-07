; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_led_band_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_led_band_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@CFG_NO_LED = common dso_local global i32 0, align 4
@EEPROM_NIC_TYPE_1 = common dso_local global i64 0, align 8
@IPW_EVENT_REG = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Mode LED On: 802.11a\0A\00", align 1
@IEEE_G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Mode LED On: 802.11g\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Mode LED On: 802.11b\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Reg: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_led_band_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_led_band_on(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CFG_NO_LED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EEPROM_NIC_TYPE_1, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %11, %1
  br label %96

23:                                               ; preds = %17
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %29 = load i32, i32* @IPW_EVENT_REG, align 4
  %30 = call i32 @ipw_read_reg32(%struct.ipw_priv* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE_A, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %23
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %83

50:                                               ; preds = %23
  %51 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %52 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %51, i32 0, i32 6
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IEEE_G, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %60 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %82

70:                                               ; preds = %50
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %72 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %77 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %70, %58
  br label %83

83:                                               ; preds = %82, %38
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ipw_register_toggle(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %89 = load i32, i32* @IPW_EVENT_REG, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @ipw_write_reg32(%struct.ipw_priv* %88, i32 %89, i32 %90)
  %92 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %93 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %92, i32 0, i32 2
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %96

96:                                               ; preds = %83, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_LED(i8*, ...) #1

declare dso_local i32 @ipw_register_toggle(i32) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
