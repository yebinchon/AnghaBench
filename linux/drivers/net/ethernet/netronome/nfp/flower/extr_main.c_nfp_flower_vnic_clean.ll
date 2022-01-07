; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_vnic_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_vnic_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__*, %struct.nfp_flower_priv* }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_flower_priv = type { i32* }
%struct.nfp_net = type { i32 }

@NFP_REPR_TYPE_VF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.nfp_net*)* @nfp_flower_vnic_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_vnic_clean(%struct.nfp_app* %0, %struct.nfp_net* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %4, align 8
  %6 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %6, i32 0, i32 1
  %8 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  store %struct.nfp_flower_priv* %8, %struct.nfp_flower_priv** %5, align 8
  %9 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %17 = load i32, i32* @NFP_REPR_TYPE_VF, align 4
  %18 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %21 = load i32, i32* @NFP_REPR_TYPE_PF, align 4
  %22 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %20, i32 %21)
  %23 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %24 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %25 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %23, i32 %24)
  %26 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
