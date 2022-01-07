; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_validate_msg_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_validate_msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i64, i64, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_mbx_info*, i64)* @fm10k_mbx_validate_msg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_mbx_validate_msg_size(%struct.fm10k_mbx_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fm10k_mbx_fifo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %10, i32 0, i32 2
  store %struct.fm10k_mbx_fifo* %11, %struct.fm10k_mbx_fifo** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %13 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %32, %2
  %18 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %6, align 8
  %19 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo* %21, i64 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @FM10K_TLV_DWORD_LEN(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %17, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %43 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %59

47:                                               ; preds = %40, %36
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  br label %57

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %54, %55
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i64 [ %52, %51 ], [ %56, %53 ]
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo*, i64) #1

declare dso_local i64 @FM10K_TLV_DWORD_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
