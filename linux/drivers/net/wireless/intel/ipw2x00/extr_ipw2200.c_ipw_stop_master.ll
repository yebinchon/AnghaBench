; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_stop_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_stop_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@IPW_RESET_REG = common dso_local global i32 0, align 4
@IPW_RESET_REG_STOP_MASTER = common dso_local global i32 0, align 4
@IPW_RESET_REG_MASTER_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"wait for stop master failed after 100ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"stop master %dms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_stop_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_stop_master(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %5 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = load i32, i32* @IPW_RESET_REG, align 4
  %8 = load i32, i32* @IPW_RESET_REG_STOP_MASTER, align 4
  %9 = call i32 @ipw_set_bit(%struct.ipw_priv* %6, i32 %7, i32 %8)
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %11 = load i32, i32* @IPW_RESET_REG, align 4
  %12 = load i32, i32* @IPW_RESET_REG_MASTER_DISABLED, align 4
  %13 = call i32 @ipw_poll_bit(%struct.ipw_priv* %10, i32 %11, i32 %12, i32 100)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @IPW_DEBUG_TRACE(i8*) #1

declare dso_local i32 @ipw_set_bit(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_poll_bit(%struct.ipw_priv*, i32, i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
