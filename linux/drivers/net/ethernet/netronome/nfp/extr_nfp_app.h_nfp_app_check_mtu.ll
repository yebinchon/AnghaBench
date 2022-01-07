; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.h_nfp_app_check_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.h_nfp_app_check_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32)* @nfp_app_check_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_app_check_mtu(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %9 = icmp ne %struct.nfp_app* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.nfp_app*, %struct.net_device*, i32)**
  %16 = load i32 (%struct.nfp_app*, %struct.net_device*, i32)*, i32 (%struct.nfp_app*, %struct.net_device*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.nfp_app*, %struct.net_device*, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %30

19:                                               ; preds = %10
  %20 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.nfp_app*, %struct.net_device*, i32)**
  %25 = load i32 (%struct.nfp_app*, %struct.net_device*, i32)*, i32 (%struct.nfp_app*, %struct.net_device*, i32)** %24, align 8
  %26 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %25(%struct.nfp_app* %26, %struct.net_device* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
