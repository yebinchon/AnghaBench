; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32*, i64 }
%struct.cfspi = type { %struct.net_device*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@cfspi_ops = common dso_local global i32 0, align 4
@ARPHRD_CAIF = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@SPI_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@CAIF_LINK_HIGH_BANDW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cfspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfspi_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cfspi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.cfspi* @netdev_priv(%struct.net_device* %4)
  store %struct.cfspi* %5, %struct.cfspi** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 5
  store i32* @cfspi_ops, i32** %9, align 8
  %10 = load i32, i32* @ARPHRD_CAIF, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @IFF_NOARP, align 4
  %14 = load i32, i32* @IFF_POINTOPOINT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @IFF_NO_QUEUE, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @SPI_MAX_PAYLOAD_SIZE, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %29 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %28, i32 0, i32 3
  %30 = call i32 @skb_queue_head_init(i32* %29)
  %31 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %32 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %31, i32 0, i32 2
  %33 = call i32 @skb_queue_head_init(i32* %32)
  %34 = load i32, i32* @CAIF_LINK_HIGH_BANDW, align 4
  %35 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %36 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %39 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %42 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %45 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %49 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %48, i32 0, i32 0
  store %struct.net_device* %47, %struct.net_device** %49, align 8
  ret void
}

declare dso_local %struct.cfspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
