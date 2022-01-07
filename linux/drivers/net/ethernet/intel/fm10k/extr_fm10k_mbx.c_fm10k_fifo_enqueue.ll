; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_fifo = type { i64, i32 }

@FM10K_MBX_ERR_SIZE = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_NO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_fifo*, i32*)* @fm10k_fifo_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_fifo_enqueue(%struct.fm10k_mbx_fifo* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_mbx_fifo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.fm10k_mbx_fifo* %0, %struct.fm10k_mbx_fifo** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @FM10K_TLV_DWORD_LEN(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %4, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FM10K_MBX_ERR_SIZE, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %4, align 8
  %20 = call i64 @fm10k_fifo_unused(%struct.fm10k_mbx_fifo* %19)
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @FM10K_MBX_ERR_NO_SPACE, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %17
  %25 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @fm10k_fifo_write_copy(%struct.fm10k_mbx_fifo* %25, i32* %26, i32 0, i64 %27)
  %29 = call i32 (...) @wmb()
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %4, align 8
  %32 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %22, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @FM10K_TLV_DWORD_LEN(i32) #1

declare dso_local i64 @fm10k_fifo_unused(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @fm10k_fifo_write_copy(%struct.fm10k_mbx_fifo*, i32*, i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
