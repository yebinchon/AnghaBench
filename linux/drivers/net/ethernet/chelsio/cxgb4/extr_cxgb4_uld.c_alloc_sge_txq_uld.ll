; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_alloc_sge_txq_uld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_alloc_sge_txq_uld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32*, %struct.TYPE_4__, %struct.sge }
%struct.TYPE_4__ = type { i32 }
%struct.sge = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sge_uld_txq_info = type { i32, %struct.sge_uld_txq* }
%struct.sge_uld_txq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_uld_txq_info*, i32)* @alloc_sge_txq_uld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_sge_txq_uld(%struct.adapter* %0, %struct.sge_uld_txq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_uld_txq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sge_uld_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_uld_txq_info* %1, %struct.sge_uld_txq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  store %struct.sge* %15, %struct.sge** %8, align 8
  %16 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %6, align 8
  %17 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %19, %23
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %60, %3
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %6, align 8
  %31 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %30, i32 0, i32 1
  %32 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %32, i64 %34
  store %struct.sge_uld_txq* %35, %struct.sge_uld_txq** %13, align 8
  %36 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %13, align 8
  %37 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 1024, i32* %38, align 4
  %39 = load %struct.adapter*, %struct.adapter** %5, align 8
  %40 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %13, align 8
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sge*, %struct.sge** %8, align 8
  %51 = getelementptr inbounds %struct.sge, %struct.sge* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @t4_sge_alloc_uld_txq(%struct.adapter* %39, %struct.sge_uld_txq* %40, i32 %49, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %29
  br label %64

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %25

63:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %69

64:                                               ; preds = %58
  %65 = load %struct.adapter*, %struct.adapter** %5, align 8
  %66 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %6, align 8
  %67 = call i32 @free_sge_txq_uld(%struct.adapter* %65, %struct.sge_uld_txq_info* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @t4_sge_alloc_uld_txq(%struct.adapter*, %struct.sge_uld_txq*, i32, i32, i32) #1

declare dso_local i32 @free_sge_txq_uld(%struct.adapter*, %struct.sge_uld_txq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
