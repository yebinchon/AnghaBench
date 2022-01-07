; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_send_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_send_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i64, i32, i32*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@jiffies = common dso_local global i64 0, align 8
@FM_DRV_TX_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"TX timeout occurred\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Response completion handler is not NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"TX tasklet failed to send skb(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @send_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fmdev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.fmdev*
  store %struct.fmdev* %7, %struct.fmdev** %3, align 8
  %8 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %9 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %8, i32 0, i32 1
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %74

13:                                               ; preds = %1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %16 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* @FM_DRV_TX_TIMEOUT, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %24 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %23, i32 0, i32 1
  %25 = call i32 @atomic_set(i32* %24, i32 1)
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %28 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %27, i32 0, i32 4
  %29 = call %struct.sk_buff* @skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %74

33:                                               ; preds = %26
  %34 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %35 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %34, i32 0, i32 1
  %36 = call i32 @atomic_dec(i32* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_2__* @fm_cb(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %42 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %44 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call %struct.TYPE_2__* @fm_cb(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %55 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @g_st_write(%struct.sk_buff* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  %63 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %64 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 (i8*, ...) @fmerr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %65)
  %67 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %68 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %67, i32 0, i32 1
  %69 = call i32 @atomic_set(i32* %68, i32 1)
  br label %74

70:                                               ; preds = %49
  %71 = load i64, i64* @jiffies, align 8
  %72 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %73 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %12, %32, %70, %60
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fmerr(i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_2__* @fm_cb(%struct.sk_buff*) #1

declare dso_local i32 @g_st_write(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
