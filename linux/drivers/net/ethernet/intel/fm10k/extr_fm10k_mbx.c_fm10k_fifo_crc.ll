; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_fifo_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_fifo = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_fifo*, i32, i32, i32)* @fm10k_fifo_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_fifo_crc(%struct.fm10k_mbx_fifo* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fm10k_mbx_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.fm10k_mbx_fifo* %0, %struct.fm10k_mbx_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %9, align 8
  %16 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %17 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 2
  %29 = call i32 @fm10k_crc_16b(i32* %25, i32 %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %31 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %24, %4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2
  %41 = call i32 @fm10k_crc_16b(i32* %37, i32 %38, i32 %40)
  ret i32 %41
}

declare dso_local i32 @fm10k_crc_16b(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
