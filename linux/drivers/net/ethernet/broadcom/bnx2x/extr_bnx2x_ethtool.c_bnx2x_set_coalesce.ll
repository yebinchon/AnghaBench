; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64 }
%struct.bnx2x = type { i64, i64 }

@BNX2X_MAX_COALESCE_TOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @bnx2x_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %6)
  store %struct.bnx2x* %7, %struct.bnx2x** %5, align 8
  %8 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BNX2X_MAX_COALESCE_TOUT, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* @BNX2X_MAX_COALESCE_TOUT, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BNX2X_MAX_COALESCE_TOUT, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i64, i64* @BNX2X_MAX_COALESCE_TOUT, align 8
  %39 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i64 @netif_running(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %47 = call i32 @bnx2x_update_coalesce(%struct.bnx2x* %46)
  br label %48

48:                                               ; preds = %45, %41
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_update_coalesce(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
