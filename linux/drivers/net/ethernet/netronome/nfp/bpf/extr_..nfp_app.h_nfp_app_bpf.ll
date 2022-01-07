; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nfp_net = type { i32 }
%struct.netdev_bpf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)* @nfp_app_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_app_bpf(%struct.nfp_app* %0, %struct.nfp_net* %1, %struct.netdev_bpf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.netdev_bpf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %6, align 8
  store %struct.netdev_bpf* %2, %struct.netdev_bpf** %7, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %9 = icmp ne %struct.nfp_app* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)**
  %16 = load i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)*, i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)** %15, align 8
  %17 = icmp ne i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %10, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %10
  %22 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)**
  %27 = load i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)*, i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.netdev_bpf*)** %26, align 8
  %28 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %29 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %30 = load %struct.netdev_bpf*, %struct.netdev_bpf** %7, align 8
  %31 = call i32 %27(%struct.nfp_app* %28, %struct.nfp_net* %29, %struct.netdev_bpf* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
