; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_config_cleanup_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_config_cleanup_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }
%union.eth_table_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_eth_config_cleanup_end(%struct.nfp_nsp* %0) #0 {
  %2 = alloca %struct.nfp_nsp*, align 8
  %3 = alloca %union.eth_table_entry*, align 8
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %2, align 8
  %4 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %5 = call %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp* %4)
  store %union.eth_table_entry* %5, %union.eth_table_entry** %3, align 8
  %6 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %7 = call i32 @nfp_nsp_config_set_modified(%struct.nfp_nsp* %6, i32 0)
  %8 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %9 = call i32 @nfp_nsp_config_clear_state(%struct.nfp_nsp* %8)
  %10 = load %struct.nfp_nsp*, %struct.nfp_nsp** %2, align 8
  %11 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %10)
  %12 = load %union.eth_table_entry*, %union.eth_table_entry** %3, align 8
  %13 = call i32 @kfree(%union.eth_table_entry* %12)
  ret void
}

declare dso_local %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_config_set_modified(%struct.nfp_nsp*, i32) #1

declare dso_local i32 @nfp_nsp_config_clear_state(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

declare dso_local i32 @kfree(%union.eth_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
