; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_st_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_st_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64* }
%struct.fmdev = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid SKB received from ST\0A\00", align 1
@EFAULT = common dso_local global i64 0, align 8
@FM_PKT_LOGICAL_CHAN_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Received SKB (%p) is not FM Channel 8 pkt\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.sk_buff*)* @fm_st_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm_st_receive(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fmdev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fmdev*
  store %struct.fmdev* %8, %struct.fmdev** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = icmp eq %struct.sk_buff* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @EFAULT, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FM_PKT_LOGICAL_CHAN_NUMBER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %24)
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %3, align 8
  br label %43

28:                                               ; preds = %15
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_push(%struct.sk_buff* %29, i32 1)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = call i32 @memcpy(i32 %30, i64* %34, i32 1)
  %36 = load %struct.fmdev*, %struct.fmdev** %6, align 8
  %37 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %36, i32 0, i32 1
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_queue_tail(i32* %37, %struct.sk_buff* %38)
  %40 = load %struct.fmdev*, %struct.fmdev** %6, align 8
  %41 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %40, i32 0, i32 0
  %42 = call i32 @tasklet_schedule(i32* %41)
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %28, %23, %11
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @fmerr(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
