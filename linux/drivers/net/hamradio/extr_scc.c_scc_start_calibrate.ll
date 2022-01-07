; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_start_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_start_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@scc_stop_calibrate = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@R6 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@TX_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*, i32, i8)* @scc_start_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_start_calibrate(%struct.scc_channel* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.scc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %8 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %13 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_stop_queue(i32 %14)
  %16 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %17 = call i32 @scc_discard_buffers(%struct.scc_channel* %16)
  %18 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %19 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %18, i32 0, i32 2
  %20 = call i32 @del_timer(%struct.TYPE_3__* %19)
  %21 = load i32, i32* @scc_stop_calibrate, align 4
  %22 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %23 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %32 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %35 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %34, i32 0, i32 2
  %36 = call i32 @add_timer(%struct.TYPE_3__* %35)
  %37 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %38 = load i32, i32* @R6, align 4
  %39 = call i32 @wr(%struct.scc_channel* %37, i32 %38, i8 zeroext 0)
  %40 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %41 = load i32, i32* @R7, align 4
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @wr(%struct.scc_channel* %40, i32 %41, i8 zeroext %42)
  %44 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %45 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RES_EXT_INT, align 4
  %48 = call i32 @Outb(i32 %46, i32 %47)
  %49 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %50 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RES_EXT_INT, align 4
  %53 = call i32 @Outb(i32 %51, i32 %52)
  %54 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %55 = load i32, i32* @TX_ON, align 4
  %56 = call i32 @scc_key_trx(%struct.scc_channel* %54, i32 %55)
  %57 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %58 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @scc_discard_buffers(%struct.scc_channel*) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @wr(%struct.scc_channel*, i32, i8 zeroext) #1

declare dso_local i32 @Outb(i32, i32) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
