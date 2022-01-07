; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_set_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_set_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%union.eth_table_entry = type { i32 }
%struct.nfp_nsp = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NSP_ETH_STATE_CONFIGURED = common dso_local global i32 0, align 4
@NSP_ETH_CTRL_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_eth_set_configured(%struct.nfp_cpp* %0, i32 %1, i32 %2) #0 {
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
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %22 = call i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp* %21)
  %23 = icmp slt i32 %22, 20
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %26 = call i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp* %25)
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %20
  %30 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %31 = call %union.eth_table_entry* @nfp_nsp_config_entries(%struct.nfp_nsp* %30)
  store %union.eth_table_entry* %31, %union.eth_table_entry** %8, align 8
  %32 = load %union.eth_table_entry*, %union.eth_table_entry** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %32, i64 %34
  %36 = bitcast %union.eth_table_entry* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le64_to_cpu(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NSP_ETH_STATE_CONFIGURED, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @FIELD_GET(i32 %40, i32 %41)
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %29
  %45 = load %union.eth_table_entry*, %union.eth_table_entry** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %45, i64 %47
  %49 = bitcast %union.eth_table_entry* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le64_to_cpu(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @NSP_ETH_CTRL_CONFIGURED, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @NSP_ETH_CTRL_CONFIGURED, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @FIELD_PREP(i32 %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @cpu_to_le64(i32 %61)
  %63 = load %union.eth_table_entry*, %union.eth_table_entry** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %63, i64 %65
  %67 = bitcast %union.eth_table_entry* %66 to i32*
  store i32 %62, i32* %67, align 4
  %68 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %69 = call i32 @nfp_nsp_config_set_modified(%struct.nfp_nsp* %68, i32 1)
  br label %70

70:                                               ; preds = %44, %29
  %71 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %72 = call i32 @nfp_eth_config_commit_end(%struct.nfp_nsp* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %24, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.nfp_nsp* @nfp_eth_config_start(%struct.nfp_cpp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_get_abi_ver_minor(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp*) #1

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
