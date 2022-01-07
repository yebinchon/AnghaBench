; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_rss_config_obj = type { i32, i64, i64 }
%struct.bnx2x_config_rss_params = type { i32, i32, i32, i32, i32, %struct.bnx2x_rss_config_obj*, i32* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_VXLAN = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_VXLAN = common dso_local global i32 0, align 4
@BNX2X_RSS_TUNN_INNER_HDRS = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@MULTI_MASK = common dso_local global i32 0, align 4
@T_ETH_RSS_KEY = common dso_local global i32 0, align 4
@BNX2X_RSS_SET_SRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_rss(%struct.bnx2x* %0, %struct.bnx2x_rss_config_obj* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_config_rss_params, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_rss_config_obj* %1, %struct.bnx2x_rss_config_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = bitcast %struct.bnx2x_config_rss_params* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 5
  store %struct.bnx2x_rss_config_obj* %12, %struct.bnx2x_rss_config_obj** %13, align 8
  %14 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %15 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 4
  %16 = call i32 @__set_bit(i32 %14, i32* %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %4
  %20 = load i32, i32* @BNX2X_RSS_MODE_REGULAR, align 4
  %21 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %22 = call i32 @__set_bit(i32 %20, i32* %21)
  %23 = load i32, i32* @BNX2X_RSS_IPV4, align 4
  %24 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %25 = call i32 @__set_bit(i32 %23, i32* %24)
  %26 = load i32, i32* @BNX2X_RSS_IPV4_TCP, align 4
  %27 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %28 = call i32 @__set_bit(i32 %26, i32* %27)
  %29 = load i32, i32* @BNX2X_RSS_IPV6, align 4
  %30 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %31 = call i32 @__set_bit(i32 %29, i32* %30)
  %32 = load i32, i32* @BNX2X_RSS_IPV6_TCP, align 4
  %33 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %34 = call i32 @__set_bit(i32 %32, i32* %33)
  %35 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %36 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load i32, i32* @BNX2X_RSS_IPV4_UDP, align 4
  %41 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %42 = call i32 @__set_bit(i32 %40, i32* %41)
  br label %43

43:                                               ; preds = %39, %19
  %44 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %45 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @BNX2X_RSS_IPV6_UDP, align 4
  %50 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %51 = call i32 @__set_bit(i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %54 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @BNX2X_RSS_IPV4_VXLAN, align 4
  %58 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %59 = call i32 @__set_bit(i32 %57, i32* %58)
  %60 = load i32, i32* @BNX2X_RSS_IPV6_VXLAN, align 4
  %61 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %62 = call i32 @__set_bit(i32 %60, i32* %61)
  %63 = load i32, i32* @BNX2X_RSS_TUNN_INNER_HDRS, align 4
  %64 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %65 = call i32 @__set_bit(i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %56, %52
  br label %71

67:                                               ; preds = %4
  %68 = load i32, i32* @BNX2X_RSS_MODE_DISABLED, align 4
  %69 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %70 = call i32 @__set_bit(i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* @MULTI_MASK, align 4
  %73 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %77 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %75, i32 %78, i32 4)
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @T_ETH_RSS_KEY, align 4
  %86 = mul nsw i32 %85, 4
  %87 = call i32 @netdev_rss_key_fill(i32 %84, i32 %86)
  %88 = load i32, i32* @BNX2X_RSS_SET_SRCH, align 4
  %89 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %10, i32 0, i32 0
  %90 = call i32 @__set_bit(i32 %88, i32* %89)
  br label %91

91:                                               ; preds = %82, %71
  %92 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %93 = call i64 @IS_PF(%struct.bnx2x* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %97 = call i32 @bnx2x_config_rss(%struct.bnx2x* %96, %struct.bnx2x_config_rss_params* %10)
  store i32 %97, i32* %5, align 4
  br label %101

98:                                               ; preds = %91
  %99 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %100 = call i32 @bnx2x_vfpf_config_rss(%struct.bnx2x* %99, %struct.bnx2x_config_rss_params* %10)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #2

declare dso_local i64 @IS_PF(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_config_rss(%struct.bnx2x*, %struct.bnx2x_config_rss_params*) #2

declare dso_local i32 @bnx2x_vfpf_config_rss(%struct.bnx2x*, %struct.bnx2x_config_rss_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
