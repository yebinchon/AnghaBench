; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_config_commit_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_config_commit_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }
%union.eth_table_entry = type { i32 }

@NSP_ETH_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_eth_config_commit_end(%struct.nfp_nsp* %0) #0 {
  %2 = alloca %struct.nfp_nsp*, align 8
  %3 = alloca %union.eth_table_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %2, align 8
  %5 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %6 = call %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp* %5)
  store %union.eth_table_entry* %6, %union.eth_table_entry** %3, align 8
  store i32 1, i32* %4, align 4
  %7 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %8 = call i64 @nfp_nsp_config_modified(%struct.nfp_nsp* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %12 = load %union.eth_table_entry*, %union.eth_table_entry** %3, align 8
  %13 = load i32, i32* @NSP_ETH_TABLE_SIZE, align 4
  %14 = call i32 @nfp_nsp_write_eth_table(%struct.nfp_nsp* %11, %union.eth_table_entry* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %24 = call i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp* %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp*) #1

declare dso_local i64 @nfp_nsp_config_modified(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_write_eth_table(%struct.nfp_nsp*, %union.eth_table_entry*, i32) #1

declare dso_local i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
