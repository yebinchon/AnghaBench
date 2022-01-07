; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_process_rrd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_process_rrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i32 }
%struct.emac_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.emac_rrd = type { i32* }

@.str = private unnamed_addr constant [43 x i8] c"error: multi-RFD not support yet! nor:%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_adapter*, %struct.emac_rx_queue*, %struct.emac_rrd*)* @emac_rx_process_rrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_rx_process_rrd(%struct.emac_adapter* %0, %struct.emac_rx_queue* %1, %struct.emac_rrd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.emac_rx_queue*, align 8
  %7 = alloca %struct.emac_rrd*, align 8
  %8 = alloca i32*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %5, align 8
  store %struct.emac_rx_queue* %1, %struct.emac_rx_queue** %6, align 8
  store %struct.emac_rrd* %2, %struct.emac_rrd** %7, align 8
  %9 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %10 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %14 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @EMAC_RRD(%struct.emac_rx_queue* %9, i32 %12, i64 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %22 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %20, i32* %24, align 4
  %25 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %26 = call i32 @RRD_UPDT(%struct.emac_rrd* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

29:                                               ; preds = %3
  %30 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %31 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 0, i32* %33, align 4
  %34 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %35 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %42 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %49 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %52, align 4
  %55 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %56 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %60 = call i32 @RRD_NOR(%struct.emac_rrd* %59)
  %61 = icmp ne i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %29
  %66 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %70 = call i32 @RRD_NOR(%struct.emac_rrd* %69)
  %71 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %29
  %73 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %74 = call i32 @RRD_UPDT_SET(%struct.emac_rrd* %73, i32 0)
  %75 = load %struct.emac_rrd*, %struct.emac_rrd** %7, align 8
  %76 = getelementptr inbounds %struct.emac_rrd, %struct.emac_rrd* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %82 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %87 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %72
  %92 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %93 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %72
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %28
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32* @EMAC_RRD(%struct.emac_rx_queue*, i32, i64) #1

declare dso_local i32 @RRD_UPDT(%struct.emac_rrd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RRD_NOR(%struct.emac_rrd*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @RRD_UPDT_SET(%struct.emac_rrd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
