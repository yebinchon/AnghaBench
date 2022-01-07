; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_port_get_stats_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_port_get_stats_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_port = type { i64, i32 }
%struct.nfp_repr = type { %struct.nfp_abm_link* }
%struct.nfp_abm_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFP_PORT_PF_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_port*)* @nfp_abm_port_get_stats_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_port_get_stats_count(%struct.nfp_app* %0, %struct.nfp_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_port*, align 8
  %6 = alloca %struct.nfp_repr*, align 8
  %7 = alloca %struct.nfp_abm_link*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_port* %1, %struct.nfp_port** %5, align 8
  %8 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nfp_repr* @netdev_priv(i32 %10)
  store %struct.nfp_repr* %11, %struct.nfp_repr** %6, align 8
  %12 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFP_PORT_PF_PORT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.nfp_repr*, %struct.nfp_repr** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %19, i32 0, i32 0
  %21 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %20, align 8
  store %struct.nfp_abm_link* %21, %struct.nfp_abm_link** %7, align 8
  %22 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %7, align 8
  %23 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.nfp_repr* @netdev_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
