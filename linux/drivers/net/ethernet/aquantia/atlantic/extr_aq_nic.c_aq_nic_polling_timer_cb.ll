; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_polling_timer_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_polling_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i32, %struct.aq_vec_s** }
%struct.aq_vec_s = type { i32 }
%struct.timer_list = type { i32 }

@polling_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AQ_CFG_POLLING_TIMER_INTERVAL = common dso_local global i64 0, align 8
@self = common dso_local global %struct.aq_nic_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @aq_nic_polling_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_nic_polling_timer_cb(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.aq_nic_s*, align 8
  %4 = alloca %struct.aq_vec_s*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %7 = ptrtoint %struct.aq_nic_s* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @polling_timer, align 4
  %10 = call %struct.aq_nic_s* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.aq_nic_s* %10, %struct.aq_nic_s** %3, align 8
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %12 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %11, i32 0, i32 2
  %13 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %12, align 8
  %14 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %13, i64 0
  %15 = load %struct.aq_vec_s*, %struct.aq_vec_s** %14, align 8
  store %struct.aq_vec_s* %15, %struct.aq_vec_s** %4, align 8
  br label %16

16:                                               ; preds = %27, %1
  %17 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %18 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %25 = bitcast %struct.aq_vec_s* %24 to i8*
  %26 = call i32 @aq_vec_isr(i32 %23, i8* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %31 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %30, i32 0, i32 2
  %32 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %32, i64 %34
  %36 = load %struct.aq_vec_s*, %struct.aq_vec_s** %35, align 8
  store %struct.aq_vec_s* %36, %struct.aq_vec_s** %4, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %39 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %38, i32 0, i32 1
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* @AQ_CFG_POLLING_TIMER_INTERVAL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @mod_timer(i32* %39, i64 %42)
  ret void
}

declare dso_local %struct.aq_nic_s* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @aq_vec_isr(i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
