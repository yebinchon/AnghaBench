; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_farch_filter_spec = type { i64, i32, i64, i32 }

@EFX_FILTER_FLAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec*)* @efx_farch_filter_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_farch_filter_equal(%struct.efx_farch_filter_spec* %0, %struct.efx_farch_filter_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_farch_filter_spec*, align 8
  %5 = alloca %struct.efx_farch_filter_spec*, align 8
  store %struct.efx_farch_filter_spec* %0, %struct.efx_farch_filter_spec** %4, align 8
  store %struct.efx_farch_filter_spec* %1, %struct.efx_farch_filter_spec** %5, align 8
  %6 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %7 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %5, align 8
  %10 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %15 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %5, align 8
  %18 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @memcmp(i32 %16, i32 %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %40

23:                                               ; preds = %13
  %24 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %25 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EFX_FILTER_FLAG_TX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %4, align 8
  %32 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %5, align 8
  %35 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %30, %23
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
