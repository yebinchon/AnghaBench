; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_resources(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_set*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %5 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %6 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %5, i32 0, i32 0
  %7 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  store %struct.queue_set* %7, %struct.queue_set** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %11 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %16 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %17 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @nicvf_free_rbdr(%struct.nicvf* %15, i32* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %30 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %35 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %36 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @nicvf_free_cmp_queue(%struct.nicvf* %34, i32* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %27

45:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %49 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %54 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %55 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @nicvf_free_snd_queue(%struct.nicvf* %53, i32* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %46

64:                                               ; preds = %46
  ret void
}

declare dso_local i32 @nicvf_free_rbdr(%struct.nicvf*, i32*) #1

declare dso_local i32 @nicvf_free_cmp_queue(%struct.nicvf*, i32*) #1

declare dso_local i32 @nicvf_free_snd_queue(%struct.nicvf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
