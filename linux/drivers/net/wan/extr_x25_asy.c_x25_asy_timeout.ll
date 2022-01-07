; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.x25_asy = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"transmit timed out, %s?\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad line quality\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"driver error\00", align 1
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @x25_asy_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.x25_asy*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %4)
  store %struct.x25_asy* %5, %struct.x25_asy** %3, align 8
  %6 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %7 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @netif_queue_stopped(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %15 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i64 @tty_chars_in_buffer(%struct.TYPE_2__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %21 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i1 [ true, %12 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @netdev_warn(%struct.net_device* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %30 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %32 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %33 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %31, i32* %35)
  %37 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %38 = call i32 @x25_asy_unlock(%struct.x25_asy* %37)
  br label %39

39:                                               ; preds = %24, %1
  %40 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %41 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  ret void
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i8*) #1

declare dso_local i64 @tty_chars_in_buffer(%struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @x25_asy_unlock(%struct.x25_asy*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
