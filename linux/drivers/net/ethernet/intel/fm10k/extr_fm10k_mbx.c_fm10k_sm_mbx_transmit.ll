; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i64, i64, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i64)* @fm10k_sm_mbx_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_sm_mbx_transmit(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1, i64 %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fm10k_mbx_fifo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %13 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %12, i32 0, i32 3
  store %struct.fm10k_mbx_fifo* %13, %struct.fm10k_mbx_fifo** %7, align 8
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %19 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @fm10k_mbx_pull_head(%struct.fm10k_hw* %28, %struct.fm10k_mbx_info* %29, i64 %30)
  br label %32

32:                                               ; preds = %57, %27
  %33 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %7, align 8
  %34 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo* %36, i64 %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %11, align 8
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @FM10K_TLV_DWORD_LEN(i32 %43)
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %32
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %50 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %54, %55
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i1 [ false, %47 ], [ %56, %53 ]
  br i1 %58, label %32, label %59

59:                                               ; preds = %57
  %60 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %61 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %67 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %68 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 %69, %70
  %72 = call i64 @fm10k_mbx_tail_sub(%struct.fm10k_mbx_info* %66, i64 %71)
  %73 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %74 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %77 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %65, %59
  %79 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %80 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %87 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %84, %78
  ret void
}

declare dso_local i32 @fm10k_mbx_pull_head(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i64) #1

declare dso_local i32 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo*, i64) #1

declare dso_local i64 @FM10K_TLV_DWORD_LEN(i32) #1

declare dso_local i64 @fm10k_mbx_tail_sub(%struct.fm10k_mbx_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
