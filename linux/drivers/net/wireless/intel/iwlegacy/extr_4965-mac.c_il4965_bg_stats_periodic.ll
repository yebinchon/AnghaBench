; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_bg_stats_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_bg_stats_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.timer_list = type { i32 }

@stats_periodic = common dso_local global i32 0, align 4
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@il = common dso_local global %struct.il_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @il4965_bg_stats_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_bg_stats_periodic(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.il_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %5 = ptrtoint %struct.il_priv* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @stats_periodic, align 4
  %8 = call %struct.il_priv* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.il_priv* %8, %struct.il_priv** %3, align 8
  %9 = load i32, i32* @S_EXIT_PENDING, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = call i32 @il_is_ready_rf(%struct.il_priv* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %24

20:                                               ; preds = %15
  %21 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %22 = load i32, i32* @CMD_ASYNC, align 4
  %23 = call i32 @il_send_stats_request(%struct.il_priv* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %20, %19, %14
  ret void
}

declare dso_local %struct.il_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i32 @il_send_stats_request(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
