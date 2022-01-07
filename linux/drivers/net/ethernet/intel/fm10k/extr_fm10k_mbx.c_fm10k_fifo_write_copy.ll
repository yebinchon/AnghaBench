; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_write_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_write_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_fifo = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_fifo*, i32*, i32, i32)* @fm10k_fifo_write_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_fifo_write_copy(%struct.fm10k_mbx_fifo* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fm10k_mbx_fifo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.fm10k_mbx_fifo* %0, %struct.fm10k_mbx_fifo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %10, align 8
  %20 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  %39 = shl i32 %38, 2
  %40 = call i32 @memcpy(i32* %31, i32* %35, i32 %39)
  br label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 2
  %48 = call i32 @memcpy(i32* %44, i32* %45, i32 %47)
  ret void
}

declare dso_local i32 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
