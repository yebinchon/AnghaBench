; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_ndo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_ndo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfp_app*, %struct.net_device*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_ndo_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nfp_app*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device* %5)
  store %struct.nfp_app* %6, %struct.nfp_app** %4, align 8
  %7 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %8 = icmp ne %struct.nfp_app* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nfp_app*, %struct.net_device*)*, i32 (%struct.nfp_app*, %struct.net_device*)** %13, align 8
  %15 = icmp ne i32 (%struct.nfp_app*, %struct.net_device*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %9
  %18 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nfp_app*, %struct.net_device*)*, i32 (%struct.nfp_app*, %struct.net_device*)** %21, align 8
  %23 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 %22(%struct.nfp_app* %23, %struct.net_device* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
