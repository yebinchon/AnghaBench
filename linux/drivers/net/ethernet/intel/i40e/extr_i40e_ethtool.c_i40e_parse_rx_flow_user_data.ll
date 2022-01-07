; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_parse_rx_flow_user_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_parse_rx_flow_user_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_rx_flow_userdef = type { i32, i32, i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_USERDEF_FLEX_FILTER = common dso_local global i32 0, align 4
@I40E_USERDEF_FLEX_OFFSET = common dso_local global i32 0, align 4
@I40E_USERDEF_FLEX_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*, %struct.i40e_rx_flow_userdef*)* @i40e_parse_rx_flow_user_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_parse_rx_flow_user_data(%struct.ethtool_rx_flow_spec* %0, %struct.i40e_rx_flow_userdef* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %5 = alloca %struct.i40e_rx_flow_userdef*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %4, align 8
  store %struct.i40e_rx_flow_userdef* %1, %struct.i40e_rx_flow_userdef** %5, align 8
  %9 = load %struct.i40e_rx_flow_userdef*, %struct.i40e_rx_flow_userdef** %5, align 8
  %10 = call i32 @memset(%struct.i40e_rx_flow_userdef* %9, i32 0, i32 12)
  %11 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FLOW_EXT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be64_to_cpu(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64_to_cpu(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32, i32, ...) bitcast (i32 (...)* @GENMASK_ULL to i32 (i32, i32, ...)*)(i32 31, i32 0)
  %35 = call i32 @i40e_check_mask(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %18
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i32, ...) bitcast (i32 (...)* @GENMASK_ULL to i32 (i32, i32, ...)*)(i32 15, i32 0)
  %47 = and i32 %45, %46
  %48 = load %struct.i40e_rx_flow_userdef*, %struct.i40e_rx_flow_userdef** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_rx_flow_userdef, %struct.i40e_rx_flow_userdef* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i32, ...) bitcast (i32 (...)* @GENMASK_ULL to i32 (i32, i32, ...)*)(i32 31, i32 16)
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 16
  %54 = load %struct.i40e_rx_flow_userdef*, %struct.i40e_rx_flow_userdef** %5, align 8
  %55 = getelementptr inbounds %struct.i40e_rx_flow_userdef, %struct.i40e_rx_flow_userdef* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.i40e_rx_flow_userdef*, %struct.i40e_rx_flow_userdef** %5, align 8
  %57 = getelementptr inbounds %struct.i40e_rx_flow_userdef, %struct.i40e_rx_flow_userdef* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %44, %41
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %38, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memset(%struct.i40e_rx_flow_userdef*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @i40e_check_mask(i32, i32) #1

declare dso_local i32 @GENMASK_ULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
