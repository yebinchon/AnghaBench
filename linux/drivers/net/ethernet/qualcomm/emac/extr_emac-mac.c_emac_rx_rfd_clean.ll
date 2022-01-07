; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_rfd_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_rfd_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_rx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, %struct.emac_buffer* }
%struct.emac_buffer = type { i32* }
%struct.emac_rrd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_rx_queue*, %struct.emac_rrd*)* @emac_rx_rfd_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_rx_rfd_clean(%struct.emac_rx_queue* %0, %struct.emac_rrd* %1) #0 {
  %3 = alloca %struct.emac_rx_queue*, align 8
  %4 = alloca %struct.emac_rrd*, align 8
  %5 = alloca %struct.emac_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.emac_rx_queue* %0, %struct.emac_rx_queue** %3, align 8
  store %struct.emac_rrd* %1, %struct.emac_rrd** %4, align 8
  %8 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %9 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load %struct.emac_buffer*, %struct.emac_buffer** %10, align 8
  store %struct.emac_buffer* %11, %struct.emac_buffer** %5, align 8
  %12 = load %struct.emac_rrd*, %struct.emac_rrd** %4, align 8
  %13 = call i64 @RRD_SI(%struct.emac_rrd* %12)
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.emac_rrd*, %struct.emac_rrd** %4, align 8
  %17 = call i32 @RRD_NOR(%struct.emac_rrd* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load %struct.emac_buffer*, %struct.emac_buffer** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %20, i64 %21
  %23 = getelementptr inbounds %struct.emac_buffer, %struct.emac_buffer* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  %26 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %27 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %39 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %3, align 8
  %43 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i64 %41, i64* %44, align 8
  ret void
}

declare dso_local i64 @RRD_SI(%struct.emac_rrd*) #1

declare dso_local i32 @RRD_NOR(%struct.emac_rrd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
