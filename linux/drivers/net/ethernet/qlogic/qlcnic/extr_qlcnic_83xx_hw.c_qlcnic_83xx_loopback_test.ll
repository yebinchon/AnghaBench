; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i8*, i8*, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i64, i64 }

@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Loopback test not supported in non privileged mode\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Device is resetting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Device is in diagnostics mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s loopback test in progress\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@QLC_83XX_LB_MSLEEP_COUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Device is resetting, free LB test resources\0A\00", align 1
@QLC_83XX_LB_WAIT_COUNT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"Firmware didn't sent link up event to loopback request\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_loopback_test(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_hardware_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %6, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 3
  %16 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  store %struct.qlcnic_hardware_context* %16, %struct.qlcnic_hardware_context** %7, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %24 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netdev_warn(%struct.net_device* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %140

33:                                               ; preds = %2
  %34 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 2
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %140

44:                                               ; preds = %33
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %46 = call i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %140

53:                                               ; preds = %44
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** @QLCNIC_ILB_MODE, align 8
  %57 = icmp eq i8* %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %60 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device* %61, i32 %62, i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %130

68:                                               ; preds = %53
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @qlcnic_83xx_set_lb_mode(%struct.qlcnic_adapter* %69, i8* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %126

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %115, %75
  %77 = load i32, i32* @QLC_83XX_LB_MSLEEP_COUNT, align 4
  %78 = call i32 @msleep(i32 %77)
  %79 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 2
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %126

89:                                               ; preds = %76
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @QLC_83XX_LB_WAIT_COUNT, align 4
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %95, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter* %99, i8* %100)
  br label %126

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %105 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %104, i32 0, i32 3
  %106 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %105, align 8
  %107 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  %112 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %110, %103
  %116 = phi i1 [ false, %103 ], [ %114, %110 ]
  %117 = zext i1 %116 to i32
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %76, label %119

119:                                              ; preds = %115
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter* %120, i8* %121)
  store i32 %122, i32* %10, align 4
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter* %123, i8* %124)
  br label %126

126:                                              ; preds = %119, %94, %84, %74
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @qlcnic_83xx_diag_free_res(%struct.net_device* %127, i8* %128)
  br label %130

130:                                              ; preds = %126, %67
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %133 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %136 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %138 = call i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter* %137)
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %130, %48, %39, %28
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @qlcnic_83xx_set_lb_mode(%struct.qlcnic_adapter*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_83xx_clear_lb_mode(%struct.qlcnic_adapter*, i8*) #1

declare dso_local i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter*, i8*) #1

declare dso_local i32 @qlcnic_83xx_diag_free_res(%struct.net_device*, i8*) #1

declare dso_local i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
