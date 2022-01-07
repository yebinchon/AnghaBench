; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_rx_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_rx_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i64, i64, i32, i32, i32, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*)* @lan78xx_rx_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_rx_bh(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.lan78xx_net*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %2, align 8
  %5 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %6 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %5, i32 0, i32 5
  %7 = call i64 @skb_queue_len(i32* %6)
  %8 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %9 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 5
  %19 = call i64 @skb_queue_len(i32* %18)
  %20 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %21 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %44

25:                                               ; preds = %16
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %26)
  store %struct.urb* %27, %struct.urb** %3, align 8
  %28 = load %struct.urb*, %struct.urb** %3, align 8
  %29 = icmp ne %struct.urb* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %32 = load %struct.urb*, %struct.urb** %3, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @rx_submit(%struct.lan78xx_net* %31, %struct.urb* %32, i32 %33)
  %35 = load i32, i32* @ENOLINK, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %70

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %13

44:                                               ; preds = %24, %13
  %45 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %46 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %45, i32 0, i32 5
  %47 = call i64 @skb_queue_len(i32* %46)
  %48 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %49 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %54 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %53, i32 0, i32 4
  %55 = call i32 @tasklet_schedule(i32* %54)
  br label %56

56:                                               ; preds = %52, %44
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %59 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %58, i32 0, i32 3
  %60 = call i64 @skb_queue_len(i32* %59)
  %61 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %62 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %67 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @netif_wake_queue(i32 %68)
  br label %70

70:                                               ; preds = %38, %65, %57
  ret void
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @rx_submit(%struct.lan78xx_net*, %struct.urb*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
