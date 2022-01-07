; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i64, i64 }
%struct.host_command = type { i32, i32*, i32, i32 }

@POWER_MODE = common dso_local global i32 0, align 4
@IPW_POWER_MODE_CAM = common dso_local global i32 0, align 4
@IPW_POWER_ENABLED = common dso_local global i32 0, align 4
@DFTL_IBSS_TX_POWER = common dso_local global i64 0, align 8
@IBSS = common dso_local global i64 0, align 8
@TX_POWER_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw2100_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_power_mode(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_command, align 8
  %7 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 2
  %11 = load i32, i32* @POWER_MODE, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %18 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %17, %struct.host_command* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IPW_POWER_MODE_CAM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IPW_POWER_LEVEL(i32 %30)
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %33 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %40

34:                                               ; preds = %23
  %35 = load i32, i32* @IPW_POWER_ENABLED, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %27
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @IPW_POWER_LEVEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
