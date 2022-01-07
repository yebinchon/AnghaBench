; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.s2255_vc = type { i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@SYS_FRAMES = common dso_local global i32 0, align 4
@S2255_READ_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s2255_vc*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %8 = call %struct.s2255_vc* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.s2255_vc* %8, %struct.s2255_vc** %5, align 8
  %9 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %10 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %12 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %14 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %16 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %39, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SYS_FRAMES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i32, i32* @S2255_READ_IDLE, align 4
  %23 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %24 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %22, i32* %30, align 8
  %31 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %32 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.s2255_vc*, %struct.s2255_vc** %5, align 8
  %44 = call i32 @s2255_start_acquire(%struct.s2255_vc* %43)
  ret i32 %44
}

declare dso_local %struct.s2255_vc* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @s2255_start_acquire(%struct.s2255_vc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
