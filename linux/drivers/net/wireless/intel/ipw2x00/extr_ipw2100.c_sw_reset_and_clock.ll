; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_sw_reset_and_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_sw_reset_and_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }

@IPW_REG_RESET_REG = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_SW_RESET = common dso_local global i32 0, align 4
@IPW_WAIT_RESET_ARC_COMPLETE_DELAY = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_PRINCETON_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPW_REG_GP_CNTRL = common dso_local global i32 0, align 4
@IPW_AUX_HOST_GP_CNTRL_BIT_INIT_DONE = common dso_local global i32 0, align 4
@IPW_WAIT_CLOCK_STABILIZATION_DELAY = common dso_local global i32 0, align 4
@IPW_AUX_HOST_GP_CNTRL_BIT_CLOCK_READY = common dso_local global i32 0, align 4
@IPW_AUX_HOST_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @sw_reset_and_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sw_reset_and_clock(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %6 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IPW_REG_RESET_REG, align 4
  %10 = load i32, i32* @IPW_AUX_HOST_RESET_REG_SW_RESET, align 4
  %11 = call i32 @write_register(i32 %8, i32 %9, i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load i32, i32* @IPW_WAIT_RESET_ARC_COMPLETE_DELAY, align 4
  %17 = call i32 @udelay(i32 %16)
  %18 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPW_REG_RESET_REG, align 4
  %22 = call i32 @read_register(i32 %20, i32 %21, i32* %5)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IPW_AUX_HOST_RESET_REG_PRINCETON_RESET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %32

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %12

32:                                               ; preds = %27, %12
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1000
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %86

38:                                               ; preds = %32
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IPW_REG_GP_CNTRL, align 4
  %43 = load i32, i32* @IPW_AUX_HOST_GP_CNTRL_BIT_INIT_DONE, align 4
  %44 = call i32 @write_register(i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %63, %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 10000
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* @IPW_WAIT_CLOCK_STABILIZATION_DELAY, align 4
  %50 = mul nsw i32 %49, 4
  %51 = call i32 @udelay(i32 %50)
  %52 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IPW_REG_GP_CNTRL, align 4
  %56 = call i32 @read_register(i32 %54, i32 %55, i32* %5)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IPW_AUX_HOST_GP_CNTRL_BIT_CLOCK_READY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %66

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %45

66:                                               ; preds = %61, %45
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 10000
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %86

72:                                               ; preds = %66
  %73 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %74 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPW_REG_GP_CNTRL, align 4
  %77 = call i32 @read_register(i32 %75, i32 %76, i32* %5)
  %78 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %79 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IPW_REG_GP_CNTRL, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @IPW_AUX_HOST_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @write_register(i32 %80, i32 %81, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %72, %69, %35
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @write_register(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_register(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
