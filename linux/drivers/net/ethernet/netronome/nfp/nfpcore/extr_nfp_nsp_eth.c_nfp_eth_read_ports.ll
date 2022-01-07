; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_read_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_read_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_eth_table = type { i32 }
%struct.nfp_cpp = type { i32 }
%struct.nfp_nsp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_eth_table* @nfp_eth_read_ports(%struct.nfp_cpp* %0) #0 {
  %2 = alloca %struct.nfp_eth_table*, align 8
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca %struct.nfp_eth_table*, align 8
  %5 = alloca %struct.nfp_nsp*, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  %6 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %7 = call %struct.nfp_nsp* @nfp_nsp_open(%struct.nfp_cpp* %6)
  store %struct.nfp_nsp* %7, %struct.nfp_nsp** %5, align 8
  %8 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %9 = call i64 @IS_ERR(%struct.nfp_nsp* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.nfp_eth_table* null, %struct.nfp_eth_table** %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %14 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %15 = call %struct.nfp_eth_table* @__nfp_eth_read_ports(%struct.nfp_cpp* %13, %struct.nfp_nsp* %14)
  store %struct.nfp_eth_table* %15, %struct.nfp_eth_table** %4, align 8
  %16 = load %struct.nfp_nsp*, %struct.nfp_nsp** %5, align 8
  %17 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %16)
  %18 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  store %struct.nfp_eth_table* %18, %struct.nfp_eth_table** %2, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %2, align 8
  ret %struct.nfp_eth_table* %20
}

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(%struct.nfp_cpp*) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local %struct.nfp_eth_table* @__nfp_eth_read_ports(%struct.nfp_cpp*, %struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
