; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_power_cycle_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_power_cycle_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Power cycling the hardware.\0A\00", align 1
@IPW_REG_RESET_REG = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_STOP_MASTER = common dso_local global i32 0, align 4
@IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_MASTER_DISABLED = common dso_local global i32 0, align 4
@STATUS_RESET_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"exit - waited too long for master assert stop\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_SW_RESET = common dso_local global i32 0, align 4
@STATUS_RUNNING = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_power_cycle_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_power_cycle_adapter(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %6 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %8 = call i32 @ipw2100_hw_set_gpio(%struct.ipw2100_priv* %7)
  %9 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IPW_REG_RESET_REG, align 4
  %13 = load i32, i32* @IPW_AUX_HOST_RESET_REG_STOP_MASTER, align 4
  %14 = call i32 @write_register(i32 %11, i32 %12, i32 %13)
  store i32 5, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i32, i32* @IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY, align 4
  %17 = call i32 @udelay(i32 %16)
  %18 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPW_REG_RESET_REG, align 4
  %22 = call i32 @read_register(i32 %20, i32 %21, i32* %4)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IPW_AUX_HOST_RESET_REG_MASTER_DISABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %33

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %15, label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* @STATUS_RESET_PENDING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %67

46:                                               ; preds = %33
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IPW_REG_RESET_REG, align 4
  %51 = load i32, i32* @IPW_AUX_HOST_RESET_REG_SW_RESET, align 4
  %52 = call i32 @write_register(i32 %49, i32 %50, i32 %51)
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %54 = call i32 @ipw2100_reset_fatalerror(%struct.ipw2100_priv* %53)
  %55 = load i32, i32* @STATUS_RUNNING, align 4
  %56 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @STATUS_ENABLED, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %46, %42
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw2100_hw_set_gpio(%struct.ipw2100_priv*) #1

declare dso_local i32 @write_register(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_register(i32, i32, i32*) #1

declare dso_local i32 @ipw2100_reset_fatalerror(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
