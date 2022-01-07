; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_restart_qps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_restart_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.ehea_port_res*, %struct.ehea_adapter* }
%struct.ehea_port_res = type { %struct.TYPE_2__, %struct.ehea_qp* }
%struct.TYPE_2__ = type { i32 }
%struct.ehea_qp = type { i32 }
%struct.ehea_adapter = type { i32 }
%struct.hcp_modify_qp_cb0 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"creation of shared memory regions failed\0A\00", align 1
@H_QPCB0_ALL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"query_ehea_qp failed (1)\0A\00", align 1
@H_QP_CR_RES_STATE = common dso_local global i32 0, align 4
@H_QP_CR_ENABLED = common dso_local global i32 0, align 4
@H_QPCB0_QP_CTL_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"modify_ehea_qp failed (1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"query_ehea_qp failed (2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_restart_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_restart_qps(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hcp_modify_qp_cb0*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehea_port_res*, align 8
  %12 = alloca %struct.ehea_qp*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %13)
  store %struct.ehea_port* %14, %struct.ehea_port** %3, align 8
  %15 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 2
  %17 = load %struct.ehea_adapter*, %struct.ehea_adapter** %16, align 8
  store %struct.ehea_adapter* %17, %struct.ehea_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @get_zeroed_page(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.hcp_modify_qp_cb0*
  store %struct.hcp_modify_qp_cb0* %21, %struct.hcp_modify_qp_cb0** %7, align 8
  %22 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %23 = icmp ne %struct.hcp_modify_qp_cb0* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %133

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %129, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %31 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %28
  %35 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %36 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %35, i32 0, i32 1
  %37 = load %struct.ehea_port_res*, %struct.ehea_port_res** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %37, i64 %39
  store %struct.ehea_port_res* %40, %struct.ehea_port_res** %11, align 8
  %41 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %42 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %41, i32 0, i32 1
  %43 = load %struct.ehea_qp*, %struct.ehea_qp** %42, align 8
  store %struct.ehea_qp* %43, %struct.ehea_qp** %12, align 8
  %44 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %45 = call i32 @ehea_gen_smrs(%struct.ehea_port_res* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %133

51:                                               ; preds = %34
  %52 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %53 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %54 = call i32 @ehea_update_rqs(%struct.ehea_qp* %52, %struct.ehea_port_res* %53)
  %55 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %59 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @H_QPCB0_ALL, align 4
  %62 = call i32 @EHEA_BMASK_SET(i32 %61, i32 65535)
  %63 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %64 = call i64 @ehea_h_query_ehea_qp(i32 %57, i32 0, i32 %60, i32 %62, %struct.hcp_modify_qp_cb0* %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @H_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = call i32 @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %133

71:                                               ; preds = %51
  %72 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %73 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @H_QP_CR_RES_STATE, align 4
  %76 = and i32 %74, %75
  %77 = shl i32 %76, 8
  %78 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %79 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @H_QP_CR_ENABLED, align 4
  %81 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %82 = getelementptr inbounds %struct.hcp_modify_qp_cb0, %struct.hcp_modify_qp_cb0* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %89 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @H_QPCB0_QP_CTL_REG, align 4
  %92 = call i32 @EHEA_BMASK_SET(i32 %91, i32 1)
  %93 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %94 = call i64 @ehea_h_modify_ehea_qp(i32 %87, i32 0, i32 %90, i32 %92, %struct.hcp_modify_qp_cb0* %93, i64* %9, i64* %9, i32* %10, i32* %10)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @H_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %71
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = call i32 @netdev_err(%struct.net_device* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %133

101:                                              ; preds = %71
  %102 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ehea_qp*, %struct.ehea_qp** %12, align 8
  %106 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @H_QPCB0_ALL, align 4
  %109 = call i32 @EHEA_BMASK_SET(i32 %108, i32 65535)
  %110 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %111 = call i64 @ehea_h_query_ehea_qp(i32 %104, i32 0, i32 %107, i32 %109, %struct.hcp_modify_qp_cb0* %110)
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @H_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = call i32 @netdev_err(%struct.net_device* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %133

118:                                              ; preds = %101
  %119 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %120 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %121 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ehea_refill_rq1(%struct.ehea_port_res* %119, i32 %123, i32 0)
  %125 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %126 = call i32 @ehea_refill_rq2(%struct.ehea_port_res* %125, i32 0)
  %127 = load %struct.ehea_port_res*, %struct.ehea_port_res** %11, align 8
  %128 = call i32 @ehea_refill_rq3(%struct.ehea_port_res* %127, i32 0)
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %28

132:                                              ; preds = %28
  br label %133

133:                                              ; preds = %132, %115, %98, %68, %48, %24
  %134 = load %struct.hcp_modify_qp_cb0*, %struct.hcp_modify_qp_cb0** %7, align 8
  %135 = ptrtoint %struct.hcp_modify_qp_cb0* %134 to i64
  %136 = call i32 @free_page(i64 %135)
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_gen_smrs(%struct.ehea_port_res*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ehea_update_rqs(%struct.ehea_qp*, %struct.ehea_port_res*) #1

declare dso_local i64 @ehea_h_query_ehea_qp(i32, i32, i32, i32, %struct.hcp_modify_qp_cb0*) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i64 @ehea_h_modify_ehea_qp(i32, i32, i32, i32, %struct.hcp_modify_qp_cb0*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ehea_refill_rq1(%struct.ehea_port_res*, i32, i32) #1

declare dso_local i32 @ehea_refill_rq2(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @ehea_refill_rq3(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
