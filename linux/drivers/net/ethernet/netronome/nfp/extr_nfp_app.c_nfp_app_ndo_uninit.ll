; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_ndo_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_ndo_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfp_app*, %struct.net_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_app_ndo_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nfp_app*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device* %4)
  store %struct.nfp_app* %5, %struct.nfp_app** %3, align 8
  %6 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %7 = icmp ne %struct.nfp_app* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.nfp_app*, %struct.net_device*)*, i32 (%struct.nfp_app*, %struct.net_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.nfp_app*, %struct.net_device*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nfp_app*, %struct.net_device*)*, i32 (%struct.nfp_app*, %struct.net_device*)** %19, align 8
  %21 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 %20(%struct.nfp_app* %21, %struct.net_device* %22)
  br label %24

24:                                               ; preds = %15, %8, %1
  ret void
}

declare dso_local %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
