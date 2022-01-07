; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_mib_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_mib_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dev_info = type { i32, i64, i32, i32 }
%struct.timer_list = type { i32 }

@mib_timer_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@hw_priv = common dso_local global %struct.dev_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mib_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mib_monitor(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dev_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %5 = ptrtoint %struct.dev_info* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mib_timer_info, i32 0, i32 0), align 4
  %8 = call %struct.dev_info* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.dev_info* %8, %struct.dev_info** %3, align 8
  %9 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %10 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %9, i32 0, i32 3
  %11 = call i32 @mib_read_work(i32* %10)
  %12 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %13 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @time_is_before_eq_jiffies(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %23, i32 0, i32 2
  %25 = call i32 @hw_clr_wol_pme_status(i32* %24)
  %26 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %27 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %31 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %30, i32 0, i32 2
  %32 = call i64 @hw_chk_wol_pme_status(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %41 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %45 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %44, i32 0, i32 0
  %46 = call i32 @ksz_update_timer(i32* %45)
  ret void
}

declare dso_local %struct.dev_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mib_read_work(i32*) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @hw_clr_wol_pme_status(i32*) #1

declare dso_local i64 @hw_chk_wol_pme_status(i32*) #1

declare dso_local i32 @ksz_update_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
