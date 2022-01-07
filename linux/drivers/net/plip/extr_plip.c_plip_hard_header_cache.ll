; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_hard_header_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_hard_header_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }
%struct.hh_cache = type { i64 }
%struct.ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*, %struct.hh_cache*, i32)* @plip_hard_header_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_hard_header_cache(%struct.neighbour* %0, %struct.hh_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.hh_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %4, align 8
  store %struct.hh_cache* %1, %struct.hh_cache** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %10 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @eth_header_cache(%struct.neighbour* %9, %struct.hh_cache* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.hh_cache*, %struct.hh_cache** %5, align 8
  %17 = getelementptr inbounds %struct.hh_cache, %struct.hh_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @HH_DATA_OFF(i32 4)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = bitcast i32* %22 to %struct.ethhdr*
  store %struct.ethhdr* %23, %struct.ethhdr** %8, align 8
  %24 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %25 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %28 = call i32 @plip_rewrite_address(i32 %26, %struct.ethhdr* %27)
  br label %29

29:                                               ; preds = %15, %3
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @eth_header_cache(%struct.neighbour*, %struct.hh_cache*, i32) #1

declare dso_local i32 @HH_DATA_OFF(i32) #1

declare dso_local i32 @plip_rewrite_address(i32, %struct.ethhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
