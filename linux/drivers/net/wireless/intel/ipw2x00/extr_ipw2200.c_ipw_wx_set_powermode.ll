; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_powermode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_powermode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.ipw_priv = type { i32, i32 }

@IPW_POWER_LIMIT = common dso_local global i32 0, align 4
@IPW_POWER_AC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed setting power mode.\0A\00", align 1
@IPW_POWER_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_powermode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_powermode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %13)
  store %struct.ipw_priv* %14, %struct.ipw_priv** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @IPW_POWER_LIMIT, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %4
  %28 = load i32, i32* @IPW_POWER_AC, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IPW_POWER_LEVEL(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @ipw_send_power_mode(%struct.ipw_priv* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load i32, i32* @IPW_POWER_ENABLED, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %29
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_POWER_LEVEL(i32) #1

declare dso_local i32 @ipw_send_power_mode(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
