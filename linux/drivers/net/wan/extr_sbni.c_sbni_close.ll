; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.net_local = type { i32, i32, i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Secondary channel (%s) is active!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i64 0, align 8
@FL_SECONDARY = common dso_local global i32 0, align 4
@FL_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sbni_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.net_local* @netdev_priv(%struct.net_device* %5)
  store %struct.net_local* %6, %struct.net_local** %4, align 8
  %7 = load %struct.net_local*, %struct.net_local** %4, align 8
  %8 = getelementptr inbounds %struct.net_local, %struct.net_local* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.net_local*, %struct.net_local** %4, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.net_local*, %struct.net_local** %4, align 8
  %23 = getelementptr inbounds %struct.net_local, %struct.net_local* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_notice(%struct.net_device* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %11, %1
  %31 = load %struct.net_local*, %struct.net_local** %4, align 8
  %32 = getelementptr inbounds %struct.net_local, %struct.net_local* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.net_local*, %struct.net_local** %4, align 8
  %35 = getelementptr inbounds %struct.net_local, %struct.net_local* %34, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @drop_xmit_queue(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_stop_queue(%struct.net_device* %38)
  %40 = load %struct.net_local*, %struct.net_local** %4, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 2
  %42 = call i32 @del_timer(i32* %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CSR0, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 0, i64 %47)
  %49 = load %struct.net_local*, %struct.net_local** %4, align 8
  %50 = getelementptr inbounds %struct.net_local, %struct.net_local* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FL_SECONDARY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %30
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @free_irq(i32 %58, %struct.net_device* %59)
  br label %61

61:                                               ; preds = %55, %30
  %62 = load i32, i32* @FL_SECONDARY, align 4
  %63 = load %struct.net_local*, %struct.net_local** %4, align 8
  %64 = getelementptr inbounds %struct.net_local, %struct.net_local* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.net_local*, %struct.net_local** %4, align 8
  %68 = getelementptr inbounds %struct.net_local, %struct.net_local* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %61, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drop_xmit_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
