; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_alink_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.gnet_stats_basic_packed = type { i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_alink_stats*, %struct.nfp_alink_stats*, %struct.gnet_stats_basic_packed*, %struct.gnet_stats_queue*)* @nfp_abm_stats_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_stats_calculate(%struct.nfp_alink_stats* %0, %struct.nfp_alink_stats* %1, %struct.gnet_stats_basic_packed* %2, %struct.gnet_stats_queue* %3) #0 {
  %5 = alloca %struct.nfp_alink_stats*, align 8
  %6 = alloca %struct.nfp_alink_stats*, align 8
  %7 = alloca %struct.gnet_stats_basic_packed*, align 8
  %8 = alloca %struct.gnet_stats_queue*, align 8
  store %struct.nfp_alink_stats* %0, %struct.nfp_alink_stats** %5, align 8
  store %struct.nfp_alink_stats* %1, %struct.nfp_alink_stats** %6, align 8
  store %struct.gnet_stats_basic_packed* %2, %struct.gnet_stats_basic_packed** %7, align 8
  store %struct.gnet_stats_queue* %3, %struct.gnet_stats_queue** %8, align 8
  %9 = load %struct.gnet_stats_basic_packed*, %struct.gnet_stats_basic_packed** %7, align 8
  %10 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call i32 @_bstats_update(%struct.gnet_stats_basic_packed* %9, i64 %16, i64 %23)
  %25 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %6, align 8
  %29 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.gnet_stats_queue*, %struct.gnet_stats_queue** %8, align 8
  %33 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %5, align 8
  %39 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %6, align 8
  %42 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.gnet_stats_queue*, %struct.gnet_stats_queue** %8, align 8
  %46 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %5, align 8
  %52 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %6, align 8
  %55 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.gnet_stats_queue*, %struct.gnet_stats_queue** %8, align 8
  %59 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %5, align 8
  %65 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %6, align 8
  %68 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.gnet_stats_queue*, %struct.gnet_stats_queue** %8, align 8
  %72 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  ret void
}

declare dso_local i32 @_bstats_update(%struct.gnet_stats_basic_packed*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
