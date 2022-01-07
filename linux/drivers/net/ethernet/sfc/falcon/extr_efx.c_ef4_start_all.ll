; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_start_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_start_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64, i32, %struct.TYPE_2__*, i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*, i32*, i32*)*, i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)*, i32* }

@STATE_DISABLED = common dso_local global i64 0, align 8
@ef4_monitor_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @ef4_start_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_start_all(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %3 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %4 = call i32 @EF4_ASSERT_RESET_SERIALISED(%struct.ef4_nic* %3)
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STATE_DISABLED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_running(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %24 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %16, %1
  br label %75

28:                                               ; preds = %22
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %30 = call i32 @ef4_start_port(%struct.ef4_nic* %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %32 = call i32 @ef4_start_datapath(%struct.ef4_nic* %31)
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %34 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %41 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %44 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %43, i32 0, i32 3
  %45 = load i32, i32* @ef4_monitor_interval, align 4
  %46 = call i32 @queue_delayed_work(i32 %42, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %28
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %49 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %51, align 8
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %54 = call i32 %52(%struct.ef4_nic* %53)
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %56 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %58, align 8
  %60 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %61 = call i32 %59(%struct.ef4_nic* %60)
  %62 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %63 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %66 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ef4_nic*, i32*, i32*)*, i32 (%struct.ef4_nic*, i32*, i32*)** %68, align 8
  %70 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %71 = call i32 %69(%struct.ef4_nic* %70, i32* null, i32* null)
  %72 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %73 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_bh(i32* %73)
  br label %75

75:                                               ; preds = %47, %27
  ret void
}

declare dso_local i32 @EF4_ASSERT_RESET_SERIALISED(%struct.ef4_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @ef4_start_port(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_start_datapath(%struct.ef4_nic*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
