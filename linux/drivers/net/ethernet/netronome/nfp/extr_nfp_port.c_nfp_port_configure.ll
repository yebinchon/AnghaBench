; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_eth_table_port = type { i32 }
%struct.nfp_port = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_port_configure(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_eth_table_port*, align 8
  %7 = alloca %struct.nfp_port*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %9)
  store %struct.nfp_port* %10, %struct.nfp_port** %7, align 8
  %11 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %12 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %11)
  store %struct.nfp_eth_table_port* %12, %struct.nfp_eth_table_port** %6, align 8
  %13 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %14 = icmp ne %struct.nfp_eth_table_port* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %18 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %24 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %29 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @nfp_eth_set_configured(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  br label %43

42:                                               ; preds = %35, %22
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %21, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port*) #1

declare dso_local i32 @nfp_eth_set_configured(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
