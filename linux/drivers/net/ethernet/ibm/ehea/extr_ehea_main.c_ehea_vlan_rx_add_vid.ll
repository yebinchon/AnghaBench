; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.ehea_adapter* }
%struct.ehea_adapter = type { i32 }
%struct.hcp_ehea_port_cb1 = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no mem for cb1\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H_PORT_CB1 = common dso_local global i32 0, align 4
@H_PORT_CB1_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"query_ehea_port failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"modify_ehea_port failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ehea_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_port*, align 8
  %8 = alloca %struct.ehea_adapter*, align 8
  %9 = alloca %struct.hcp_ehea_port_cb1*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %13)
  store %struct.ehea_port* %14, %struct.ehea_port** %7, align 8
  %15 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 1
  %17 = load %struct.ehea_adapter*, %struct.ehea_adapter** %16, align 8
  store %struct.ehea_adapter* %17, %struct.ehea_adapter** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @get_zeroed_page(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.hcp_ehea_port_cb1*
  store %struct.hcp_ehea_port_cb1* %21, %struct.hcp_ehea_port_cb1** %9, align 8
  %22 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %9, align 8
  %23 = icmp ne %struct.hcp_ehea_port_cb1* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %79

28:                                               ; preds = %3
  %29 = load %struct.ehea_adapter*, %struct.ehea_adapter** %8, align 8
  %30 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %33 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @H_PORT_CB1, align 4
  %36 = load i32, i32* @H_PORT_CB1_ALL, align 4
  %37 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %9, align 8
  %38 = call i64 @ehea_h_query_ehea_port(i32 %31, i32 %34, i32 %35, i32 %36, %struct.hcp_ehea_port_cb1* %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @H_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %79

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %47, 64
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 63
  %51 = zext i32 %50 to i64
  %52 = lshr i64 -9223372036854775808, %51
  %53 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %9, align 8
  %54 = getelementptr inbounds %struct.hcp_ehea_port_cb1, %struct.hcp_ehea_port_cb1* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %52
  store i64 %60, i64* %58, align 8
  %61 = load %struct.ehea_adapter*, %struct.ehea_adapter** %8, align 8
  %62 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %65 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @H_PORT_CB1, align 4
  %68 = load i32, i32* @H_PORT_CB1_ALL, align 4
  %69 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %9, align 8
  %70 = call i64 @ehea_h_modify_ehea_port(i32 %63, i32 %66, i32 %67, i32 %68, %struct.hcp_ehea_port_cb1* %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @H_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %46
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %74, %46
  br label %79

79:                                               ; preds = %78, %42, %24
  %80 = load %struct.hcp_ehea_port_cb1*, %struct.hcp_ehea_port_cb1** %9, align 8
  %81 = ptrtoint %struct.hcp_ehea_port_cb1* %80 to i64
  %82 = call i32 @free_page(i64 %81)
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ehea_h_query_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb1*) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb1*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
