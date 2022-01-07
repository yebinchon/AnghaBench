; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_update_local_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_update_local_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*, i64)* @fm10k_mbx_update_local_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_update_local_crc(%struct.fm10k_mbx_info* %0, i64 %1) #0 {
  %3 = alloca %struct.fm10k_mbx_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %9, i64 %10, i32 %13)
  %15 = sub nsw i64 %8, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %17 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %16, i32 0, i32 1
  %18 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @fm10k_fifo_head_offset(i32* %17, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %23 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %22, i32 0, i32 1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %27 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @fm10k_fifo_crc(i32* %23, i64 %24, i64 %25, i32 %28)
  %30 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %31 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

declare dso_local i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info*, i64, i32) #1

declare dso_local i64 @fm10k_fifo_head_offset(i32*, i32) #1

declare dso_local i32 @fm10k_fifo_crc(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
