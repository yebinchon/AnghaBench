; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%union.oid_res_t = type { i32 }

@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@DOT11_OID_MAXTXLIFETIME = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@DOT11_OID_LONGRETRIES = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@DOT11_OID_SHORTRETRIES = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism54_get_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_retry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.oid_res_t, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32* @netdev_priv(%struct.net_device* %12)
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %15 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %17 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IW_RETRY_TYPE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @DOT11_OID_MAXTXLIFETIME, align 4
  %26 = call i32 @mgt_get_request(i32* %24, i32 %25, i32 0, i32* null, %union.oid_res_t* %10)
  store i32 %26, i32* %11, align 4
  %27 = bitcast %union.oid_res_t* %10 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 1024
  %30 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %33 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %73

35:                                               ; preds = %4
  %36 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %37 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IW_RETRY_LONG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @DOT11_OID_LONGRETRIES, align 4
  %45 = call i32 @mgt_get_request(i32* %43, i32 %44, i32 0, i32* null, %union.oid_res_t* %10)
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = bitcast %union.oid_res_t* %10 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %53 = load i32, i32* @IW_RETRY_LONG, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %56 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %72

57:                                               ; preds = %35
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @DOT11_OID_SHORTRETRIES, align 4
  %60 = call i32 @mgt_get_request(i32* %58, i32 %59, i32 0, i32* null, %union.oid_res_t* %10)
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = bitcast %union.oid_res_t* %10 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %66 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %68 = load i32, i32* @IW_RETRY_SHORT, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %57, %42
  br label %73

73:                                               ; preds = %72, %23
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
