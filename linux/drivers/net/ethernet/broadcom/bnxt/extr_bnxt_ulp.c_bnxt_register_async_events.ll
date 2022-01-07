; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_register_async_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_register_async_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_en_dev = type { %struct.bnxt_ulp*, %struct.net_device* }
%struct.bnxt_ulp = type { i64*, i64 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32 }

@BNXT_MAX_ULP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_en_dev*, i32, i64*, i64)* @bnxt_register_async_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_register_async_events(%struct.bnxt_en_dev* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_en_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.bnxt*, align 8
  %12 = alloca %struct.bnxt_ulp*, align 8
  store %struct.bnxt_en_dev* %0, %struct.bnxt_en_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = call %struct.bnxt* @netdev_priv(%struct.net_device* %16)
  store %struct.bnxt* %17, %struct.bnxt** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BNXT_MAX_ULP, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %4
  %25 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %26 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %25, i32 0, i32 0
  %27 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %27, i64 %29
  store %struct.bnxt_ulp* %30, %struct.bnxt_ulp** %12, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %12, align 8
  %33 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %32, i32 0, i32 0
  store i64* %31, i64** %33, align 8
  %34 = call i32 (...) @smp_wmb()
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %12, align 8
  %37 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.bnxt*, %struct.bnxt** %11, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt* %38, i64* %39, i64 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %24, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
