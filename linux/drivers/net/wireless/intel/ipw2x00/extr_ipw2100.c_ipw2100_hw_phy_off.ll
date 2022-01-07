; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_hw_phy_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_hw_phy_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }
%struct.host_command = type { i32, i32, i32 }

@CARD_DISABLE_PHY_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CARD_DISABLE_PHY_OFF\0A\00", align 1
@IPW2100_CONTROL_REG = common dso_local global i32 0, align 4
@IPW2100_COMMAND = common dso_local global i32 0, align 4
@IPW2100_CONTROL_PHY_OFF = common dso_local global i32 0, align 4
@IPW2100_COMMAND_PHY_OFF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HW_PHY_OFF_LOOP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_hw_phy_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_hw_phy_off(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca %struct.host_command, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 2
  %12 = load i32, i32* @CARD_DISABLE_PHY_OFF, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %15 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %14, %struct.host_command* %4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 2500
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPW2100_CONTROL_REG, align 4
  %29 = call i32 @read_nic_dword(i32 %27, i32 %28, i32* %7)
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IPW2100_COMMAND, align 4
  %34 = call i32 @read_nic_dword(i32 %32, i32 %33, i32* %8)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IPW2100_CONTROL_PHY_OFF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IPW2100_COMMAND_PHY_OFF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %54

45:                                               ; preds = %39, %24
  %46 = call i32 (i32, ...) bitcast (i32 (...)* @msecs_to_jiffies to i32 (i32, ...)*)(i32 50)
  %47 = call i32 @schedule_timeout_uninterruptible(i32 %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %44, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @read_nic_dword(i32, i32, i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
