; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_wakeup_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_wakeup_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bttv_buffer*, i64 }
%struct.bttv_buffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@RISC_SLOT_O_FIELD = common dso_local global i32 0, align 4
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @bttv_irq_wakeup_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_irq_wakeup_top(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.bttv_buffer*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load %struct.bttv*, %struct.bttv** %2, align 8
  %5 = getelementptr inbounds %struct.bttv, %struct.bttv* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.bttv_buffer*, %struct.bttv_buffer** %6, align 8
  store %struct.bttv_buffer* %7, %struct.bttv_buffer** %3, align 8
  %8 = load %struct.bttv_buffer*, %struct.bttv_buffer** %3, align 8
  %9 = icmp eq %struct.bttv_buffer* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.bttv*, %struct.bttv** %2, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.bttv*, %struct.bttv** %2, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.bttv*, %struct.bttv** %2, align 8
  %19 = getelementptr inbounds %struct.bttv, %struct.bttv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.bttv_buffer* null, %struct.bttv_buffer** %20, align 8
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = load i32, i32* @RISC_SLOT_O_FIELD, align 4
  %23 = call i32 @bttv_risc_hook(%struct.bttv* %21, i32 %22, i32* null, i32 0)
  %24 = call i32 (...) @ktime_get_ns()
  %25 = load %struct.bttv_buffer*, %struct.bttv_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.bttv*, %struct.bttv** %2, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bttv_buffer*, %struct.bttv_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @VIDEOBUF_DONE, align 4
  %35 = load %struct.bttv_buffer*, %struct.bttv_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.bttv_buffer*, %struct.bttv_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @wake_up(i32* %40)
  %42 = load %struct.bttv*, %struct.bttv** %2, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bttv_risc_hook(%struct.bttv*, i32, i32*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
