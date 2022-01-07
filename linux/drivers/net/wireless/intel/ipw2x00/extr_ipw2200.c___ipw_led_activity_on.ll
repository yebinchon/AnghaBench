; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c___ipw_led_activity_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c___ipw_led_activity_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32 }

@CFG_NO_LED = common dso_local global i32 0, align 4
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@STATUS_LED_ACT_ON = common dso_local global i32 0, align 4
@IPW_EVENT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Reg: 0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Activity LED On\0A\00", align 1
@LD_TIME_ACT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @__ipw_led_activity_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipw_led_activity_on(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CFG_NO_LED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %64

19:                                               ; preds = %11
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @STATUS_LED_ACT_ON, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %19
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = load i32, i32* @IPW_EVENT_REG, align 4
  %29 = call i32 @ipw_read_reg32(%struct.ipw_priv* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ipw_register_toggle(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %40 = load i32, i32* @IPW_EVENT_REG, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ipw_write_reg32(%struct.ipw_priv* %39, i32 %40, i32 %41)
  %43 = call i32 (i8*, ...) @IPW_DEBUG_LED(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @STATUS_LED_ACT_ON, align 4
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %50 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %49, i32 0, i32 2
  %51 = call i32 @cancel_delayed_work(i32* %50)
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 2
  %54 = load i32, i32* @LD_TIME_ACT_ON, align 4
  %55 = call i32 @schedule_delayed_work(i32* %53, i32 %54)
  br label %64

56:                                               ; preds = %19
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 2
  %59 = call i32 @cancel_delayed_work(i32* %58)
  %60 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %61 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %60, i32 0, i32 2
  %62 = load i32, i32* @LD_TIME_ACT_ON, align 4
  %63 = call i32 @schedule_delayed_work(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %10, %18, %56, %26
  ret void
}

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_register_toggle(i32) #1

declare dso_local i32 @IPW_DEBUG_LED(i8*, ...) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
