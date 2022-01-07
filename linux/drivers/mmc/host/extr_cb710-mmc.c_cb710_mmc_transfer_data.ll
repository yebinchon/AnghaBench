; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@CB710_MMC_S1_DATA_TRANSFER_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, %struct.mmc_data*)* @cb710_mmc_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_transfer_data(%struct.cb710_slot* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %7 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MMC_DATA_READ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %16 = call i32 @cb710_mmc_receive(%struct.cb710_slot* %14, %struct.mmc_data* %15)
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %20 = call i32 @cb710_mmc_send(%struct.cb710_slot* %18, %struct.mmc_data* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %23 = load i32, i32* @CB710_MMC_S1_DATA_TRANSFER_DONE, align 4
  %24 = call i32 @cb710_wait_for_event(%struct.cb710_slot* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @cb710_mmc_receive(%struct.cb710_slot*, %struct.mmc_data*) #1

declare dso_local i32 @cb710_mmc_send(%struct.cb710_slot*, %struct.mmc_data*) #1

declare dso_local i32 @cb710_wait_for_event(%struct.cb710_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
