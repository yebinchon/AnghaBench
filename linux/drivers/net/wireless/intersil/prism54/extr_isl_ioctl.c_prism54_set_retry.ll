; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@DOT11_OID_SHORTRETRIES = common dso_local global i32 0, align 4
@DOT11_OID_LONGRETRIES = common dso_local global i32 0, align 4
@DOT11_OID_MAXTXLIFETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism54_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32* @netdev_priv(%struct.net_device* %15)
  store i32* %16, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  %32 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IW_RETRY_SHORT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %40 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  br label %61

42:                                               ; preds = %31
  %43 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %44 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IW_RETRY_LONG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  br label %60

53:                                               ; preds = %42
  %54 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %55 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %58 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %53, %49
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %24
  %63 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %64 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 1024
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* @DOT11_OID_SHORTRETRIES, align 4
  %80 = call i32 @mgt_set_request(i32* %78, i32 %79, i32 0, i32* %11)
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @DOT11_OID_LONGRETRIES, align 4
  %87 = call i32 @mgt_set_request(i32* %85, i32 %86, i32 0, i32* %12)
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @DOT11_OID_MAXTXLIFETIME, align 4
  %96 = call i32 @mgt_set_request(i32* %94, i32 %95, i32 0, i32* %13)
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %93, %90
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %21
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_set_request(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
