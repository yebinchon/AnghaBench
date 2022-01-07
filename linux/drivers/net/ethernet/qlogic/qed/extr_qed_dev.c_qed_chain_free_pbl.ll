; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_free_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_free_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_chain = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i8*, i32 }

@QED_CHAIN_PAGE_SIZE = common dso_local global i64 0, align 8
@QED_CHAIN_PBL_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, %struct.qed_chain*)* @qed_chain_free_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_chain_free_pbl(%struct.qed_dev* %0, %struct.qed_chain* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_chain*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_chain* %1, %struct.qed_chain** %4, align 8
  %10 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %11 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %5, align 8
  %14 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %15 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %18 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %93

24:                                               ; preds = %2
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %84

28:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %60

40:                                               ; preds = %33
  %41 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* @QED_CHAIN_PAGE_SIZE, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_free_coherent(i32* %44, i64 %45, i8* %49, i32 %52)
  %54 = load i64, i64* @QED_CHAIN_PBL_ENTRY_SIZE, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr i8, i8* %55, i64 %54
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %40
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %29

60:                                               ; preds = %39, %29
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @QED_CHAIN_PBL_ENTRY_SIZE, align 8
  %63 = mul i64 %61, %62
  store i64 %63, i64* %8, align 8
  %64 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %65 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %60
  %69 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %70 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %75 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %79 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dma_free_coherent(i32* %72, i64 %73, i8* %77, i32 %81)
  br label %83

83:                                               ; preds = %68, %60
  br label %84

84:                                               ; preds = %83, %27
  %85 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %86 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = call i32 @vfree(i8** %88)
  %90 = load %struct.qed_chain*, %struct.qed_chain** %4, align 8
  %91 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8** null, i8*** %92, align 8
  br label %93

93:                                               ; preds = %84, %23
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @vfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
