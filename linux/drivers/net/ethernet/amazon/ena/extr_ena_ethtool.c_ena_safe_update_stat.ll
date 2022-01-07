; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_safe_update_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_safe_update_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u64_stats_sync = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.u64_stats_sync*)* @ena_safe_update_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_safe_update_stat(i32* %0, i32* %1, %struct.u64_stats_sync* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.u64_stats_sync*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.u64_stats_sync* %2, %struct.u64_stats_sync** %6, align 8
  br label %8

8:                                                ; preds = %14, %3
  %9 = load %struct.u64_stats_sync*, %struct.u64_stats_sync** %6, align 8
  %10 = call i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %8
  %15 = load %struct.u64_stats_sync*, %struct.u64_stats_sync** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %8, label %19

19:                                               ; preds = %14
  ret void
}

declare dso_local i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
