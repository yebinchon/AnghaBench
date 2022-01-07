; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_stop_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_stop_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@IPW_RESET_REG = common dso_local global i32 0, align 4
@IPW_RESET_REG_STOP_MASTER = common dso_local global i32 0, align 4
@IPW_RESET_REG_MASTER_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"wait for reg master disabled failed after 500ms\0A\00", align 1
@CBD_RESET_REG_PRINCETON_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_stop_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_stop_nic(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %6 = load i32, i32* @IPW_RESET_REG, align 4
  %7 = load i32, i32* @IPW_RESET_REG_STOP_MASTER, align 4
  %8 = call i32 @ipw_write32(%struct.ipw_priv* %5, i32 %6, i32 %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %10 = load i32, i32* @IPW_RESET_REG, align 4
  %11 = load i32, i32* @IPW_RESET_REG_MASTER_DISABLED, align 4
  %12 = call i32 @ipw_poll_bit(%struct.ipw_priv* %9, i32 %10, i32 %11, i32 500)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %20 = load i32, i32* @IPW_RESET_REG, align 4
  %21 = load i32, i32* @CBD_RESET_REG_PRINCETON_RESET, align 4
  %22 = call i32 @ipw_set_bit(%struct.ipw_priv* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_poll_bit(%struct.ipw_priv*, i32, i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @ipw_set_bit(%struct.ipw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
