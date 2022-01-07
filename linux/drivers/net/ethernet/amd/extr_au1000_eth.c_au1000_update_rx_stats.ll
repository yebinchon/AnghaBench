; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@RX_MCAST_FRAME = common dso_local global i32 0, align 4
@RX_ERROR = common dso_local global i32 0, align 4
@RX_MISSED_FRAME = common dso_local global i32 0, align 4
@RX_OVERLEN = common dso_local global i32 0, align 4
@RX_RUNT = common dso_local global i32 0, align 4
@RX_LEN_ERROR = common dso_local global i32 0, align 4
@RX_CRC_ERROR = common dso_local global i32 0, align 4
@RX_COLL = common dso_local global i32 0, align 4
@RX_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @au1000_update_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_update_rx_stats(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  store %struct.net_device_stats* %7, %struct.net_device_stats** %5, align 8
  %8 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %9 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RX_MCAST_FRAME, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %18 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RX_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %21
  %27 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %28 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RX_MISSED_FRAME, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RX_OVERLEN, align 4
  %43 = load i32, i32* @RX_RUNT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RX_LEN_ERROR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RX_CRC_ERROR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RX_COLL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %83

75:                                               ; preds = %21
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @RX_FRAME_LEN_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %80 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
