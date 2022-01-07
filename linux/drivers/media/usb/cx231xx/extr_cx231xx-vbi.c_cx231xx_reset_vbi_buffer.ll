; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_cx231xx_reset_vbi_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-vbi.c_cx231xx_reset_vbi_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_reset_vbi_buffer(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca %struct.cx231xx_dmaqueue*, align 8
  %5 = alloca %struct.cx231xx_buffer*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %4, align 8
  %6 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %7 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %9, align 8
  store %struct.cx231xx_buffer* %10, %struct.cx231xx_buffer** %5, align 8
  %11 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %5, align 8
  %12 = icmp eq %struct.cx231xx_buffer* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %15 = call i32 @get_next_vbi_buf(%struct.cx231xx_dmaqueue* %14, %struct.cx231xx_buffer** %5)
  %16 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %17 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %19 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 1
  %25 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %26 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %28 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @get_next_vbi_buf(%struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
