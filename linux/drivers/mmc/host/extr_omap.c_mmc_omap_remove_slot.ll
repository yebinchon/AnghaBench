; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_remove_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_remove_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_slot = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__*, %struct.mmc_host* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.mmc_host = type { i32 }

@dev_attr_slot_name = common dso_local global i32 0, align 4
@dev_attr_cover_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_slot*)* @mmc_omap_remove_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_remove_slot(%struct.mmc_omap_slot* %0) #0 {
  %2 = alloca %struct.mmc_omap_slot*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_omap_slot* %0, %struct.mmc_omap_slot** %2, align 8
  %4 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %4, i32 0, i32 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 0
  %16 = call i32 @device_remove_file(i32* %15, i32* @dev_attr_slot_name)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = call i32 @device_remove_file(i32* %26, i32* @dev_attr_cover_switch)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %29, i32 0, i32 2
  %31 = call i32 @tasklet_kill(i32* %30)
  %32 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %33 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %32, i32 0, i32 1
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %36 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @flush_workqueue(i32 %39)
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = call i32 @mmc_remove_host(%struct.mmc_host* %41)
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = call i32 @mmc_free_host(%struct.mmc_host* %43)
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
