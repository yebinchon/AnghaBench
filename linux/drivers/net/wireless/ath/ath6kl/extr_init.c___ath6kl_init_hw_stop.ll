; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c___ath6kl_init_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c___ath6kl_init_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hw stop\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to power off hif: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @__ath6kl_init_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath6kl_init_hw_stop(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %4 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %5 = call i32 @ath6kl_dbg(i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ath6kl_htc_stop(i32 %8)
  %10 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %11 = call i32 @ath6kl_hif_stop(%struct.ath6kl* %10)
  %12 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %13 = call i32 @ath6kl_bmi_reset(%struct.ath6kl* %12)
  %14 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %15 = call i32 @ath6kl_hif_power_off(%struct.ath6kl* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @ath6kl_htc_stop(i32) #1

declare dso_local i32 @ath6kl_hif_stop(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_bmi_reset(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_hif_power_off(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
