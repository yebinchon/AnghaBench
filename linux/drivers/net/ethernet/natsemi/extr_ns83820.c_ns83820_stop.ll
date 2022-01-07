; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ns83820 = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CR_RST = common dso_local global i32 0, align 4
@ISR_TXURN = common dso_local global i32 0, align 4
@ISR_TXIDLE = common dso_local global i32 0, align 4
@ISR_TXERR = common dso_local global i32 0, align 4
@ISR_TXDESC = common dso_local global i32 0, align 4
@ISR_TXOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ns83820_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ns83820*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ns83820* @PRIV(%struct.net_device* %4)
  store %struct.ns83820* %5, %struct.ns83820** %3, align 8
  %6 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %7 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %6, i32 0, i32 4
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %10 = call i32 @ns83820_disable_interrupts(%struct.ns83820* %9)
  %11 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %12 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %15 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @synchronize_irq(i32 %18)
  %20 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %21 = load i32, i32* @CR_RST, align 4
  %22 = call i32 @ns83820_do_reset(%struct.ns83820* %20, i32 %21)
  %23 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %24 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @synchronize_irq(i32 %27)
  %29 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %30 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load i32, i32* @ISR_TXURN, align 4
  %33 = load i32, i32* @ISR_TXIDLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ISR_TXERR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ISR_TXDESC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ISR_TXOK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %43 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %47 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %50 = call i32 @ns83820_cleanup_rx(%struct.ns83820* %49)
  %51 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %52 = call i32 @ns83820_cleanup_tx(%struct.ns83820* %51)
  ret i32 0
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ns83820_disable_interrupts(%struct.ns83820*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @ns83820_do_reset(%struct.ns83820*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ns83820_cleanup_rx(%struct.ns83820*) #1

declare dso_local i32 @ns83820_cleanup_tx(%struct.ns83820*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
