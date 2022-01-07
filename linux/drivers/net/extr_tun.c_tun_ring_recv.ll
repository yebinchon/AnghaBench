; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ring_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ring_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_file = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tun_file*, i32, i32*)* @tun_ring_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tun_ring_recv(%struct.tun_file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tun_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tun_file* %0, %struct.tun_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @current, align 4
  %11 = call i32 @DECLARE_WAITQUEUE(i32 %9, i32 %10)
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %13 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %12, i32 0, i32 1
  %14 = call i8* @ptr_ring_consume(i32* %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %69

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %69

24:                                               ; preds = %18
  %25 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %26 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @add_wait_queue(i32* %28, i32* @wait)
  br label %30

30:                                               ; preds = %24, %59
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @set_current_state(i32 %31)
  %33 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %34 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %33, i32 0, i32 1
  %35 = call i8* @ptr_ring_consume(i32* %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %61

39:                                               ; preds = %30
  %40 = load i32, i32* @current, align 4
  %41 = call i64 @signal_pending(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %61

46:                                               ; preds = %39
  %47 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %48 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RCV_SHUTDOWN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %61

59:                                               ; preds = %46
  %60 = call i32 (...) @schedule()
  br label %30

61:                                               ; preds = %56, %43, %38
  %62 = load i32, i32* @TASK_RUNNING, align 4
  %63 = call i32 @__set_current_state(i32 %62)
  %64 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %65 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @remove_wait_queue(i32* %67, i32* @wait)
  br label %69

69:                                               ; preds = %61, %21, %17
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i8*, i8** %7, align 8
  ret i8* %72
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i8* @ptr_ring_consume(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
