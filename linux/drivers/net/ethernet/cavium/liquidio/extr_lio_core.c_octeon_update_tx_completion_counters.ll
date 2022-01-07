; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_update_tx_completion_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_update_tx_completion_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octnet_buf_free_info = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.octeon_soft_command = type { %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_update_tx_completion_counters(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.octnet_buf_free_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.octeon_soft_command*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 131, label %13
    i32 130, label %13
    i32 128, label %19
    i32 129, label %19
  ]

13:                                               ; preds = %4, %4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.octnet_buf_free_info*
  store %struct.octnet_buf_free_info* %15, %struct.octnet_buf_free_info** %9, align 8
  %16 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %9, align 8
  %17 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %10, align 8
  br label %26

19:                                               ; preds = %4, %4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %21, %struct.octeon_soft_command** %11, align 8
  %22 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %11, align 8
  %23 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  br label %26

25:                                               ; preds = %4
  br label %38

26:                                               ; preds = %19, %13
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %35, %32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %38

38:                                               ; preds = %26, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
