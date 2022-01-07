; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i32, i32, i32, i32 }

@NFP_FL_FEATS_VF_RLIM = common dso_local global i32 0, align 4
@NFP_FL_FEATS_LAG = common dso_local global i32 0, align 4
@NFP_FL_FEATS_FLOW_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*)* @nfp_flower_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_clean(%struct.nfp_app* %0) #0 {
  %2 = alloca %struct.nfp_app*, align 8
  %3 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %2, align 8
  %4 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %4, i32 0, i32 0
  %6 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  store %struct.nfp_flower_priv* %6, %struct.nfp_flower_priv** %3, align 8
  %7 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %7, i32 0, i32 4
  %9 = call i32 @skb_queue_purge(i32* %8)
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %10, i32 0, i32 3
  %12 = call i32 @skb_queue_purge(i32* %11)
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %13, i32 0, i32 2
  %15 = call i32 @flush_work(i32* %14)
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NFP_FL_FEATS_VF_RLIM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %24 = call i32 @nfp_flower_qos_cleanup(%struct.nfp_app* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %33, i32 0, i32 1
  %35 = call i32 @nfp_flower_lag_cleanup(i32* %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %38 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NFP_FL_FEATS_FLOW_MERGE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %45 = call i32 @nfp_flower_internal_port_cleanup(%struct.nfp_flower_priv* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %48 = call i32 @nfp_flower_metadata_cleanup(%struct.nfp_app* %47)
  %49 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %50 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %49, i32 0, i32 0
  %51 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %50, align 8
  %52 = call i32 @vfree(%struct.nfp_flower_priv* %51)
  %53 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %54 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %53, i32 0, i32 0
  store %struct.nfp_flower_priv* null, %struct.nfp_flower_priv** %54, align 8
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @nfp_flower_qos_cleanup(%struct.nfp_app*) #1

declare dso_local i32 @nfp_flower_lag_cleanup(i32*) #1

declare dso_local i32 @nfp_flower_internal_port_cleanup(%struct.nfp_flower_priv*) #1

declare dso_local i32 @nfp_flower_metadata_cleanup(%struct.nfp_app*) #1

declare dso_local i32 @vfree(%struct.nfp_flower_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
