; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_count_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_count_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipvl_pcpu_stats = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipvlan_count_rx(%struct.ipvl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipvl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipvl_pcpu_stats*, align 8
  store %struct.ipvl_dev* %0, %struct.ipvl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %4
  %14 = load %struct.ipvl_dev*, %struct.ipvl_dev** %5, align 8
  %15 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.ipvl_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__* %16)
  store %struct.ipvl_pcpu_stats* %17, %struct.ipvl_pcpu_stats** %9, align 8
  %18 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %9, align 8
  %19 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %18, i32 0, i32 1
  %20 = call i32 @u64_stats_update_begin(i32* %19)
  %21 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %9, align 8
  %22 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %9, align 8
  %27 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %13
  %33 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %9, align 8
  %34 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %13
  %38 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %9, align 8
  %39 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %38, i32 0, i32 1
  %40 = call i32 @u64_stats_update_end(i32* %39)
  br label %48

41:                                               ; preds = %4
  %42 = load %struct.ipvl_dev*, %struct.ipvl_dev** %5, align 8
  %43 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @this_cpu_inc(i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.ipvl_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
