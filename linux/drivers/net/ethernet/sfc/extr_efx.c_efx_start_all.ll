; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_start_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_start_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*, i32*, i32*)*, i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)*, i32* }
%struct.TYPE_3__ = type { i64 (%struct.efx_nic*)* }

@STATE_DISABLED = common dso_local global i64 0, align 8
@efx_monitor_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_start_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_start_all(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %3)
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STATE_DISABLED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_running(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %16, %1
  br label %93

28:                                               ; preds = %22
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = call i32 @efx_start_port(%struct.efx_nic* %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = call i32 @efx_start_datapath(%struct.efx_nic* %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 5
  %45 = load i32, i32* @efx_monitor_interval, align 4
  %46 = call i32 @queue_delayed_work(i32 %42, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %28
  %48 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 3
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.efx_nic*)*, i64 (%struct.efx_nic*)** %54, align 8
  %56 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %57 = call i64 %55(%struct.efx_nic* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %61 = call i32 @efx_link_status_changed(%struct.efx_nic* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 3
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %69, align 8
  %71 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %72 = call i32 %70(%struct.efx_nic* %71)
  %73 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %76, align 8
  %78 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %79 = call i32 %77(%struct.efx_nic* %78)
  %80 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %81 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %80, i32 0, i32 1
  %82 = call i32 @spin_lock_bh(i32* %81)
  %83 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %84 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.efx_nic*, i32*, i32*)*, i32 (%struct.efx_nic*, i32*, i32*)** %86, align 8
  %88 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %89 = call i32 %87(%struct.efx_nic* %88, i32* null, i32* null)
  %90 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock_bh(i32* %91)
  br label %93

93:                                               ; preds = %62, %27
  ret void
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @efx_start_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_start_datapath(%struct.efx_nic*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @efx_link_status_changed(%struct.efx_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
