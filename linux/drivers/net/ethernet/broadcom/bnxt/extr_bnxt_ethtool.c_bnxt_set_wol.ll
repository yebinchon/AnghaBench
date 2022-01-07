; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.bnxt = type { i32, i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNXT_FLAG_WOL_CAP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @bnxt_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.bnxt*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnxt* @netdev_priv(%struct.net_device* %7)
  store %struct.bnxt* %8, %struct.bnxt** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_MAGIC, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WAKE_MAGIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %19
  %27 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BNXT_FLAG_WOL_CAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %69

36:                                               ; preds = %26
  %37 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %43 = call i64 @bnxt_hwrm_alloc_wol_fltr(%struct.bnxt* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %41
  %49 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %36
  br label %68

52:                                               ; preds = %19
  %53 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %59 = call i64 @bnxt_hwrm_free_wol_fltr(%struct.bnxt* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %52
  br label %68

68:                                               ; preds = %67, %51
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %61, %45, %33, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bnxt_hwrm_alloc_wol_fltr(%struct.bnxt*) #1

declare dso_local i64 @bnxt_hwrm_free_wol_fltr(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
