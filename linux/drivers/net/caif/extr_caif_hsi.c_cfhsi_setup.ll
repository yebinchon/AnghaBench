; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i32, i32, i32, i64 }
%struct.cfhsi = type { i32, %struct.net_device*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ARPHRD_CAIF = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@CFHSI_MAX_CAIF_FRAME_SZ = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@cfhsi_netdevops = common dso_local global i32 0, align 4
@CFHSI_PRIO_LAST = common dso_local global i32 0, align 4
@CAIF_LINK_HIGH_BANDW = common dso_local global i32 0, align 4
@hsi_default_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cfhsi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfhsi_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfhsi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cfhsi* @netdev_priv(%struct.net_device* %5)
  store %struct.cfhsi* %6, %struct.cfhsi** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @ARPHRD_CAIF, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @IFF_POINTOPOINT, align 4
  %13 = load i32, i32* @IFF_NOARP, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @CFHSI_MAX_CAIF_FRAME_SZ, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IFF_NO_QUEUE, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  store i32* @cfhsi_netdevops, i32** %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %41, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @CFHSI_PRIO_LAST, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %35 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @skb_queue_head_init(i32* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* @CAIF_LINK_HIGH_BANDW, align 4
  %46 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %47 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %50 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %53 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %56 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %60 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %59, i32 0, i32 1
  store %struct.net_device* %58, %struct.net_device** %60, align 8
  %61 = load i32, i32* @hsi_default_config, align 4
  %62 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %63 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  ret void
}

declare dso_local %struct.cfhsi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
