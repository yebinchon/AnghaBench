; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_free_msix_vecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_free_msix_vecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_en_dev = type { i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32 }

@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNXT_EN_FLAG_MSIX_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_en_dev*, i32)* @bnxt_free_msix_vecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_free_msix_vecs(%struct.bnxt_en_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_en_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnxt*, align 8
  store %struct.bnxt_en_dev* %0, %struct.bnxt_en_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.bnxt* @netdev_priv(%struct.net_device* %11)
  store %struct.bnxt* %12, %struct.bnxt** %7, align 8
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BNXT_EN_FLAG_MSIX_REQUESTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %51

28:                                               ; preds = %20
  %29 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %30 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @BNXT_EN_FLAG_MSIX_REQUESTED, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i64 @netif_running(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %47 = call i32 @bnxt_close_nic(%struct.bnxt* %46, i32 1, i32 0)
  %48 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %49 = call i32 @bnxt_open_nic(%struct.bnxt* %48, i32 1, i32 0)
  br label %50

50:                                               ; preds = %45, %28
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %27, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_close_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_open_nic(%struct.bnxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
