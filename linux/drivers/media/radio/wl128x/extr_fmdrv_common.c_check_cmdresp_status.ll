; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_check_cmdresp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_check_cmdresp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_2__, i32, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fm_event_msg_hdr = type { i64, i32 }

@.str = private unnamed_addr constant [76 x i8] c"irq: opcode %x response status is not zero Initiating irq recovery process\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@FM_DRV_TX_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*, %struct.sk_buff**)* @check_cmdresp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cmdresp_status(%struct.fmdev* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.fm_event_msg_hdr*, align 8
  %7 = alloca i64, align 8
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %8 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %9 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @del_timer(i32* %10)
  %12 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %13 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %17 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %19, align 8
  %20 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %21 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %20, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %21, align 8
  %22 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %23 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.fm_event_msg_hdr*
  store %struct.fm_event_msg_hdr* %31, %struct.fm_event_msg_hdr** %6, align 8
  %32 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %2
  %37 = load %struct.fm_event_msg_hdr*, %struct.fm_event_msg_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.fm_event_msg_hdr, %struct.fm_event_msg_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @fmerr(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %42 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* @FM_DRV_TX_TIMEOUT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @mod_timer(i32* %43, i64 %46)
  store i32 -1, i32* %3, align 4
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fmerr(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
