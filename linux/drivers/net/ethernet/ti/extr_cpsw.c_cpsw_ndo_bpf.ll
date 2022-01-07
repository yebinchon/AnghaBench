; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32 }
%struct.cpsw_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @cpsw_ndo_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_bpf(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.cpsw_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.cpsw_priv* %8, %struct.cpsw_priv** %6, align 8
  %9 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %2
  %13 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %14 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %15 = call i32 @cpsw_xdp_prog_setup(%struct.cpsw_priv* %13, %struct.netdev_bpf* %14)
  store i32 %15, i32* %3, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %18 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %17, i32 0, i32 0
  %19 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %20 = call i32 @xdp_attachment_query(i32* %18, %struct.netdev_bpf* %19)
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_xdp_prog_setup(%struct.cpsw_priv*, %struct.netdev_bpf*) #1

declare dso_local i32 @xdp_attachment_query(i32*, %struct.netdev_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
