; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_get_vf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_get_vf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.oct_vf_stats = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)* @liquidio_get_vf_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_get_vf_stats(%struct.net_device* %0, i32 %1, %struct.ifla_vf_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_stats*, align 8
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca %struct.oct_vf_stats, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_stats* %2, %struct.ifla_vf_stats** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lio* @GET_LIO(%struct.net_device* %12)
  store %struct.lio* %13, %struct.lio** %8, align 8
  %14 = load %struct.lio*, %struct.lio** %8, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 0
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %19
  %30 = call i32 @memset(%struct.oct_vf_stats* %10, i32 0, i32 24)
  %31 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cn23xx_get_vf_stats(%struct.octeon_device* %31, i32 %32, %struct.oct_vf_stats* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.oct_vf_stats, %struct.oct_vf_stats* %10, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %7, align 8
  %40 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.oct_vf_stats, %struct.oct_vf_stats* %10, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %7, align 8
  %44 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.oct_vf_stats, %struct.oct_vf_stats* %10, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %7, align 8
  %48 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.oct_vf_stats, %struct.oct_vf_stats* %10, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %7, align 8
  %52 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.oct_vf_stats, %struct.oct_vf_stats* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %7, align 8
  %56 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.oct_vf_stats, %struct.oct_vf_stats* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %7, align 8
  %60 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %36, %29
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %26
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.oct_vf_stats*, i32, i32) #1

declare dso_local i32 @cn23xx_get_vf_stats(%struct.octeon_device*, i32, %struct.oct_vf_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
