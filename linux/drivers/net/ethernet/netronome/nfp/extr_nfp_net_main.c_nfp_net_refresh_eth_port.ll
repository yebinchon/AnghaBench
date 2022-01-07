; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_refresh_eth_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_refresh_eth_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfp_cpp* }
%struct.nfp_cpp = type { i32 }
%struct.nfp_eth_table = type { i32 }

@NFP_PORT_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error refreshing port state table!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_refresh_eth_port(%struct.nfp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_port*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca %struct.nfp_eth_table*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_port* %0, %struct.nfp_port** %3, align 8
  %7 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfp_cpp*, %struct.nfp_cpp** %10, align 8
  store %struct.nfp_cpp* %11, %struct.nfp_cpp** %4, align 8
  %12 = load i32, i32* @NFP_PORT_CHANGED, align 4
  %13 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %13, i32 0, i32 0
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %17 = call %struct.nfp_eth_table* @nfp_eth_read_ports(%struct.nfp_cpp* %16)
  store %struct.nfp_eth_table* %17, %struct.nfp_eth_table** %5, align 8
  %18 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %5, align 8
  %19 = icmp ne %struct.nfp_eth_table* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @NFP_PORT_CHANGED, align 4
  %22 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %26 = call i32 @nfp_err(%struct.nfp_cpp* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %31 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %32 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %5, align 8
  %33 = call i32 @nfp_net_eth_port_update(%struct.nfp_cpp* %30, %struct.nfp_port* %31, %struct.nfp_eth_table* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %5, align 8
  %35 = call i32 @kfree(%struct.nfp_eth_table* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.nfp_eth_table* @nfp_eth_read_ports(%struct.nfp_cpp*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*) #1

declare dso_local i32 @nfp_net_eth_port_update(%struct.nfp_cpp*, %struct.nfp_port*, %struct.nfp_eth_table*) #1

declare dso_local i32 @kfree(%struct.nfp_eth_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
