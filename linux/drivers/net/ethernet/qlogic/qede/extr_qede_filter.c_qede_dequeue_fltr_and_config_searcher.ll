; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_dequeue_fltr_and_config_searcher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_dequeue_fltr_and_config_searcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.qede_arfs_fltr_node = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_arfs_fltr_node*)* @qede_dequeue_fltr_and_config_searcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_dequeue_fltr_and_config_searcher(%struct.qede_dev* %0, %struct.qede_arfs_fltr_node* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.qede_arfs_fltr_node*, align 8
  %5 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.qede_arfs_fltr_node* %1, %struct.qede_arfs_fltr_node** %4, align 8
  %6 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %7 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %6, i32 0, i32 2
  %8 = call i32 @hlist_del(i32* %7)
  %9 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %14 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %17 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DMA_TO_DEVICE, align 4
  %20 = call i32 @dma_unmap_single(i32* %12, i32 %15, i32 %18, i32 %19)
  %21 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %22 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %23 = call i32 @qede_free_arfs_filter(%struct.qede_dev* %21, %struct.qede_arfs_fltr_node* %22)
  %24 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %31 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %2
  %37 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QED_FILTER_CONFIG_MODE_DISABLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load i64, i64* @QED_FILTER_CONFIG_MODE_DISABLE, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %48 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %53 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %51(i32 %54, i32 %55)
  %57 = load i64, i64* @QED_FILTER_CONFIG_MODE_DISABLE, align 8
  %58 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %44, %36, %2
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @qede_free_arfs_filter(%struct.qede_dev*, %struct.qede_arfs_fltr_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
