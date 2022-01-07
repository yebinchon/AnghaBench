; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_connection_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_connection_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_local = type { i64, i32, i64, i64, i32 }
%struct.plip_local = type { i32 }

@PLIP_CN_CLOSING = common dso_local global i64 0, align 8
@PLIP_CN_NONE = common dso_local global i64 0, align 8
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_local*, %struct.plip_local*, %struct.plip_local*)* @plip_connection_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_connection_close(%struct.net_device* %0, %struct.net_local* %1, %struct.plip_local* %2, %struct.plip_local* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_local*, align 8
  %7 = alloca %struct.plip_local*, align 8
  %8 = alloca %struct.plip_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_local* %1, %struct.net_local** %6, align 8
  store %struct.plip_local* %2, %struct.plip_local** %7, align 8
  store %struct.plip_local* %3, %struct.plip_local** %8, align 8
  %9 = load %struct.net_local*, %struct.net_local** %6, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 4
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.net_local*, %struct.net_local** %6, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PLIP_CN_CLOSING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i64, i64* @PLIP_CN_NONE, align 8
  %19 = load %struct.net_local*, %struct.net_local** %6, align 8
  %20 = getelementptr inbounds %struct.net_local, %struct.net_local* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netif_wake_queue(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %17, %4
  %24 = load %struct.net_local*, %struct.net_local** %6, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 4
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load %struct.net_local*, %struct.net_local** %6, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.net_local*, %struct.net_local** %6, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.net_local*, %struct.net_local** %6, align 8
  %35 = getelementptr inbounds %struct.net_local, %struct.net_local* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.net_local*, %struct.net_local** %6, align 8
  %37 = getelementptr inbounds %struct.net_local, %struct.net_local* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @parport_release(i32 %38)
  br label %40

40:                                               ; preds = %31, %23
  %41 = load i32, i32* @OK, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @parport_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
