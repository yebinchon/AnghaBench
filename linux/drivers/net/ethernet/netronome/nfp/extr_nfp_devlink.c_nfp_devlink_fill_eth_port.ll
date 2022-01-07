; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_fill_eth_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_fill_eth_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { i32 }
%struct.nfp_eth_table_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_port*, %struct.nfp_eth_table_port*)* @nfp_devlink_fill_eth_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_fill_eth_port(%struct.nfp_port* %0, %struct.nfp_eth_table_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_port*, align 8
  %5 = alloca %struct.nfp_eth_table_port*, align 8
  %6 = alloca %struct.nfp_eth_table_port*, align 8
  store %struct.nfp_port* %0, %struct.nfp_port** %4, align 8
  store %struct.nfp_eth_table_port* %1, %struct.nfp_eth_table_port** %5, align 8
  %7 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %8 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %7)
  store %struct.nfp_eth_table_port* %8, %struct.nfp_eth_table_port** %6, align 8
  %9 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %10 = icmp ne %struct.nfp_eth_table_port* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %5, align 8
  %16 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %6, align 8
  %17 = call i32 @memcpy(%struct.nfp_eth_table_port* %15, %struct.nfp_eth_table_port* %16, i32 4)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port*) #1

declare dso_local i32 @memcpy(%struct.nfp_eth_table_port*, %struct.nfp_eth_table_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
