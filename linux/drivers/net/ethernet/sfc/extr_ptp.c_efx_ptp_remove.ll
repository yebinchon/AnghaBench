; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ptp_remove(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %69

8:                                                ; preds = %1
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = call i32 @efx_ptp_disable(%struct.efx_nic* %9)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = call i32 @skb_queue_purge(i32* %24)
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = call i32 @skb_queue_purge(i32* %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %8
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @destroy_workqueue(i32 %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ptp_clock_unregister(i64 %48)
  br label %50

50:                                               ; preds = %37, %8
  %51 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @destroy_workqueue(i32 %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %58 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %59 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %57, i32* %61)
  %63 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @kfree(%struct.TYPE_2__* %65)
  %67 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %68, align 8
  br label %69

69:                                               ; preds = %50, %7
  ret void
}

declare dso_local i32 @efx_ptp_disable(%struct.efx_nic*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ptp_clock_unregister(i64) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
