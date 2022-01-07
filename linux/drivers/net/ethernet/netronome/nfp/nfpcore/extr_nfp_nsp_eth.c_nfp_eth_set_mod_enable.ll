; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_set_mod_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_set_mod_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%union.eth_table_entry = type { i32 }
%struct.nfp_nsp = type { i32 }

@NSP_ETH_CTRL_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_eth_set_mod_enable(%struct.nfp_cpp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.eth_table_entry*, align 8
  %9 = alloca %struct.nfp_nsp*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.nfp_nsp* @nfp_eth_config_start(%struct.nfp_cpp* %11, i32 %12)
  store %struct.nfp_nsp* %13, %struct.nfp_nsp** %9, align 8
  %14 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %15 = call i64 @IS_ERR(%struct.nfp_nsp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %19 = call i32 @PTR_ERR(%struct.nfp_nsp* %18)
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %22 = call %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp* %21)
  store %union.eth_table_entry* %22, %union.eth_table_entry** %8, align 8
  %23 = load %union.eth_table_entry*, %union.eth_table_entry** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %23, i64 %25
  %27 = bitcast %union.eth_table_entry* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le64_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NSP_ETH_CTRL_ENABLED, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @FIELD_GET(i32 %31, i32 %32)
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %20
  %36 = load %union.eth_table_entry*, %union.eth_table_entry** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %36, i64 %38
  %40 = bitcast %union.eth_table_entry* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le64_to_cpu(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @NSP_ETH_CTRL_ENABLED, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @NSP_ETH_CTRL_ENABLED, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @FIELD_PREP(i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @cpu_to_le64(i32 %52)
  %54 = load %union.eth_table_entry*, %union.eth_table_entry** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %54, i64 %56
  %58 = bitcast %union.eth_table_entry* %57 to i32*
  store i32 %53, i32* %58, align 4
  %59 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %60 = call i32 @nfp_nsp_config_set_modified(%struct.nfp_nsp* %59, i32 1)
  br label %61

61:                                               ; preds = %35, %20
  %62 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %63 = call i32 @nfp_eth_config_commit_end(%struct.nfp_nsp* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.nfp_nsp* @nfp_eth_config_start(%struct.nfp_cpp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nfp_nsp_config_set_modified(%struct.nfp_nsp*, i32) #1

declare dso_local i32 @nfp_eth_config_commit_end(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
