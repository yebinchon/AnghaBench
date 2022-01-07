; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_queue_cmnd_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_queue_cmnd_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32 }

@cmndworkqueue = common dso_local global i32 0, align 4
@vub300_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @vub300_queue_cmnd_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_queue_cmnd_work(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %3 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %3, i32 0, i32 0
  %5 = call i32 @kref_get(i32* %4)
  %6 = load i32, i32* @cmndworkqueue, align 4
  %7 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %7, i32 0, i32 1
  %9 = call i64 @queue_work(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %13, i32 0, i32 0
  %15 = load i32, i32* @vub300_delete, align 4
  %16 = call i32 @kref_put(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
