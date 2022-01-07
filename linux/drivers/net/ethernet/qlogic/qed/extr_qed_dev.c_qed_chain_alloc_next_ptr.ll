; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc_next_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc_next_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_chain = type { i64, i8*, i32 }

@QED_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_chain*)* @qed_chain_alloc_next_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_chain_alloc_next_ptr(%struct.qed_dev* %0, %struct.qed_chain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_chain*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_chain* %1, %struct.qed_chain** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %13 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @dma_alloc_coherent(i32* %20, i32 %21, i32* %8, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %16
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @qed_chain_init_mem(%struct.qed_chain* %33, i8* %34, i32 %35)
  %37 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %38 = call i32 @qed_chain_reset(%struct.qed_chain* %37)
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @qed_chain_init_next_ptr_elem(%struct.qed_chain* %40, i8* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %45
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %54 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.qed_chain*, %struct.qed_chain** %5, align 8
  %57 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @qed_chain_init_next_ptr_elem(%struct.qed_chain* %51, i8* %52, i8* %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qed_chain_init_mem(%struct.qed_chain*, i8*, i32) #1

declare dso_local i32 @qed_chain_reset(%struct.qed_chain*) #1

declare dso_local i32 @qed_chain_init_next_ptr_elem(%struct.qed_chain*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
