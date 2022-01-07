; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.obj_key = type { i32, i32 }
%union.oid_res_t = type { i64 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@DOT11_OID_AUTHENABLE = common dso_local global i32 0, align 4
@DOT11_OID_PRIVACYINVOKED = common dso_local global i32 0, align 4
@DOT11_OID_EXUNENCRYPTED = common dso_local global i32 0, align 4
@DOT11_AUTH_BOTH = common dso_local global i64 0, align 8
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@DOT11_AUTH_OS = common dso_local global i64 0, align 8
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@DOT11_OID_DEFKEYID = common dso_local global i32 0, align 4
@DOT11_OID_DEFKEYX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism54_get_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.obj_key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.oid_res_t, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32* @netdev_priv(%struct.net_device* %18)
  store i32* %19, i32** %9, align 8
  %20 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %21 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %24 = and i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @DOT11_OID_AUTHENABLE, align 4
  %29 = call i32 @mgt_get_request(i32* %27, i32 %28, i64 0, i32* null, %union.oid_res_t* %17)
  store i32 %29, i32* %16, align 4
  %30 = bitcast %union.oid_res_t* %17 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @DOT11_OID_PRIVACYINVOKED, align 4
  %34 = call i32 @mgt_get_request(i32* %32, i32 %33, i64 0, i32* null, %union.oid_res_t* %17)
  %35 = load i32, i32* %16, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %16, align 4
  %37 = bitcast %union.oid_res_t* %17 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @DOT11_OID_EXUNENCRYPTED, align 4
  %41 = call i32 @mgt_get_request(i32* %39, i32 %40, i64 0, i32* null, %union.oid_res_t* %17)
  %42 = load i32, i32* %16, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %16, align 4
  %44 = bitcast %union.oid_res_t* %17 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %4
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @DOT11_AUTH_BOTH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %57 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %58 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %82

59:                                               ; preds = %52, %48, %4
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @DOT11_AUTH_OS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %71 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %72 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %75 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %76 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %81

78:                                               ; preds = %63, %59
  %79 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %80 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* @DOT11_OID_DEFKEYID, align 4
  %85 = call i32 @mgt_get_request(i32* %83, i32 %84, i64 0, i32* null, %union.oid_res_t* %17)
  %86 = load i32, i32* %16, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = bitcast %union.oid_res_t* %17 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %95, label %92

92:                                               ; preds = %82
  %93 = load i64, i64* %12, align 8
  %94 = icmp sgt i64 %93, 3
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %82
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* @DOT11_OID_DEFKEYX, align 4
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @mgt_get_request(i32* %98, i32 %99, i64 %100, i32* null, %union.oid_res_t* %17)
  %102 = load i32, i32* %16, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = bitcast %union.oid_res_t* %17 to %struct.obj_key**
  %105 = load %struct.obj_key*, %struct.obj_key** %104, align 8
  store %struct.obj_key* %105, %struct.obj_key** %10, align 8
  %106 = load %struct.obj_key*, %struct.obj_key** %10, align 8
  %107 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %110 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.obj_key*, %struct.obj_key** %10, align 8
  %113 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memcpy(i8* %111, i32 %114, i32 %117)
  %119 = load %struct.obj_key*, %struct.obj_key** %10, align 8
  %120 = call i32 @kfree(%struct.obj_key* %119)
  %121 = load i64, i64* %11, align 8
  %122 = add nsw i64 %121, 1
  %123 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %124 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = or i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load i32, i32* %16, align 4
  ret i32 %129
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i64, i32*, %union.oid_res_t*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.obj_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
