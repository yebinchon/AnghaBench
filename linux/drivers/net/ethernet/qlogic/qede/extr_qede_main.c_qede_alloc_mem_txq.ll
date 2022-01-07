; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_alloc_mem_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_alloc_mem_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)* }
%struct.qede_tx_queue = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8*, i8* }
%union.eth_tx_bd_types = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_tx_queue*)* @qede_alloc_mem_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_alloc_mem_txq(%struct.qede_dev* %0, %struct.qede_tx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qede_tx_queue*, align 8
  %6 = alloca %union.eth_tx_bd_types*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %5, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %13 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %15 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %20 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 1, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %29 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %32 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  br label %82

37:                                               ; preds = %18
  br label %58

38:                                               ; preds = %2
  %39 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %40 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 1, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 %45, i32 %46)
  %48 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %49 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %52 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %38
  br label %82

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %60 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)** %64, align 8
  %66 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %67 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %70 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %71 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %72 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %73 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %76 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %75, i32 0, i32 1
  %77 = call i32 %65(i32 %68, i32 %69, i32 %70, i32 %71, i32 %74, i32 4, i32* %76, i32* null)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %58
  br label %82

81:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %88

82:                                               ; preds = %80, %56, %36
  %83 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %84 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %5, align 8
  %85 = call i32 @qede_free_mem_txq(%struct.qede_dev* %83, %struct.qede_tx_queue* %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %81
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @qede_free_mem_txq(%struct.qede_dev*, %struct.qede_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
