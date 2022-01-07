; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_destroy_hw_desc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_destroy_hw_desc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@QUEUE_NUMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_destroy_hw_desc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %55, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @QUEUE_NUMS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %10 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %8
  %19 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %20 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %23 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %31 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %39 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_free_coherent(i32 %21, i32 %29, i32* %37, i32 %45)
  %47 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %48 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %18, %8
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %4

58:                                               ; preds = %4
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
