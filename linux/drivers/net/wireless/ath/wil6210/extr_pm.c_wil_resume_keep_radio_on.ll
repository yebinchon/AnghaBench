; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_resume_keep_radio_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_resume_keep_radio_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32 }

@wil_status_resuming = common dso_local global i32 0, align 4
@wil_status_suspended = common dso_local global i32 0, align 4
@RGF_USER_CLKS_CTL_0 = common dso_local global i32 0, align 4
@BIT_USER_CLKS_RST_PWGD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"device failed to resume (%d)\0A\00", align 1
@no_fw_recovery = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"wil_down failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"wil_up failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_resume_keep_radio_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_resume_keep_radio_on(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @wil_status_resuming, align 4
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @set_bit(i32 %4, i32 %7)
  %9 = load i32, i32* @wil_status_suspended, align 4
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %11 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clear_bit(i32 %9, i32 %12)
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = load i32, i32* @RGF_USER_CLKS_CTL_0, align 4
  %16 = load i32, i32* @BIT_USER_CLKS_RST_PWGD, align 4
  %17 = call i32 @wil_c(%struct.wil6210_priv* %14, i32 %15, i32 %16)
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %19 = call i32 @wil_unmask_irq(%struct.wil6210_priv* %18)
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wil6210_bus_request(%struct.wil6210_priv* %20, i32 %23)
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %26 = call i32 @wmi_resume(%struct.wil6210_priv* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %1
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @wil_err(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* @no_fw_recovery, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %38 = call i32 @wil_down(%struct.wil6210_priv* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @wil_err(%struct.wil6210_priv* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %47 = call i32 @wil_up(%struct.wil6210_priv* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @wil_err(%struct.wil6210_priv* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %57 = call i32 @wil_pm_wake_connected_net_queues(%struct.wil6210_priv* %56)
  br label %58

58:                                               ; preds = %55, %50, %41, %35
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @wil_status_suspended, align 4
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %64 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_bit(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @wil_c(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_unmask_irq(%struct.wil6210_priv*) #1

declare dso_local i32 @wil6210_bus_request(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wmi_resume(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_down(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_up(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_pm_wake_connected_net_queues(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
