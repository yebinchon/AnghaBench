; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tbnet = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.tb_xdomain* }
%struct.TYPE_6__ = type { %struct.tb_ring* }
%struct.tb_ring = type { i32 }
%struct.TYPE_5__ = type { %struct.tb_ring* }
%struct.tb_xdomain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TBNET_RING_SIZE = common dso_local global i32 0, align 4
@RING_FLAG_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate Tx ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TBIP_PDF_FRAME_START = common dso_local global i32 0, align 4
@TBIP_PDF_FRAME_END = common dso_local global i32 0, align 4
@RING_FLAG_E2E = common dso_local global i32 0, align 4
@tbnet_start_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to allocate Rx ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tbnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tbnet*, align 8
  %5 = alloca %struct.tb_xdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.tbnet* @netdev_priv(%struct.net_device* %9)
  store %struct.tbnet* %10, %struct.tbnet** %4, align 8
  %11 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %12 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %11, i32 0, i32 3
  %13 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  store %struct.tb_xdomain* %13, %struct.tb_xdomain** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %17 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TBNET_RING_SIZE, align 4
  %22 = load i32, i32* @RING_FLAG_FRAME, align 4
  %23 = call %struct.tb_ring* @tb_ring_alloc_tx(i32 %20, i32 -1, i32 %21, i32 %22)
  store %struct.tb_ring* %23, %struct.tb_ring** %8, align 8
  %24 = load %struct.tb_ring*, %struct.tb_ring** %8, align 8
  %25 = icmp ne %struct.tb_ring* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %1
  %32 = load %struct.tb_ring*, %struct.tb_ring** %8, align 8
  %33 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %34 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.tb_ring* %32, %struct.tb_ring** %35, align 8
  %36 = load i32, i32* @TBIP_PDF_FRAME_START, align 4
  %37 = call i32 @BIT(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @TBIP_PDF_FRAME_END, align 4
  %39 = call i32 @BIT(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %41 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TBNET_RING_SIZE, align 4
  %46 = load i32, i32* @RING_FLAG_FRAME, align 4
  %47 = load i32, i32* @RING_FLAG_E2E, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @tbnet_start_poll, align 4
  %52 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %53 = call %struct.tb_ring* @tb_ring_alloc_rx(i32 %44, i32 -1, i32 %45, i32 %48, i32 %49, i32 %50, i32 %51, %struct.tbnet* %52)
  store %struct.tb_ring* %53, %struct.tb_ring** %8, align 8
  %54 = load %struct.tb_ring*, %struct.tb_ring** %8, align 8
  %55 = icmp ne %struct.tb_ring* %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %31
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %60 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.tb_ring*, %struct.tb_ring** %61, align 8
  %63 = call i32 @tb_ring_free(%struct.tb_ring* %62)
  %64 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %65 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.tb_ring* null, %struct.tb_ring** %66, align 8
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %79

69:                                               ; preds = %31
  %70 = load %struct.tb_ring*, %struct.tb_ring** %8, align 8
  %71 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %72 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store %struct.tb_ring* %70, %struct.tb_ring** %73, align 8
  %74 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %75 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %74, i32 0, i32 0
  %76 = call i32 @napi_enable(i32* %75)
  %77 = load %struct.tbnet*, %struct.tbnet** %4, align 8
  %78 = call i32 @start_login(%struct.tbnet* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %69, %56, %26
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.tbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local %struct.tb_ring* @tb_ring_alloc_tx(i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.tb_ring* @tb_ring_alloc_rx(i32, i32, i32, i32, i32, i32, i32, %struct.tbnet*) #1

declare dso_local i32 @tb_ring_free(%struct.tb_ring*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @start_login(%struct.tbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
