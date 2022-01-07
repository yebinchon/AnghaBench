; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_verify_remote_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_verify_remote_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i64, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i32 }

@FM10K_MBX_ERR_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_info*)* @fm10k_mbx_verify_remote_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_verify_remote_crc(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_info*, align 8
  %3 = alloca %struct.fm10k_mbx_fifo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %2, align 8
  %7 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %8 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %7, i32 0, i32 4
  store %struct.fm10k_mbx_fifo* %8, %struct.fm10k_mbx_fifo** %3, align 8
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %3, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo* %12, i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %26 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fm10k_fifo_crc(%struct.fm10k_mbx_fifo* %22, i64 %23, i64 %24, i32 %27)
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %33 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %32, i32 0, i32 1
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %35 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @fm10k_crc_16b(i32* %33, i32 %36, i32 1)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @FM10K_MBX_ERR_CRC, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  ret i32 %44
}

declare dso_local i64 @fm10k_fifo_tail_offset(%struct.fm10k_mbx_fifo*, i32) #1

declare dso_local i32 @fm10k_fifo_crc(%struct.fm10k_mbx_fifo*, i64, i64, i32) #1

declare dso_local i64 @fm10k_crc_16b(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
