; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_oct_cfg_adaptive_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_oct_cfg_adaptive_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i32 }
%struct.oct_intrmod_cfg = type { i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.oct_intrmod_cfg*, %struct.ethtool_coalesce*)* @oct_cfg_adaptive_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct_cfg_adaptive_intr(%struct.lio* %0, %struct.oct_intrmod_cfg* %1, %struct.ethtool_coalesce* %2) #0 {
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.oct_intrmod_cfg*, align 8
  %6 = alloca %struct.ethtool_coalesce*, align 8
  %7 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %4, align 8
  store %struct.oct_intrmod_cfg* %1, %struct.oct_intrmod_cfg** %5, align 8
  store %struct.ethtool_coalesce* %2, %struct.ethtool_coalesce** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %9 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %14 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12, %3
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %32 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %17, %12
  %34 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %53 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %58 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %38, %33
  %60 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %69 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %74 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %64, %59
  %76 = load %struct.lio*, %struct.lio** %4, align 8
  %77 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %78 = call i32 @octnet_set_intrmod_cfg(%struct.lio* %76, %struct.oct_intrmod_cfg* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @octnet_set_intrmod_cfg(%struct.lio*, %struct.oct_intrmod_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
