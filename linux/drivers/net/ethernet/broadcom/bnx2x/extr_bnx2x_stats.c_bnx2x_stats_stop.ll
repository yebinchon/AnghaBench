; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_stats_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_stats_stop(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %4)
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i64 @bnx2x_hw_stats_update(%struct.bnx2x* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = call i32 @bnx2x_net_stats_update(%struct.bnx2x* %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %35 = call i32 @bnx2x_port_stats_stop(%struct.bnx2x* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %39)
  br label %41

41:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @bnx2x_stats_comp(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_hw_stats_update(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_storm_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_net_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_port_stats_stop(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
