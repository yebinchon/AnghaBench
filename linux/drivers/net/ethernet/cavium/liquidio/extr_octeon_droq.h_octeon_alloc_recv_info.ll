; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.h_octeon_alloc_recv_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.h_octeon_alloc_recv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_recv_info = type { i32*, %struct.octeon_recv_pkt* }
%struct.octeon_recv_pkt = type { i32 }

@OCT_RECV_PKT_SIZE = common dso_local global i32 0, align 4
@OCT_RECV_INFO_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.octeon_recv_info* (i32)* @octeon_alloc_recv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.octeon_recv_info* @octeon_alloc_recv_info(i32 %0) #0 {
  %2 = alloca %struct.octeon_recv_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_recv_info*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @OCT_RECV_PKT_SIZE, align 4
  %7 = load i32, i32* @OCT_RECV_INFO_SIZE, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32* @kmalloc(i32 %10, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.octeon_recv_info* null, %struct.octeon_recv_info** %2, align 8
  br label %42

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.octeon_recv_info*
  store %struct.octeon_recv_info* %18, %struct.octeon_recv_info** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @OCT_RECV_INFO_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = bitcast i32* %22 to %struct.octeon_recv_pkt*
  %24 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  %25 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %24, i32 0, i32 1
  store %struct.octeon_recv_pkt* %23, %struct.octeon_recv_pkt** %25, align 8
  %26 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  %27 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %16
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @OCT_RECV_INFO_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @OCT_RECV_PKT_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %30, %16
  %41 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  store %struct.octeon_recv_info* %41, %struct.octeon_recv_info** %2, align 8
  br label %42

42:                                               ; preds = %40, %15
  %43 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %2, align 8
  ret %struct.octeon_recv_info* %43
}

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
