; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_calc_port_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_calc_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_eth_table_port = type { i64, i64, i32 }

@NFP_INTERFACE_NONE = common dso_local global i64 0, align 8
@PORT_NONE = common dso_local global i32 0, align 4
@NFP_INTERFACE_RJ45 = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i32 0, align 4
@NFP_MEDIA_FIBRE = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_cpp*, %struct.nfp_eth_table_port*)* @nfp_eth_calc_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_eth_calc_port_type(%struct.nfp_cpp* %0, %struct.nfp_eth_table_port* %1) #0 {
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca %struct.nfp_eth_table_port*, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  store %struct.nfp_eth_table_port* %1, %struct.nfp_eth_table_port** %4, align 8
  %5 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %6 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFP_INTERFACE_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @PORT_NONE, align 4
  %12 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NFP_INTERFACE_RJ45, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @PORT_TP, align 4
  %22 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %39

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NFP_MEDIA_FIBRE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @PORT_FIBRE, align 4
  %33 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %34 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @PORT_DA, align 4
  %37 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %4, align 8
  %38 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %10, %20, %35, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
