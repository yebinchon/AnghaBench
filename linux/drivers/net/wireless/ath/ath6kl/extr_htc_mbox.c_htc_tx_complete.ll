; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_endpoint = type { i32, i32 }
%struct.list_head = type { i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"htc tx complete ep %d pkts %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_endpoint*, %struct.list_head*)* @htc_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_tx_complete(%struct.htc_endpoint* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.htc_endpoint*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.htc_endpoint* %0, %struct.htc_endpoint** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8
  %6 = call i64 @list_empty(%struct.list_head* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %22

9:                                                ; preds = %2
  %10 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %11 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = call i32 @get_queue_depth(%struct.list_head* %14)
  %16 = call i32 @ath6kl_dbg(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = call i32 @ath6kl_tx_complete(i32 %19, %struct.list_head* %20)
  br label %22

22:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @get_queue_depth(%struct.list_head*) #1

declare dso_local i32 @ath6kl_tx_complete(i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
