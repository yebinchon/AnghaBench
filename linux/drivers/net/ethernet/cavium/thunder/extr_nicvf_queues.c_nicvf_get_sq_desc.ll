; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_get_sq_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_get_sq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_queue = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_queue*, i32)* @nicvf_get_sq_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_get_sq_desc(%struct.snd_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_queue* %0, %struct.snd_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %7 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %10 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %16 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %15, i32 0, i32 3
  %17 = call i32 @atomic_sub(i32 %14, i32* %16)
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %21 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %27 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %31 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.snd_queue*, %struct.snd_queue** %3, align 8
  %36 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
