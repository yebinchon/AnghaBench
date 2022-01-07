; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_add_prev_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_add_prev_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.rtnl_link_stats64 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.rtnl_link_stats64*)* @bnxt_add_prev_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_add_prev_stats(%struct.bnxt* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.rtnl_link_stats64*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  store %struct.rtnl_link_stats64* %7, %struct.rtnl_link_stats64** %5, align 8
  %8 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %9 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %12 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %16 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %19 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %23 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %26 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %40 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
