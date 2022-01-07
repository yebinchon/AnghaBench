; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.ravb_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ravb_ptp_info = common dso_local global i32 0, align 4
@GTI = common dso_local global i32 0, align 4
@GCCR = common dso_local global i32 0, align 4
@GCCR_TCR = common dso_local global i32 0, align 4
@GCCR_TCR_NOREQ = common dso_local global i32 0, align 4
@GCCR_TCSS = common dso_local global i32 0, align 4
@GCCR_TCSS_ADJGPTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ravb_ptp_init(%struct.net_device* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ravb_private*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %5, align 8
  %9 = load i32, i32* @ravb_ptp_info, align 4
  %10 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %11 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load i32, i32* @GTI, align 4
  %15 = call i32 @ravb_read(%struct.net_device* %13, i32 %14)
  %16 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %17 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %20 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %24 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %27 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %26, i32 0, i32 1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* @GCCR, align 4
  %32 = load i32, i32* @GCCR_TCR, align 4
  %33 = load i32, i32* @GCCR_TCR_NOREQ, align 4
  %34 = call i32 @ravb_wait(%struct.net_device* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @GCCR, align 4
  %37 = load i32, i32* @GCCR_TCSS, align 4
  %38 = load i32, i32* @GCCR_TCSS_ADJGPTP, align 4
  %39 = call i32 @ravb_modify(%struct.net_device* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %41 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %40, i32 0, i32 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %45 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @ptp_clock_register(i32* %46, i32* %48)
  %50 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %51 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ravb_wait(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ptp_clock_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
