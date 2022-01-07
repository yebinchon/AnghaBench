; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_head_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_head_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_fifo = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_fifo*)* @fm10k_fifo_head_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_fifo_head_len(%struct.fm10k_mbx_fifo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_mbx_fifo*, align 8
  %4 = alloca i32*, align 8
  store %struct.fm10k_mbx_fifo* %0, %struct.fm10k_mbx_fifo** %3, align 8
  %5 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %3, align 8
  %6 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %3, align 8
  %9 = call i32 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo* %8, i32 0)
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  store i32* %11, i32** %4, align 8
  %12 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %3, align 8
  %13 = call i64 @fm10k_fifo_empty(%struct.fm10k_mbx_fifo* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @FM10K_TLV_DWORD_LEN(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo*, i32) #1

declare dso_local i64 @fm10k_fifo_empty(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @FM10K_TLV_DWORD_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
