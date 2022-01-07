; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_modify_flow_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_modify_flow_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.nfp_fl_payload = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nfp_fl_stats_ctx_to_flow = type { i32 }

@NFP_FL_MASK_ID_LOCATION = common dso_local global i64 0, align 8
@stats_ctx_table_params = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_modify_flow_metadata(%struct.nfp_app* %0, %struct.nfp_fl_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_fl_stats_ctx_to_flow*, align 8
  %7 = alloca %struct.nfp_flower_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %5, align 8
  %10 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %10, i32 0, i32 0
  %12 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %11, align 8
  store %struct.nfp_flower_priv* %12, %struct.nfp_flower_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  %14 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %15 = call i32 @__nfp_modify_flow_metadata(%struct.nfp_flower_priv* %13, %struct.nfp_fl_payload* %14)
  %16 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %17 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @nfp_check_mask_remove(%struct.nfp_app* %16, i32 %19, i32 %23, i32* %26, i32* %8)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @NFP_FL_MASK_ID_LOCATION, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %35 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @be32_to_cpu(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %39, i32 0, i32 0
  %41 = load i32, i32* @stats_ctx_table_params, align 4
  %42 = call %struct.nfp_fl_stats_ctx_to_flow* @rhashtable_lookup_fast(i32* %40, i32* %9, i32 %41)
  store %struct.nfp_fl_stats_ctx_to_flow* %42, %struct.nfp_fl_stats_ctx_to_flow** %6, align 8
  %43 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %6, align 8
  %44 = icmp ne %struct.nfp_fl_stats_ctx_to_flow* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %61

48:                                               ; preds = %2
  %49 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %49, i32 0, i32 0
  %51 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %6, align 8
  %52 = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, %struct.nfp_fl_stats_ctx_to_flow* %51, i32 0, i32 0
  %53 = load i32, i32* @stats_ctx_table_params, align 4
  %54 = call i32 @rhashtable_remove_fast(i32* %50, i32* %52, i32 %53)
  %55 = call i32 @WARN_ON_ONCE(i32 %54)
  %56 = load %struct.nfp_fl_stats_ctx_to_flow*, %struct.nfp_fl_stats_ctx_to_flow** %6, align 8
  %57 = call i32 @kfree(%struct.nfp_fl_stats_ctx_to_flow* %56)
  %58 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @nfp_release_stats_entry(%struct.nfp_app* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %48, %45
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @__nfp_modify_flow_metadata(%struct.nfp_flower_priv*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_check_mask_remove(%struct.nfp_app*, i32, i32, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.nfp_fl_stats_ctx_to_flow* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_fl_stats_ctx_to_flow*) #1

declare dso_local i32 @nfp_release_stats_entry(%struct.nfp_app*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
