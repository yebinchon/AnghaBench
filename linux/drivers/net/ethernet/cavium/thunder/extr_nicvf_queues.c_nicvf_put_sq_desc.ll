; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_put_sq_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_put_sq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_queue = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_put_sq_desc(%struct.snd_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_queue* %0, %struct.snd_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %6 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %12 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %11, i32 0, i32 3
  %13 = call i32 @atomic_add(i32 %10, i32* %12)
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %17 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %9
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %23 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %27 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %32 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
