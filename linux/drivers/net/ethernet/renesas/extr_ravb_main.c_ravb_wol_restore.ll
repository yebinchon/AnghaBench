; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_wol_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_wol_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i32, i32* }

@RAVB_NC = common dso_local global i64 0, align 8
@RAVB_BE = common dso_local global i64 0, align 8
@ECMR = common dso_local global i32 0, align 4
@ECMR_MPDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_wol_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_wol_restore(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ravb_private* %7, %struct.ravb_private** %4, align 8
  %8 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %9 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @RAVB_NC, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @napi_enable(i32* %12)
  %14 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %15 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @RAVB_BE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @napi_enable(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* @ECMR, align 4
  %22 = load i32, i32* @ECMR_MPDE, align 4
  %23 = call i32 @ravb_modify(%struct.net_device* %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @ravb_close(%struct.net_device* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %32 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @disable_irq_wake(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ravb_close(%struct.net_device*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
