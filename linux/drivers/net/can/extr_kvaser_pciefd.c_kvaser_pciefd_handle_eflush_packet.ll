; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_eflush_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_handle_eflush_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i64, %struct.kvaser_pciefd_can** }
%struct.kvaser_pciefd_can = type { i32 }
%struct.kvaser_pciefd_rx_packet = type { i32* }

@KVASER_PCIEFD_PACKET_CHID_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*)* @kvaser_pciefd_handle_eflush_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_handle_eflush_packet(%struct.kvaser_pciefd* %0, %struct.kvaser_pciefd_rx_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd*, align 8
  %5 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca i64, align 8
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %4, align 8
  store %struct.kvaser_pciefd_rx_packet* %1, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %8 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %5, align 8
  %9 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @KVASER_PCIEFD_PACKET_CHID_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 7
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %4, align 8
  %27 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %26, i32 0, i32 1
  %28 = load %struct.kvaser_pciefd_can**, %struct.kvaser_pciefd_can*** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %28, i64 %29
  %31 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %30, align 8
  store %struct.kvaser_pciefd_can* %31, %struct.kvaser_pciefd_can** %6, align 8
  %32 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %33 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %32, i32 0, i32 0
  %34 = call i32 @completion_done(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %38 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %37, i32 0, i32 0
  %39 = call i32 @complete(i32* %38)
  br label %40

40:                                               ; preds = %36, %25
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
