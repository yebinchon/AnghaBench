; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cros-ec-cec/extr_cros-ec-cec.c_cros_ec_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cros-ec-cec/extr_cros-ec-cec.c_cros_ec_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cros_ec_dev = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_cec = type { %struct.device*, i32, %struct.TYPE_8__, %struct.cros_ec_device* }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to initialize wakeup\0A\00", align 1
@cros_ec_cec_ops = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@cros_ec_cec_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to register notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.cros_ec_cec*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %13)
  store %struct.cros_ec_dev* %14, %struct.cros_ec_dev** %4, align 8
  %15 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %15, i32 0, i32 0
  %17 = load %struct.cros_ec_device*, %struct.cros_ec_device** %16, align 8
  store %struct.cros_ec_device* %17, %struct.cros_ec_device** %5, align 8
  store i8* null, i8** %8, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.device* @cros_ec_cec_find_hdmi_dev(%struct.TYPE_7__* %19, i8** %8)
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i64 @IS_ERR(%struct.device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.device* %25)
  store i32 %26, i32* %2, align 4
  br label %127

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.cros_ec_cec* @devm_kzalloc(%struct.TYPE_7__* %29, i32 24, i32 %30)
  store %struct.cros_ec_cec* %31, %struct.cros_ec_cec** %6, align 8
  %32 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %33 = icmp ne %struct.cros_ec_cec* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %127

37:                                               ; preds = %27
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.cros_ec_cec* %39)
  %41 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %42 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %43 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %42, i32 0, i32 3
  store %struct.cros_ec_device* %41, %struct.cros_ec_device** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @device_init_wakeup(%struct.TYPE_7__* %45, i32 1)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %127

54:                                               ; preds = %37
  %55 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %56 = load i32, i32* @DRV_NAME, align 4
  %57 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %58 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %59 = or i32 %57, %58
  %60 = call %struct.device* @cec_allocate_adapter(i32* @cros_ec_cec_ops, %struct.cros_ec_cec* %55, i32 %56, i32 %59, i32 1)
  %61 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %62 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %61, i32 0, i32 0
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %64 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %63, i32 0, i32 0
  %65 = load %struct.device*, %struct.device** %64, align 8
  %66 = call i64 @IS_ERR(%struct.device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %54
  %69 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %70 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %69, i32 0, i32 0
  %71 = load %struct.device*, %struct.device** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.device* %71)
  store i32 %72, i32* %2, align 4
  br label %127

73:                                               ; preds = %54
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %77 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %76, i32 0, i32 0
  %78 = load %struct.device*, %struct.device** %77, align 8
  %79 = call i32 @cec_notifier_cec_adap_register(%struct.device* %74, i8* %75, %struct.device* %78)
  %80 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %81 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %83 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %121

89:                                               ; preds = %73
  %90 = load i32, i32* @cros_ec_cec_event, align 4
  %91 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %92 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %95 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %94, i32 0, i32 0
  %96 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %97 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %96, i32 0, i32 2
  %98 = call i32 @blocking_notifier_chain_register(i32* %95, %struct.TYPE_8__* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_7__* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %116

105:                                              ; preds = %89
  %106 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %107 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %106, i32 0, i32 0
  %108 = load %struct.device*, %struct.device** %107, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @cec_register_adapter(%struct.device* %108, %struct.TYPE_7__* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %127

116:                                              ; preds = %114, %101
  %117 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %118 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @cec_notifier_cec_adap_unregister(i32 %119)
  br label %121

121:                                              ; preds = %116, %86
  %122 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %6, align 8
  %123 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %122, i32 0, i32 0
  %124 = load %struct.device*, %struct.device** %123, align 8
  %125 = call i32 @cec_delete_adapter(%struct.device* %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %115, %68, %49, %34, %24
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.device* @cros_ec_cec_find_hdmi_dev(%struct.TYPE_7__*, i8**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.cros_ec_cec* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cros_ec_cec*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.device* @cec_allocate_adapter(i32*, %struct.cros_ec_cec*, i32, i32, i32) #1

declare dso_local i32 @cec_notifier_cec_adap_register(%struct.device*, i8*, %struct.device*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cec_register_adapter(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_delete_adapter(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
