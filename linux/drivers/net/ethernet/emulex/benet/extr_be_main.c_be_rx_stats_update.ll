; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { i32 }
%struct.be_rx_compl_info = type { i64, i64, i64, i64 }
%struct.be_rx_stats = type { i32, i32, i32, i32, i32, i32, i32 }

@BE_MULTICAST_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.be_rx_compl_info*)* @be_rx_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_stats_update(%struct.be_rx_obj* %0, %struct.be_rx_compl_info* %1) #0 {
  %3 = alloca %struct.be_rx_obj*, align 8
  %4 = alloca %struct.be_rx_compl_info*, align 8
  %5 = alloca %struct.be_rx_stats*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %3, align 8
  store %struct.be_rx_compl_info* %1, %struct.be_rx_compl_info** %4, align 8
  %6 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %7 = call %struct.be_rx_stats* @rx_stats(%struct.be_rx_obj* %6)
  store %struct.be_rx_stats* %7, %struct.be_rx_stats** %5, align 8
  %8 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %9 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %8, i32 0, i32 0
  %10 = call i32 @u64_stats_update_begin(i32* %9)
  %11 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %12 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %16 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %19 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %25 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %29 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %34 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %39 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BE_MULTICAST_PACKET, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %45 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %50 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %55 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %60 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %59, i32 0, i32 0
  %61 = call i32 @u64_stats_update_end(i32* %60)
  ret void
}

declare dso_local %struct.be_rx_stats* @rx_stats(%struct.be_rx_obj*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
