; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_push_irq_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_push_irq_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.efx_nic*, i32 }
%struct.efx_nic = type { i32 }

@FRF_CZ_TC_TIMER_MODE = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_INT_HLDOFF = common dso_local global i32 0, align 4
@FRF_CZ_TC_TIMER_VAL = common dso_local global i32 0, align 4
@FFE_CZ_TIMER_MODE_DIS = common dso_local global i32 0, align 4
@FR_BZ_TIMER_COMMAND_P0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*)* @siena_push_irq_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siena_push_irq_moderation(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %6 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %7 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %6, i32 0, i32 1
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %10 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %16 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @efx_usecs_to_ticks(%struct.efx_nic* %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @FRF_CZ_TC_TIMER_MODE, align 4
  %21 = load i32, i32* @FFE_CZ_TIMER_MODE_INT_HLDOFF, align 4
  %22 = load i32, i32* @FRF_CZ_TC_TIMER_VAL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %23, 1
  %25 = call i32 @EFX_POPULATE_DWORD_2(i32 %19, i32 %20, i32 %21, i32 %22, i32 %24)
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FRF_CZ_TC_TIMER_MODE, align 4
  %29 = load i32, i32* @FFE_CZ_TIMER_MODE_DIS, align 4
  %30 = load i32, i32* @FRF_CZ_TC_TIMER_VAL, align 4
  %31 = call i32 @EFX_POPULATE_DWORD_2(i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %26, %13
  %33 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %34 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %33, i32 0, i32 1
  %35 = load %struct.efx_nic*, %struct.efx_nic** %34, align 8
  %36 = load i32, i32* @FR_BZ_TIMER_COMMAND_P0, align 4
  %37 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %38 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @efx_writed_page_locked(%struct.efx_nic* %35, i32* %4, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @efx_usecs_to_ticks(%struct.efx_nic*, i32) #1

declare dso_local i32 @EFX_POPULATE_DWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writed_page_locked(%struct.efx_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
