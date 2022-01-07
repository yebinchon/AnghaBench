; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_wx.c_libipw_wx_get_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_wx.c_libipw_wx_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i64, %struct.TYPE_2__, %struct.libipw_security }
%struct.TYPE_2__ = type { i32 }
%struct.libipw_security = type { i32*, i32*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"GET_ENCODE\0A\00", align 1
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_wx_get_encode(%struct.libipw_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.libipw_security*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.iw_point*
  store %struct.iw_point* %15, %struct.iw_point** %10, align 8
  %16 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %17 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %16, i32 0, i32 2
  store %struct.libipw_security* %17, %struct.libipw_security** %13, align 8
  %18 = call i32 @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %20 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @WEP_KEYS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %12, align 4
  br label %41

36:                                               ; preds = %4
  %37 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %38 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  %44 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %45 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.libipw_security*, %struct.libipw_security** %13, align 8
  %47 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %52 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %54 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %55 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %101

58:                                               ; preds = %41
  %59 = load %struct.libipw_security*, %struct.libipw_security** %13, align 8
  %60 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.libipw_security*, %struct.libipw_security** %13, align 8
  %68 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @memcpy(i8* %66, i32 %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %78 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %80 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %81 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %85 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %58
  %89 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %90 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %91 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %100

94:                                               ; preds = %58
  %95 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %96 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %88
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %50, %30
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @LIBIPW_DEBUG_WX(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
