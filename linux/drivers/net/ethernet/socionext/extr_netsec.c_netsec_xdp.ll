; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, i32, i32, i32 }
%struct.netsec_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @netsec_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_xdp(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.netsec_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.netsec_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.netsec_priv* %8, %struct.netsec_priv** %6, align 8
  %9 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %39 [
    i32 128, label %12
    i32 129, label %21
  ]

12:                                               ; preds = %2
  %13 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %14 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %15 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %18 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netsec_xdp_setup(%struct.netsec_priv* %13, i32 %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %23 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %28 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %26
  %36 = phi i32 [ %33, %26 ], [ 0, %34 ]
  %37 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %38 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %35, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.netsec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netsec_xdp_setup(%struct.netsec_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
