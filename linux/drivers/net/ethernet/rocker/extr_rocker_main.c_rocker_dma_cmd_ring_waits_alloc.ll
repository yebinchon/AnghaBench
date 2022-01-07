; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_cmd_ring_waits_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_cmd_ring_waits_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.rocker_dma_ring_info }
%struct.rocker_dma_ring_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @rocker_dma_cmd_ring_waits_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_cmd_ring_waits_alloc(%struct.rocker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.rocker_dma_ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  %7 = load %struct.rocker*, %struct.rocker** %3, align 8
  %8 = getelementptr inbounds %struct.rocker, %struct.rocker* %7, i32 0, i32 0
  store %struct.rocker_dma_ring_info* %8, %struct.rocker_dma_ring_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %12 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %17 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @rocker_dma_cmd_ring_wait_alloc(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %31

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %50

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %45, %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %4, align 8
  %39 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @rocker_dma_cmd_ring_wait_free(i32* %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @rocker_dma_cmd_ring_wait_alloc(i32*) #1

declare dso_local i32 @rocker_dma_cmd_ring_wait_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
