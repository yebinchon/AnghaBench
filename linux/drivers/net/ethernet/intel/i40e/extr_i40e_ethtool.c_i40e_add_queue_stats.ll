; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_add_queue_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_add_queue_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_stats = type { i32 }
%struct.i40e_ring = type { i32 }

@i40e_gstrings_queue_stats = common dso_local global %struct.i40e_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.i40e_ring*)* @i40e_add_queue_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_add_queue_stats(i32** %0, %struct.i40e_ring* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.i40e_ring* %1, %struct.i40e_ring** %4, align 8
  %9 = load %struct.i40e_stats*, %struct.i40e_stats** @i40e_gstrings_queue_stats, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.i40e_stats* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.i40e_stats*, %struct.i40e_stats** @i40e_gstrings_queue_stats, align 8
  store %struct.i40e_stats* %11, %struct.i40e_stats** %6, align 8
  br label %12

12:                                               ; preds = %51, %2
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %14 = icmp ne %struct.i40e_ring* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %20

16:                                               ; preds = %12
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 0
  %19 = call i32 @u64_stats_fetch_begin_irq(i32* %18)
  br label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ 0, %15 ], [ %19, %16 ]
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32**, i32*** %3, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %33 = load %struct.i40e_stats*, %struct.i40e_stats** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.i40e_stats, %struct.i40e_stats* %33, i64 %35
  %37 = call i32 @i40e_add_one_ethtool_stat(i32* %31, %struct.i40e_ring* %32, %struct.i40e_stats* %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %22

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %44 = icmp ne %struct.i40e_ring* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @u64_stats_fetch_retry_irq(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %12, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %5, align 4
  %55 = load i32**, i32*** %3, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %55, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.i40e_stats*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i32 @i40e_add_one_ethtool_stat(i32*, %struct.i40e_ring*, %struct.i40e_stats*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
