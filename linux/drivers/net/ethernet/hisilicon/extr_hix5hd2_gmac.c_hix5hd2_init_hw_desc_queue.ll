; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_init_hw_desc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_init_hw_desc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.device* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.hix5hd2_desc* }
%struct.hix5hd2_desc = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.device = type { i32 }

@RX_DESC_NUM = common dso_local global i8* null, align 8
@TX_DESC_NUM = common dso_local global i8* null, align 8
@QUEUE_NUMS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hix5hd2_priv*)* @hix5hd2_init_hw_desc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_init_hw_desc_queue(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hix5hd2_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hix5hd2_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %3, align 8
  %9 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %10 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %9, i32 0, i32 5
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i8*, i8** @RX_DESC_NUM, align 8
  %13 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  %16 = load i8*, i8** @RX_DESC_NUM, align 8
  %17 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** @TX_DESC_NUM, align 8
  %21 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** @TX_DESC_NUM, align 8
  %25 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %26 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %76, %1
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @QUEUE_NUMS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %34 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.hix5hd2_desc* @dma_alloc_coherent(%struct.device* %44, i32 %45, i32* %6, i32 %46)
  store %struct.hix5hd2_desc* %47, %struct.hix5hd2_desc** %5, align 8
  %48 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %5, align 8
  %49 = icmp eq %struct.hix5hd2_desc* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %80

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %54 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 4
  %60 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %5, align 8
  %61 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %62 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  store %struct.hix5hd2_desc* %60, %struct.hix5hd2_desc** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %70 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 %68, i32* %75, align 8
  br label %76

76:                                               ; preds = %51
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %28

79:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %85

80:                                               ; preds = %50
  %81 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %3, align 8
  %82 = call i32 @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %79
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.hix5hd2_desc* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
