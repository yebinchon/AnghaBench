; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_read_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_read_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_read_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_read_copy(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca %struct.fm10k_mbx_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %11, i32 0, i32 5
  store %struct.fm10k_mbx_fifo* %12, %struct.fm10k_mbx_fifo** %5, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %17 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %24 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @fm10k_mbx_head_sub(%struct.fm10k_mbx_info* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %31 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %39 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %40 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %7, align 8
  %47 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %48 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %92, %37
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %89, %55
  %57 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %58 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %70 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = add nsw i32 %74, %75
  %78 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %73, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ false, %81 ], [ %88, %85 ]
  br i1 %90, label %56, label %91

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %94 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %7, align 8
  br label %52

96:                                               ; preds = %52
  %97 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @fm10k_mbx_head_sub(%struct.fm10k_mbx_info*, i32) #1

declare dso_local i32 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo*, i32) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
