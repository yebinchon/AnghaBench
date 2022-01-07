; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_endpoint = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.htc_packet*)* }
%struct.htc_packet = type { i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"htc rx complete ep %d packet 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_endpoint*, %struct.htc_packet*)* @ath6kl_htc_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_rx_complete(%struct.htc_endpoint* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca %struct.htc_endpoint*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  store %struct.htc_endpoint* %0, %struct.htc_endpoint** %3, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %4, align 8
  %5 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %6 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %10 = call i32 @ath6kl_dbg(i32 %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.htc_packet* %9)
  %11 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.htc_packet*)*, i32 (i32, %struct.htc_packet*)** %13, align 8
  %15 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %16 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %19 = call i32 %14(i32 %17, %struct.htc_packet* %18)
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
