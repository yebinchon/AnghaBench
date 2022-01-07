; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_search_fl_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_search_fl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32 }
%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_fl_flow_table_cmp_arg = type { i64, %struct.net_device* }

@nfp_flower_table_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_fl_payload* @nfp_flower_search_fl_table(%struct.nfp_app* %0, i64 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nfp_fl_flow_table_cmp_arg, align 8
  %8 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  store %struct.nfp_flower_priv* %11, %struct.nfp_flower_priv** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, %struct.nfp_fl_flow_table_cmp_arg* %7, i32 0, i32 1
  store %struct.net_device* %12, %struct.net_device** %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, %struct.nfp_fl_flow_table_cmp_arg* %7, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %16, i32 0, i32 0
  %18 = load i32, i32* @nfp_flower_table_params, align 4
  %19 = call %struct.nfp_fl_payload* @rhashtable_lookup_fast(i32* %17, %struct.nfp_fl_flow_table_cmp_arg* %7, i32 %18)
  ret %struct.nfp_fl_payload* %19
}

declare dso_local %struct.nfp_fl_payload* @rhashtable_lookup_fast(i32*, %struct.nfp_fl_flow_table_cmp_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
