; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_wol_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_wol_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i32, i32* }

@RIC0 = common dso_local global i32 0, align 4
@RIC2 = common dso_local global i32 0, align 4
@TIC = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i64 0, align 8
@RAVB_BE = common dso_local global i64 0, align 8
@ECSIPR_MPDIP = common dso_local global i32 0, align 4
@ECSIPR = common dso_local global i32 0, align 4
@ECMR = common dso_local global i32 0, align 4
@ECMR_MPDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_wol_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_wol_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %4)
  store %struct.ravb_private* %5, %struct.ravb_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @RIC0, align 4
  %8 = call i32 @ravb_write(%struct.net_device* %6, i32 0, i32 %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @RIC2, align 4
  %11 = call i32 @ravb_write(%struct.net_device* %9, i32 0, i32 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @TIC, align 4
  %14 = call i32 @ravb_write(%struct.net_device* %12, i32 0, i32 %13)
  %15 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %16 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @synchronize_irq(i32 %17)
  %19 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %20 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @RAVB_NC, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @napi_disable(i32* %23)
  %25 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %26 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RAVB_BE, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @napi_disable(i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i32, i32* @ECSIPR_MPDIP, align 4
  %33 = load i32, i32* @ECSIPR, align 4
  %34 = call i32 @ravb_write(%struct.net_device* %31, i32 %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load i32, i32* @ECMR, align 4
  %37 = load i32, i32* @ECMR_MPDE, align 4
  %38 = load i32, i32* @ECMR_MPDE, align 4
  %39 = call i32 @ravb_modify(%struct.net_device* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %41 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @enable_irq_wake(i32 %42)
  ret i32 %43
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
