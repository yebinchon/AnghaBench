; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_kcq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_kcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.kcq_info = type { %struct.TYPE_2__, i32, i32, %struct.kcqe** }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.kcqe = type { i32 }
%struct.bnx2x_bd_chain_next = type { i32, i32 }

@KCQ_PAGE_CNT = common dso_local global i32 0, align 4
@cnic_bnx2_next_idx = common dso_local global i32 0, align 4
@cnic_bnx2_hw_idx = common dso_local global i32 0, align 4
@cnic_bnx2x_next_idx = common dso_local global i32 0, align 4
@cnic_bnx2x_hw_idx = common dso_local global i32 0, align 4
@MAX_KCQE_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kcq_info*, i32)* @cnic_alloc_kcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_kcq(%struct.cnic_dev* %0, %struct.kcq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.kcq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kcqe**, align 8
  %12 = alloca %struct.bnx2x_bd_chain_next*, align 8
  %13 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store %struct.kcq_info* %1, %struct.kcq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %19 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %20 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %19, i32 0, i32 0
  %21 = load i32, i32* @KCQ_PAGE_CNT, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %18, %struct.TYPE_2__* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %98

28:                                               ; preds = %17
  %29 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %30 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.kcqe**
  store %struct.kcqe** %33, %struct.kcqe*** %11, align 8
  %34 = load %struct.kcqe**, %struct.kcqe*** %11, align 8
  %35 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %36 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %35, i32 0, i32 3
  store %struct.kcqe** %34, %struct.kcqe*** %36, align 8
  %37 = load i32, i32* @cnic_bnx2_next_idx, align 4
  %38 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %39 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @cnic_bnx2_hw_idx, align 4
  %41 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %42 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %98

46:                                               ; preds = %28
  %47 = load i32, i32* @cnic_bnx2x_next_idx, align 4
  %48 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %49 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @cnic_bnx2x_hw_idx, align 4
  %51 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %52 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %94, %46
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @KCQ_PAGE_CNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load %struct.kcqe**, %struct.kcqe*** %11, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.kcqe*, %struct.kcqe** %58, i64 %60
  %62 = load %struct.kcqe*, %struct.kcqe** %61, align 8
  %63 = load i64, i64* @MAX_KCQE_CNT, align 8
  %64 = getelementptr inbounds %struct.kcqe, %struct.kcqe* %62, i64 %63
  %65 = bitcast %struct.kcqe* %64 to %struct.bnx2x_bd_chain_next*
  store %struct.bnx2x_bd_chain_next* %65, %struct.bnx2x_bd_chain_next** %12, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @KCQ_PAGE_CNT, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %74 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 32
  %82 = load %struct.bnx2x_bd_chain_next*, %struct.bnx2x_bd_chain_next** %12, align 8
  %83 = getelementptr inbounds %struct.bnx2x_bd_chain_next, %struct.bnx2x_bd_chain_next* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.kcq_info*, %struct.kcq_info** %6, align 8
  %85 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bnx2x_bd_chain_next*, %struct.bnx2x_bd_chain_next** %12, align 8
  %93 = getelementptr inbounds %struct.bnx2x_bd_chain_next, %struct.bnx2x_bd_chain_next* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %72
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %53

97:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %45, %26
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @cnic_alloc_dma(%struct.cnic_dev*, %struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
