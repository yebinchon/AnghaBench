; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_schedule_txdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_schedule_txdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, i32, %struct.brcmf_commonring**, i32 }
%struct.brcmf_commonring = type { i32 }

@BRCMF_MSGBUF_DELAY_TXWORKER_THRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_msgbuf*, i64, i32)* @brcmf_msgbuf_schedule_txdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_msgbuf_schedule_txdata(%struct.brcmf_msgbuf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_msgbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_commonring*, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @set_bit(i64 %8, i32 %11)
  %13 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %13, i32 0, i32 2
  %15 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %15, i64 %16
  %18 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %17, align 8
  store %struct.brcmf_commonring* %18, %struct.brcmf_commonring** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %23 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %22, i32 0, i32 0
  %24 = call i64 @atomic_read(i32* %23)
  %25 = load i64, i64* @BRCMF_MSGBUF_DELAY_TXWORKER_THRS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %3
  %28 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %29 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %32 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %31, i32 0, i32 0
  %33 = call i32 @queue_work(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %27, %21
  ret i32 0
}

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
