; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_write_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_write_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i64, i64, i64, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_write_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_write_copy(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca %struct.fm10k_mbx_fifo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  %12 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %13 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %12, i32 0, i32 5
  store %struct.fm10k_mbx_fifo* %13, %struct.fm10k_mbx_fifo** %5, align 8
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %18 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %7, align 8
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %100

25:                                               ; preds = %2
  %26 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %27 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %31 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @fm10k_mbx_tail_sub(%struct.fm10k_mbx_info* %33, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %39, %25
  %43 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %44 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %45 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo* %43, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 %48
  store i64* %50, i64** %7, align 8
  %51 = call i32 (...) @rmb()
  %52 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %53 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %96, %42
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %72 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %10, align 8
  %79 = add nsw i64 %76, %77
  %80 = load i64*, i64** %7, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %7, align 8
  %82 = load i64, i64* %80, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %75, i64 %79, i32 %83)
  br label %85

85:                                               ; preds = %70
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %8, align 8
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %61, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %98 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  store i64* %99, i64** %7, align 8
  br label %57

100:                                              ; preds = %24, %57
  ret void
}

declare dso_local i64 @fm10k_mbx_tail_sub(%struct.fm10k_mbx_info*, i64) #1

declare dso_local i64 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
