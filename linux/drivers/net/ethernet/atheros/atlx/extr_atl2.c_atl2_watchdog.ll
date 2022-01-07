; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@watchdog_timer = common dso_local global i32 0, align 4
@__ATL2_DOWN = common dso_local global i32 0, align 4
@REG_STS_RXD_OV = common dso_local global i32 0, align 4
@REG_STS_RXS_OV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.atl2_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @atl2_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.atl2_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %8 = ptrtoint %struct.atl2_adapter* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @watchdog_timer, align 4
  %11 = call %struct.atl2_adapter* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.atl2_adapter* %11, %struct.atl2_adapter** %3, align 8
  %12 = load i32, i32* @__ATL2_DOWN, align 4
  %13 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %13, i32 0, i32 4
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %1
  %18 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %18, i32 0, i32 2
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %22, i32 0, i32 3
  %24 = load i32, i32* @REG_STS_RXD_OV, align 4
  %25 = call i64 @ATL2_READ_REG(i32* %23, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %26, i32 0, i32 3
  %28 = load i32, i32* @REG_STS_RXS_OV, align 4
  %29 = call i64 @ATL2_READ_REG(i32* %27, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %30, i32 0, i32 2
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %36
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 4, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = call i32 @round_jiffies(i64 %52)
  %54 = call i32 @mod_timer(i32* %47, i32 %53)
  br label %55

55:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.atl2_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ATL2_READ_REG(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
