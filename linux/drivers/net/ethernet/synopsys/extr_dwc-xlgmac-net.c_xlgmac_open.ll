; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_desc_ops }
%struct.xlgmac_desc_ops = type { i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.1*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_pdata.1 = type opaque

@xlgmac_restart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xlgmac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca %struct.xlgmac_desc_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.xlgmac_pdata* %8, %struct.xlgmac_pdata** %4, align 8
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 2
  store %struct.xlgmac_desc_ops* %10, %struct.xlgmac_desc_ops** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xlgmac_calc_rx_buf_size(%struct.net_device* %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %5, align 8
  %25 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %25, align 8
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %28 = bitcast %struct.xlgmac_pdata* %27 to %struct.xlgmac_pdata.0*
  %29 = call i32 %26(%struct.xlgmac_pdata.0* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %20
  %35 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %36 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %35, i32 0, i32 1
  %37 = load i32, i32* @xlgmac_restart, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %40 = call i32 @xlgmac_init_timers(%struct.xlgmac_pdata* %39)
  %41 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %42 = call i32 @xlgmac_start(%struct.xlgmac_pdata* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %45
  %48 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %5, align 8
  %49 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %48, i32 0, i32 1
  %50 = load i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.1*)** %49, align 8
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %52 = bitcast %struct.xlgmac_pdata* %51 to %struct.xlgmac_pdata.1*
  %53 = call i32 %50(%struct.xlgmac_pdata.1* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %46, %32, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xlgmac_calc_rx_buf_size(%struct.net_device*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @xlgmac_init_timers(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_start(%struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
