; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_tail_padding_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_tail_padding_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.mlx5e_rq_stats = type { i32 }

@MAX_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.mlx5e_rq_stats*)* @tail_padding_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tail_padding_csum(%struct.sk_buff* %0, i32 %1, %struct.mlx5e_rq_stats* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_rq_stats*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx5e_rq_stats* %2, %struct.mlx5e_rq_stats** %6, align 8
  %12 = load i32, i32* @MAX_PADDING, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX_PADDING, align 4
  %23 = icmp sgt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %6, align 8
  %32 = call i32 @tail_padding_csum_slow(%struct.sk_buff* %28, i32 %29, i32 %30, %struct.mlx5e_rq_stats* %31)
  store i32 1, i32* %11, align 4
  br label %65

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @skb_header_pointer(%struct.sk_buff* %34, i32 %35, i32 %36, i32* %15)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %6, align 8
  %49 = call i32 @tail_padding_csum_slow(%struct.sk_buff* %45, i32 %46, i32 %47, %struct.mlx5e_rq_stats* %48)
  store i32 1, i32* %11, align 4
  br label %65

50:                                               ; preds = %33
  %51 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @csum_partial(i8* %58, i32 %59, i32 0)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @csum_block_add(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %50, %44, %27
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %69 [
    i32 0, label %68
    i32 1, label %68
  ]

68:                                               ; preds = %65, %65
  ret void

69:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @tail_padding_csum_slow(%struct.sk_buff*, i32, i32, %struct.mlx5e_rq_stats*) #2

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #2

declare dso_local i32 @csum_block_add(i32, i32, i32) #2

declare dso_local i32 @csum_partial(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
