; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_free_next_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_free_next_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_chain = type { i64, i64, i64, i32, i8* }
%struct.qed_chain_next = type { i32, i8* }

@QED_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, %struct.qed_chain*)* @qed_chain_free_next_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_chain_free_next_ptr(%struct.qed_dev* %0, %struct.qed_chain* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_chain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_chain_next*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_chain* %1, %struct.qed_chain** %4, align 8
  %12 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %13 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %15 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %16 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %23 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %26 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = mul nsw i64 %24, %27
  store i64 %28, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %62, %21
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %32 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %65

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = bitcast i32* %43 to %struct.qed_chain_next*
  store %struct.qed_chain_next* %44, %struct.qed_chain_next** %9, align 8
  %45 = load %struct.qed_chain_next*, %struct.qed_chain_next** %9, align 8
  %46 = getelementptr inbounds %struct.qed_chain_next, %struct.qed_chain_next* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  %48 = load %struct.qed_chain_next*, %struct.qed_chain_next** %9, align 8
  %49 = getelementptr inbounds %struct.qed_chain_next, %struct.qed_chain_next* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @HILO_DMA_REGPAIR(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %53 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dma_free_coherent(i32* %55, i32 %56, i8* %57, i32 %58)
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %5, align 8
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %39
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %29

65:                                               ; preds = %20, %38, %29
  ret void
}

declare dso_local i32 @HILO_DMA_REGPAIR(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
