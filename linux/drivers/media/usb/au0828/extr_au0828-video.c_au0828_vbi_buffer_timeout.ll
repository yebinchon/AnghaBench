; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_vbi_buffer_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_vbi_buffer_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32, i32, %struct.TYPE_3__, %struct.au0828_dmaqueue }
%struct.TYPE_3__ = type { %struct.au0828_buffer* }
%struct.au0828_buffer = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.au0828_dmaqueue = type { i32 }
%struct.timer_list = type { i32 }

@vbi_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.au0828_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @au0828_vbi_buffer_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_vbi_buffer_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca %struct.au0828_dmaqueue*, align 8
  %5 = alloca %struct.au0828_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %9 = ptrtoint %struct.au0828_dev* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @vbi_timeout, align 4
  %12 = call %struct.au0828_dev* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.au0828_dev* %12, %struct.au0828_dev** %3, align 8
  %13 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %14 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %13, i32 0, i32 4
  store %struct.au0828_dmaqueue* %14, %struct.au0828_dmaqueue** %4, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %16 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %20 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.au0828_buffer*, %struct.au0828_buffer** %21, align 8
  store %struct.au0828_buffer* %22, %struct.au0828_buffer** %5, align 8
  %23 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %24 = icmp ne %struct.au0828_buffer* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i8* @vb2_plane_vaddr(i32* %28, i32 0)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i8* %30, i32 0, i32 %33)
  %35 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %36 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %4, align 8
  %37 = load %struct.au0828_buffer*, %struct.au0828_buffer** %5, align 8
  %38 = call i32 @buffer_filled(%struct.au0828_dev* %35, %struct.au0828_dmaqueue* %36, %struct.au0828_buffer* %37)
  br label %39

39:                                               ; preds = %25, %1
  %40 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %4, align 8
  %41 = call i32 @vbi_get_next_buf(%struct.au0828_dmaqueue* %40, %struct.au0828_buffer** %5)
  %42 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %43 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %48 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %47, i32 0, i32 2
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = sdiv i32 %50, 10
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i32 @mod_timer(i32* %48, i64 %53)
  br label %55

55:                                               ; preds = %46, %39
  %56 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %57 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %56, i32 0, i32 1
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local %struct.au0828_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @buffer_filled(%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*) #1

declare dso_local i32 @vbi_get_next_buf(%struct.au0828_dmaqueue*, %struct.au0828_buffer**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
