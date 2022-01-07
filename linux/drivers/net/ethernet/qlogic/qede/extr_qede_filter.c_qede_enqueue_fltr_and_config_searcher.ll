; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_enqueue_fltr_and_config_searcher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_enqueue_fltr_and_config_searcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 (i32, i64)* }
%struct.TYPE_5__ = type { i32 }
%struct.qede_arfs_fltr_node = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to map DMA memory for rule\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QED_FILTER_CONFIG_MODE_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32)* @qede_enqueue_fltr_and_config_searcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_enqueue_fltr_and_config_searcher(%struct.qede_dev* %0, %struct.qede_arfs_fltr_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_arfs_fltr_node*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_arfs_fltr_node* %1, %struct.qede_arfs_fltr_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %9 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %13 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %16 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DMA_TO_DEVICE, align 4
  %19 = call i32 @dma_map_single(i32* %11, i32 %14, i32 %17, i32 %18)
  %20 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %21 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %23 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %27 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @dma_mapping_error(i32* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %33 = call i32 @DP_NOTICE(%struct.qede_dev* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %35 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %36 = call i32 @qede_free_arfs_filter(%struct.qede_dev* %34, %struct.qede_arfs_fltr_node* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %92

39:                                               ; preds = %3
  %40 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %41 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %40, i32 0, i32 1
  %42 = call i32 @INIT_HLIST_NODE(i32* %41)
  %43 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %44 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %43, i32 0, i32 1
  %45 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev* %45, i32 %46)
  %48 = call i32 @hlist_add_head(i32* %44, i32 %47)
  %49 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %50 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %56 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %91

61:                                               ; preds = %39
  %62 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %63 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @QED_FILTER_CONFIG_MODE_DISABLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %61
  %70 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %71 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (i32, i64)*, i32 (i32, i64)** %73, align 8
  %75 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %76 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %79 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 %74(i32 %77, i64 %81)
  %83 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %84 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %88 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %69, %61, %39
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %31
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_free_arfs_filter(%struct.qede_dev*, %struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
