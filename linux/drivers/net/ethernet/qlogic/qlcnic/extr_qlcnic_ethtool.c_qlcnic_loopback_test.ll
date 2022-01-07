; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_hardware_context*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.qlcnic_hardware_context = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Firmware do not support loopback test\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s loopback test in progress\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Loopback test not supported in nonprivileged mode\0A\00", align 1
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@QLCNIC_ILB_MAX_RCV_LOOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Firmware didn't sent link up event to loopback request\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @qlcnic_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_loopback_test(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_hardware_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %6, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 3
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %22, align 8
  store %struct.qlcnic_hardware_context* %23, %struct.qlcnic_hardware_context** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %25 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @qlcnic_83xx_loopback_test(%struct.net_device* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %158

31:                                               ; preds = %2
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %158

46:                                               ; preds = %31
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @QLCNIC_ILB_MODE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %56 = call i32 (i32*, i8*, ...) @dev_warn(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %58 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 5
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_warn(i32* %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %158

68:                                               ; preds = %46
  %69 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 2
  %72 = call i64 @test_and_set_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %158

77:                                               ; preds = %68
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %80 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %146

84:                                               ; preds = %77
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %88, align 8
  %90 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %89, i64 0
  store %struct.qlcnic_host_sds_ring* %90, %struct.qlcnic_host_sds_ring** %9, align 8
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @qlcnic_set_lb_mode(%struct.qlcnic_adapter* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %142

97:                                               ; preds = %84
  %98 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %99 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %128, %97
  %101 = call i32 @msleep(i32 500)
  %102 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %103 = call i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring* %102)
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @QLCNIC_ILB_MAX_RCV_LOOP, align 4
  %107 = icmp sgt i32 %104, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 @netdev_info(%struct.net_device* %109, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %142

113:                                              ; preds = %100
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %115 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %114, i32 0, i32 3
  %116 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %115, align 8
  %117 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 3
  %123 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %122, align 8
  %124 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %12, align 4
  br label %142

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  %130 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @QLCNIC_IS_LB_CONFIGURED(i32 %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %100, label %135

135:                                              ; preds = %128
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @qlcnic_clear_lb_mode(%struct.qlcnic_adapter* %139, i32 %140)
  br label %142

142:                                              ; preds = %135, %120, %108, %96
  %143 = load %struct.net_device*, %struct.net_device** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @qlcnic_diag_free_res(%struct.net_device* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %83
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %149 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %152 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %155 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %154, i32 0, i32 2
  %156 = call i32 @clear_bit(i32 %153, i32* %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %146, %74, %62, %38, %27
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_loopback_test(%struct.net_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device*, i32) #1

declare dso_local i32 @qlcnic_set_lb_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @QLCNIC_IS_LB_CONFIGURED(i32) #1

declare dso_local i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_clear_lb_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
