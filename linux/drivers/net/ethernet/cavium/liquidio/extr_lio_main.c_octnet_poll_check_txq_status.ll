; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octnet_poll_check_txq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octnet_poll_check_txq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { i64 }
%struct.lio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @octnet_poll_check_txq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octnet_poll_check_txq_status(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.lio*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = bitcast %struct.work_struct* %5 to %struct.cavium_wk*
  store %struct.cavium_wk* %6, %struct.cavium_wk** %3, align 8
  %7 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %8 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lio*
  store %struct.lio* %10, %struct.lio** %4, align 8
  %11 = load %struct.lio*, %struct.lio** %4, align 8
  %12 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %13 = call i32 @ifstate_check(%struct.lio* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.lio*, %struct.lio** %4, align 8
  %18 = call i32 @check_txq_status(%struct.lio* %17)
  %19 = load %struct.lio*, %struct.lio** %4, align 8
  %20 = getelementptr inbounds %struct.lio, %struct.lio* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lio*, %struct.lio** %4, align 8
  %24 = getelementptr inbounds %struct.lio, %struct.lio* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @msecs_to_jiffies(i32 1)
  %28 = call i32 @queue_delayed_work(i32 %22, i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ifstate_check(%struct.lio*, i32) #1

declare dso_local i32 @check_txq_status(%struct.lio*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
