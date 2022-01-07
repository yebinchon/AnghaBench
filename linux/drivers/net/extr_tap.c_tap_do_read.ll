; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32, i32 }
%struct.iov_iter = type { i32 }
%struct.sk_buff = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_queue*, %struct.iov_iter*, i32, %struct.sk_buff*)* @tap_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_do_read(%struct.tap_queue* %0, %struct.iov_iter* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tap_queue*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.tap_queue* %0, %struct.tap_queue** %6, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  store i32 0, i32* %10, align 4
  %13 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %14 = call i32 @iov_iter_count(%struct.iov_iter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call i32 @kfree_skb(%struct.sk_buff* %17)
  store i32 0, i32* %5, align 4
  br label %86

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %64

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %53
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %29 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %28, i32 0, i32 0
  %30 = call i32 @sk_sleep(i32* %29)
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @prepare_to_wait(i32 %30, i32* @wait, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %35 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %34, i32 0, i32 1
  %36 = call %struct.sk_buff* @ptr_ring_consume(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %55

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %55

46:                                               ; preds = %40
  %47 = load i32, i32* @current, align 4
  %48 = call i64 @signal_pending(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @ERESTARTSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @schedule()
  br label %24

55:                                               ; preds = %50, %43, %39
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %60 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %59, i32 0, i32 0
  %61 = call i32 @sk_sleep(i32* %60)
  %62 = call i32 @finish_wait(i32 %61, i32* @wait)
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %22
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %71 = call i32 @tap_put_user(%struct.tap_queue* %68, %struct.sk_buff* %69, %struct.iov_iter* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %83

80:                                               ; preds = %67
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = call i32 @consume_skb(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %64
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %16
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(i32*) #1

declare dso_local %struct.sk_buff* @ptr_ring_consume(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @tap_put_user(%struct.tap_queue*, %struct.sk_buff*, %struct.iov_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
