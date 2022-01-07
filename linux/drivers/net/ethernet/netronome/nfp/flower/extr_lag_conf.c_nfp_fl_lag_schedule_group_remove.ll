; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_fl_lag_schedule_group_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_fl_lag_schedule_group_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_lag = type { i32 }
%struct.nfp_fl_lag_group = type { i32 }

@NFP_FL_LAG_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_fl_lag*, %struct.nfp_fl_lag_group*)* @nfp_fl_lag_schedule_group_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_fl_lag_schedule_group_remove(%struct.nfp_fl_lag* %0, %struct.nfp_fl_lag_group* %1) #0 {
  %3 = alloca %struct.nfp_fl_lag*, align 8
  %4 = alloca %struct.nfp_fl_lag_group*, align 8
  store %struct.nfp_fl_lag* %0, %struct.nfp_fl_lag** %3, align 8
  store %struct.nfp_fl_lag_group* %1, %struct.nfp_fl_lag_group** %4, align 8
  %5 = load %struct.nfp_fl_lag_group*, %struct.nfp_fl_lag_group** %4, align 8
  %6 = getelementptr inbounds %struct.nfp_fl_lag_group, %struct.nfp_fl_lag_group* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.nfp_fl_lag*, %struct.nfp_fl_lag** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_fl_lag, %struct.nfp_fl_lag* %7, i32 0, i32 0
  %9 = load i32, i32* @NFP_FL_LAG_DELAY, align 4
  %10 = call i32 @schedule_delayed_work(i32* %8, i32 %9)
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
