; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_reclaim_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_reclaim_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_packet = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.htc_endpoint = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, %struct.htc_packet*)* }

@HTC_RX_PKT_NO_RECYCLE = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*, %struct.htc_endpoint*)* @htc_reclaim_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_reclaim_rxbuf(%struct.htc_target* %0, %struct.htc_packet* %1, %struct.htc_endpoint* %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca %struct.htc_packet*, align 8
  %6 = alloca %struct.htc_endpoint*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %5, align 8
  store %struct.htc_endpoint* %2, %struct.htc_endpoint** %6, align 8
  %7 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %8 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HTC_RX_PKT_NO_RECYCLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %17 = call i32 @htc_rxpkt_reset(%struct.htc_packet* %16)
  %18 = load i32, i32* @ECANCELED, align 4
  %19 = sub nsw i32 0, %18
  %20 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %21 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %23 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (i32, %struct.htc_packet*)*, i32 (i32, %struct.htc_packet*)** %24, align 8
  %26 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %30 = call i32 %25(i32 %28, %struct.htc_packet* %29)
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %33 = call i32 @htc_rxpkt_reset(%struct.htc_packet* %32)
  %34 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %35 = bitcast %struct.htc_target* %34 to i8*
  %36 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %37 = call i32 @htc_add_rxbuf(i8* %35, %struct.htc_packet* %36)
  br label %38

38:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @htc_rxpkt_reset(%struct.htc_packet*) #1

declare dso_local i32 @htc_add_rxbuf(i8*, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
