; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_dequeue_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_dequeue_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i32, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_dequeue_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_mbx_dequeue_rx(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca %struct.fm10k_mbx_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  %8 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %9 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %8, i32 0, i32 3
  store %struct.fm10k_mbx_fifo* %9, %struct.fm10k_mbx_fifo** %5, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %39, %2
  %11 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %12 = call i32 @fm10k_fifo_empty(%struct.fm10k_mbx_fifo* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  %16 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %17 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %18 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %25 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %26 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fm10k_tlv_msg_parse(%struct.fm10k_hw* %16, i64 %23, %struct.fm10k_mbx_info* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %33 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %38 = call i32 @fm10k_fifo_head_drop(%struct.fm10k_mbx_fifo* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %44 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %47 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %50 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %54 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 2
  %57 = call i32 @memmove(i64 %45, i64 %52, i32 %56)
  %58 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %59 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %62 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %5, align 8
  %66 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %7, align 8
  ret i64 %67
}

declare dso_local i32 @fm10k_fifo_empty(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @fm10k_tlv_msg_parse(%struct.fm10k_hw*, i64, %struct.fm10k_mbx_info*, i32) #1

declare dso_local i32 @fm10k_fifo_head_drop(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
