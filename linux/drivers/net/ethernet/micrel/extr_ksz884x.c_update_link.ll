; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_update_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { i64 }
%struct.ksz_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@media_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dev_priv*, %struct.ksz_port*)* @update_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_link(%struct.net_device* %0, %struct.dev_priv* %1, %struct.ksz_port* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.ksz_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dev_priv* %1, %struct.dev_priv** %5, align 8
  store %struct.ksz_port* %2, %struct.ksz_port** %6, align 8
  %7 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %8 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ksz_port*, %struct.ksz_port** %6, align 8
  %11 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.ksz_port*, %struct.ksz_port** %6, align 8
  %18 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %23 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load i32, i32* @media_connected, align 4
  %30 = call i32 @set_media_state(%struct.net_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %16
  br label %32

32:                                               ; preds = %31, %3
  ret void
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_media_state(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
