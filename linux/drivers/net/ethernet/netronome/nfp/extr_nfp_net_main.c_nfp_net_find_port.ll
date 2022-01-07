; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_find_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_eth_table_port = type { i32 }
%struct.nfp_eth_table = type { i32, %struct.nfp_eth_table_port* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_eth_table_port* (%struct.nfp_eth_table*, i32)* @nfp_net_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_eth_table_port* @nfp_net_find_port(%struct.nfp_eth_table* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_eth_table_port*, align 8
  %4 = alloca %struct.nfp_eth_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_eth_table* %0, %struct.nfp_eth_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %9 = icmp ne %struct.nfp_eth_table* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %40

18:                                               ; preds = %16
  %19 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %19, i32 0, i32 1
  %21 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %21, i64 %23
  %25 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %30, i32 0, i32 1
  %32 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %32, i64 %34
  store %struct.nfp_eth_table_port* %35, %struct.nfp_eth_table_port** %3, align 8
  br label %41

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7

40:                                               ; preds = %16
  store %struct.nfp_eth_table_port* null, %struct.nfp_eth_table_port** %3, align 8
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %3, align 8
  ret %struct.nfp_eth_table_port* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
