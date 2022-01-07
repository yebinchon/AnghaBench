; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_fini_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_fini_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_queue*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_queue*)* @hnae_fini_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_fini_queue(%struct.hnae_queue* %0) #0 {
  %2 = alloca %struct.hnae_queue*, align 8
  store %struct.hnae_queue* %0, %struct.hnae_queue** %2, align 8
  %3 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %4 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.hnae_queue*)*, i32 (%struct.hnae_queue*)** %8, align 8
  %10 = icmp ne i32 (%struct.hnae_queue*)* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %13 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.hnae_queue*)*, i32 (%struct.hnae_queue*)** %17, align 8
  %19 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %20 = call i32 %18(%struct.hnae_queue* %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %23 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %22, i32 0, i32 1
  %24 = call i32 @hnae_fini_ring(i32* %23)
  %25 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %26 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %25, i32 0, i32 0
  %27 = call i32 @hnae_fini_ring(i32* %26)
  ret void
}

declare dso_local i32 @hnae_fini_ring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
