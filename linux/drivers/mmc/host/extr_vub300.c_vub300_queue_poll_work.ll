; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_queue_poll_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_queue_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32 }

@pollworkqueue = common dso_local global i32 0, align 4
@vub300_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*, i32)* @vub300_queue_poll_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_queue_poll_work(%struct.vub300_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %5, i32 0, i32 0
  %7 = call i32 @kref_get(i32* %6)
  %8 = load i32, i32* @pollworkqueue, align 4
  %9 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %9, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @queue_delayed_work(i32 %8, i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* @vub300_delete, align 4
  %19 = call i32 @kref_put(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
