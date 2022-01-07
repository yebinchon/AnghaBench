; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_genie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_genie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ipw_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i64, i32* }

@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_genie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_genie(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %14)
  store %struct.ipw_priv* %15, %struct.ipw_priv** %10, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 0
  %18 = load %struct.libipw_device*, %struct.libipw_device** %17, align 8
  store %struct.libipw_device* %18, %struct.libipw_device** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %4
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %90

37:                                               ; preds = %31, %25
  %38 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %46 = bitcast %union.iwreq_data* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32* @kmemdup(i8* %44, i64 %48, i32 %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %88

56:                                               ; preds = %43
  %57 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %58 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %63 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %69 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %79

70:                                               ; preds = %37
  %71 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %72 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %76 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %78 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %70, %56
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %81 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %82 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %85 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ipw_wpa_assoc_frame(%struct.ipw_priv* %80, i32* %83, i64 %86)
  br label %88

88:                                               ; preds = %79, %53
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %34
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ipw_wpa_assoc_frame(%struct.ipw_priv*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
