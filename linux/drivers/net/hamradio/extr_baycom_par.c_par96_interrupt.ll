; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_par.c_par96_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_par.c_par96_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @par96_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @par96_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.baycom_state*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.net_device*
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %7)
  store %struct.baycom_state* %8, %struct.baycom_state** %4, align 8
  %9 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %10 = call i32 @baycom_int_freq(%struct.baycom_state* %9)
  %11 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %12 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %11, i32 0, i32 0
  %13 = call i64 @hdlcdrv_ptt(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %18 = call i32 @par96_tx(%struct.net_device* %16, %struct.baycom_state* %17)
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %22 = call i32 @par96_rx(%struct.net_device* %20, %struct.baycom_state* %21)
  %23 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %24 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %31 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 6, i64* %32, align 8
  %33 = call i32 (...) @local_irq_enable()
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %36 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %35, i32 0, i32 0
  %37 = call i32 @hdlcdrv_arbitrate(%struct.net_device* %34, i32* %36)
  br label %38

38:                                               ; preds = %29, %19
  br label %39

39:                                               ; preds = %38, %15
  %40 = call i32 (...) @local_irq_enable()
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %43 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %42, i32 0, i32 0
  %44 = call i32 @hdlcdrv_transmitter(%struct.net_device* %41, i32* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %47 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %46, i32 0, i32 0
  %48 = call i32 @hdlcdrv_receiver(%struct.net_device* %45, i32* %47)
  %49 = call i32 (...) @local_irq_disable()
  ret void
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @baycom_int_freq(%struct.baycom_state*) #1

declare dso_local i64 @hdlcdrv_ptt(i32*) #1

declare dso_local i32 @par96_tx(%struct.net_device*, %struct.baycom_state*) #1

declare dso_local i32 @par96_rx(%struct.net_device*, %struct.baycom_state*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @hdlcdrv_arbitrate(%struct.net_device*, i32*) #1

declare dso_local i32 @hdlcdrv_transmitter(%struct.net_device*, i32*) #1

declare dso_local i32 @hdlcdrv_receiver(%struct.net_device*, i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
