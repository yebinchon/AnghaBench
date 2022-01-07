; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_register_macsec_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_register_macsec_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macsec_dev = type { i32 }
%struct.macsec_rxh_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@macsec_handle_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @register_macsec_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_macsec_dev(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.macsec_dev*, align 8
  %7 = alloca %struct.macsec_rxh_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.macsec_dev* @macsec_priv(%struct.net_device* %9)
  store %struct.macsec_dev* %10, %struct.macsec_dev** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.macsec_rxh_data* @macsec_data_rtnl(%struct.net_device* %11)
  store %struct.macsec_rxh_data* %12, %struct.macsec_rxh_data** %7, align 8
  %13 = load %struct.macsec_rxh_data*, %struct.macsec_rxh_data** %7, align 8
  %14 = icmp ne %struct.macsec_rxh_data* %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.macsec_rxh_data* @kmalloc(i32 4, i32 %16)
  store %struct.macsec_rxh_data* %17, %struct.macsec_rxh_data** %7, align 8
  %18 = load %struct.macsec_rxh_data*, %struct.macsec_rxh_data** %7, align 8
  %19 = icmp ne %struct.macsec_rxh_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %15
  %24 = load %struct.macsec_rxh_data*, %struct.macsec_rxh_data** %7, align 8
  %25 = getelementptr inbounds %struct.macsec_rxh_data, %struct.macsec_rxh_data* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load i32, i32* @macsec_handle_frame, align 4
  %29 = load %struct.macsec_rxh_data*, %struct.macsec_rxh_data** %7, align 8
  %30 = call i32 @netdev_rx_handler_register(%struct.net_device* %27, i32 %28, %struct.macsec_rxh_data* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.macsec_rxh_data*, %struct.macsec_rxh_data** %7, align 8
  %35 = call i32 @kfree(%struct.macsec_rxh_data* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.macsec_dev*, %struct.macsec_dev** %6, align 8
  %40 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %39, i32 0, i32 0
  %41 = load %struct.macsec_rxh_data*, %struct.macsec_rxh_data** %7, align 8
  %42 = getelementptr inbounds %struct.macsec_rxh_data, %struct.macsec_rxh_data* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail_rcu(i32* %40, i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %33, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.macsec_dev* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.macsec_rxh_data* @macsec_data_rtnl(%struct.net_device*) #1

declare dso_local %struct.macsec_rxh_data* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.macsec_rxh_data*) #1

declare dso_local i32 @kfree(%struct.macsec_rxh_data*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
