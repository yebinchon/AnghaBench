; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wpa_set_auth_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wpa_set_auth_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32 (i32, %struct.libipw_security*)* }
%struct.libipw_security = type { i32, i32 }

@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@IW_AUTH_ALG_LEAP = common dso_local global i32 0, align 4
@WLAN_AUTH_LEAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw2100_wpa_set_auth_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wpa_set_auth_algs(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.libipw_security, align 4
  %8 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %9, i32 0, i32 0
  %11 = load %struct.libipw_device*, %struct.libipw_device** %10, align 8
  store %struct.libipw_device* %11, %struct.libipw_device** %6, align 8
  %12 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %7, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %7, i32 0, i32 1
  %14 = load i32, i32* @SEC_AUTH_MODE, align 4
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  %21 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %23 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %49

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %31 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %33 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %48

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IW_AUTH_ALG_LEAP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @WLAN_AUTH_LEAP, align 4
  %41 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %43 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48, %19
  %50 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %51 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %50, i32 0, i32 2
  %52 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %51, align 8
  %53 = icmp ne i32 (i32, %struct.libipw_security*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %56 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %55, i32 0, i32 2
  %57 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %56, align 8
  %58 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %59 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %57(i32 %60, %struct.libipw_security* %7)
  br label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %44
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
