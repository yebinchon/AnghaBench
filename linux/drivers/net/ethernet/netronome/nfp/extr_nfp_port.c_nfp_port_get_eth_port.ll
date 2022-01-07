; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_get_eth_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_get_eth_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_eth_table_port = type { i32 }
%struct.nfp_port = type { i32 }

@NFP_PORT_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_eth_table_port* @nfp_port_get_eth_port(%struct.nfp_port* %0) #0 {
  %2 = alloca %struct.nfp_eth_table_port*, align 8
  %3 = alloca %struct.nfp_port*, align 8
  store %struct.nfp_port* %0, %struct.nfp_port** %3, align 8
  %4 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %5 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %4)
  %6 = icmp ne %struct.nfp_eth_table_port* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.nfp_eth_table_port* null, %struct.nfp_eth_table_port** %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @NFP_PORT_CHANGED, align 4
  %10 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %16 = call i64 @nfp_net_refresh_eth_port(%struct.nfp_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.nfp_eth_table_port* null, %struct.nfp_eth_table_port** %2, align 8
  br label %23

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %22 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %21)
  store %struct.nfp_eth_table_port* %22, %struct.nfp_eth_table_port** %2, align 8
  br label %23

23:                                               ; preds = %20, %18, %7
  %24 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %2, align 8
  ret %struct.nfp_eth_table_port* %24
}

declare dso_local %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nfp_net_refresh_eth_port(%struct.nfp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
