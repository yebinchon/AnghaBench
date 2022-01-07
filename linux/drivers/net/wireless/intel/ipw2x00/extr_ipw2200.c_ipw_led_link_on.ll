; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_led_link_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_led_link_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i32, i32, i32, i32 }

@CFG_NO_LED = common dso_local global i32 0, align 4
@EEPROM_NIC_TYPE_1 = common dso_local global i64 0, align 8
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@STATUS_LED_LINK_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Link LED On\0A\00", align 1
@IPW_EVENT_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Reg: 0x%08X\0A\00", align 1
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@LD_TIME_LINK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_led_link_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_led_link_on(%struct.ipw_priv* %0) #0 {
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
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EEPROM_NIC_TYPE_1, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  br label %76

18:                                               ; preds = %11
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %18
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @STATUS_LED_LINK_ON, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %29
  %37 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %39 = load i32, i32* @IPW_EVENT_REG, align 4
  %40 = call i32 @ipw_read_reg32(%struct.ipw_priv* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %42 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ipw_register_toggle(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %51 = load i32, i32* @IPW_EVENT_REG, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ipw_write_reg32(%struct.ipw_priv* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @STATUS_LED_LINK_ON, align 4
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %60 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %36
  %66 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %67 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %66, i32 0, i32 4
  %68 = load i32, i32* @LD_TIME_LINK_ON, align 4
  %69 = call i32 @schedule_delayed_work(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %36
  br label %71

71:                                               ; preds = %70, %29, %18
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %73 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %72, i32 0, i32 3
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IPW_DEBUG_LED(i8*, ...) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_register_toggle(i32) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
