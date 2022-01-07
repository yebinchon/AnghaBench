; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_free_cq_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_free_cq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.nicvf_cq_poll**, %struct.TYPE_2__* }
%struct.nicvf_cq_poll = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_free_cq_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_cq_poll(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %struct.nicvf_cq_poll*, align 8
  %4 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %8 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %5
  %14 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 0
  %16 = load %struct.nicvf_cq_poll**, %struct.nicvf_cq_poll*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %16, i64 %18
  %20 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %19, align 8
  store %struct.nicvf_cq_poll* %20, %struct.nicvf_cq_poll** %3, align 8
  %21 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %3, align 8
  %22 = icmp ne %struct.nicvf_cq_poll* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %33

24:                                               ; preds = %13
  %25 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %26 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %25, i32 0, i32 0
  %27 = load %struct.nicvf_cq_poll**, %struct.nicvf_cq_poll*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %27, i64 %29
  store %struct.nicvf_cq_poll* null, %struct.nicvf_cq_poll** %30, align 8
  %31 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %3, align 8
  %32 = call i32 @kfree(%struct.nicvf_cq_poll* %31)
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @kfree(%struct.nicvf_cq_poll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
