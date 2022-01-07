; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.h_nfp_flower_internal_port_can_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.h_nfp_flower_internal_port_can_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFP_FL_FEATS_FLOW_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"openvswitch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*)* @nfp_flower_internal_port_can_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_internal_port_can_offload(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %7, i32 0, i32 0
  %9 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  store %struct.nfp_flower_priv* %9, %struct.nfp_flower_priv** %6, align 8
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NFP_FL_FEATS_FLOW_MERGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %22, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
