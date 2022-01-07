; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_push_irq_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_push_irq_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { i32, i32, %struct.ef4_nic* }
%struct.ef4_nic = type { i32 }

@FRF_AB_TC_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_BB_TIMER_MODE_INT_HLDOFF = common dso_local global i32 0, align 4
@FRF_AB_TC_TIMER_VAL = common dso_local global i32 0, align 4
@FFE_BB_TIMER_MODE_DIS = common dso_local global i32 0, align 4
@FR_AA_TIMER_COMMAND_KER = common dso_local global i64 0, align 8
@FR_BZ_TIMER_COMMAND_P0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_channel*)* @falcon_push_irq_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_push_irq_moderation(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_channel* %0, %struct.ef4_channel** %2, align 8
  %6 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %6, i32 0, i32 2
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  store %struct.ef4_nic* %8, %struct.ef4_nic** %4, align 8
  %9 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %10 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %15 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %16 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ef4_usecs_to_ticks(%struct.ef4_nic* %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @FRF_AB_TC_TIMER_MODE, align 4
  %21 = load i32, i32* @FFE_BB_TIMER_MODE_INT_HLDOFF, align 4
  %22 = load i32, i32* @FRF_AB_TC_TIMER_VAL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %23, 1
  %25 = call i32 @EF4_POPULATE_DWORD_2(i32 %19, i32 %20, i32 %21, i32 %22, i32 %24)
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FRF_AB_TC_TIMER_MODE, align 4
  %29 = load i32, i32* @FFE_BB_TIMER_MODE_DIS, align 4
  %30 = load i32, i32* @FRF_AB_TC_TIMER_VAL, align 4
  %31 = call i32 @EF4_POPULATE_DWORD_2(i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %26, %13
  %33 = load i64, i64* @FR_AA_TIMER_COMMAND_KER, align 8
  %34 = load i64, i64* @FR_BZ_TIMER_COMMAND_P0, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUILD_BUG_ON(i32 %36)
  %38 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %39 = load i64, i64* @FR_BZ_TIMER_COMMAND_P0, align 8
  %40 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  %41 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ef4_writed_page_locked(%struct.ef4_nic* %38, i32* %3, i64 %39, i32 %42)
  ret void
}

declare dso_local i32 @ef4_usecs_to_ticks(%struct.ef4_nic*, i32) #1

declare dso_local i32 @EF4_POPULATE_DWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ef4_writed_page_locked(%struct.ef4_nic*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
