; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-tx.c_i2400mu_txd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-tx.c_i2400mu_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32*, i32, %struct.TYPE_2__*, %struct.i2400m }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400m = type { i32 }
%struct.i2400m_msg_hdr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400mu %p)\0A\00", align 1
@current = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"TX: waiting for messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"TX: submitting %zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i2400mu_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_txd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2400mu*, align 8
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.i2400m_msg_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.i2400mu*
  store %struct.i2400mu* %10, %struct.i2400mu** %3, align 8
  %11 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %12 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %11, i32 0, i32 3
  store %struct.i2400m* %12, %struct.i2400m** %4, align 8
  %13 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %14 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %19 = call i32 @d_fnstart(i32 4, %struct.device* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %18)
  %20 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %25 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32*, i32** @current, align 8
  %31 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %32 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %34 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %1, %56
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.i2400m_msg_hdr* null, %struct.i2400m_msg_hdr** %6, align 8
  %40 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %41 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 (...) @kthread_should_stop()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %47 = call %struct.i2400m_msg_hdr* @i2400m_tx_msg_get(%struct.i2400m* %46, i64* %7)
  store %struct.i2400m_msg_hdr* %47, %struct.i2400m_msg_hdr** %6, align 8
  %48 = icmp ne %struct.i2400m_msg_hdr* %47, null
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi i1 [ true, %37 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event_interruptible(i32 %42, i32 %51)
  %53 = call i64 (...) @kthread_should_stop()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %74

56:                                               ; preds = %49
  %57 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %6, align 8
  %58 = icmp eq %struct.i2400m_msg_hdr* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @d_dump(i32 5, %struct.device* %64, %struct.i2400m_msg_hdr* %65, i64 %66)
  %68 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %69 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @i2400mu_tx(%struct.i2400mu* %68, %struct.i2400m_msg_hdr* %69, i64 %70)
  %72 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %73 = call i32 @i2400m_tx_msg_sent(%struct.i2400m* %72)
  br label %37

74:                                               ; preds = %55
  %75 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %76 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %80 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %82 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %81, i32 0, i32 0
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %87 = call i32 @d_fnend(i32 4, %struct.device* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %86)
  ret i32 0
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local %struct.i2400m_msg_hdr* @i2400m_tx_msg_get(%struct.i2400m*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, %struct.i2400m_msg_hdr*, i64) #1

declare dso_local i32 @i2400mu_tx(%struct.i2400mu*, %struct.i2400m_msg_hdr*, i64) #1

declare dso_local i32 @i2400m_tx_msg_sent(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
