; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_read_bgx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_read_bgx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.bgx_stats_msg = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.bgx_stats_msg*)* @nicvf_read_bgx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_read_bgx_stats(%struct.nicvf* %0, %struct.bgx_stats_msg* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.bgx_stats_msg*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.bgx_stats_msg* %1, %struct.bgx_stats_msg** %4, align 8
  %5 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %6 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %11 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %18 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %12, i32* %20, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %23 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %26 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %30 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %24, i32* %32, align 4
  br label %33

33:                                               ; preds = %21, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
