; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_driver = type { i32 }
%struct.pulse8 = type { i32, i32, %struct.TYPE_7__*, i32, i64, i32*, i32, i32, i32, %struct.serio* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cec_log_addrs = type { i32 }

@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_PHYS_ADDR = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pulse8_cec_adap_ops = common dso_local global i32 0, align 4
@pulse8_irq_work_handler = common dso_local global i32 0, align 4
@persistent_config = common dso_local global i64 0, align 8
@pulse8_ping_eeprom_work_handler = common dso_local global i32 0, align 4
@PING_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @pulse8_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pulse8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cec_log_addrs, align 4
  %10 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %11 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %12 = load i32, i32* @CEC_CAP_PHYS_ADDR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = bitcast %struct.cec_log_addrs* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pulse8* @kzalloc(i32 64, i32 %20)
  store %struct.pulse8* %21, %struct.pulse8** %7, align 8
  %22 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %23 = icmp ne %struct.pulse8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %137

27:                                               ; preds = %2
  %28 = load %struct.serio*, %struct.serio** %4, align 8
  %29 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %30 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %29, i32 0, i32 9
  store %struct.serio* %28, %struct.serio** %30, align 8
  %31 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %32 = load %struct.serio*, %struct.serio** %4, align 8
  %33 = getelementptr inbounds %struct.serio, %struct.serio* %32, i32 0, i32 0
  %34 = call i32 @dev_name(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_7__* @cec_allocate_adapter(i32* @pulse8_cec_adap_ops, %struct.pulse8* %31, i32 %34, i32 %35, i32 1)
  %37 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %38 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %37, i32 0, i32 2
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %40 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_7__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %133

46:                                               ; preds = %27
  %47 = load %struct.serio*, %struct.serio** %4, align 8
  %48 = getelementptr inbounds %struct.serio, %struct.serio* %47, i32 0, i32 0
  %49 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %50 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  %51 = load %struct.serio*, %struct.serio** %4, align 8
  %52 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %53 = call i32 @serio_set_drvdata(%struct.serio* %51, %struct.pulse8* %52)
  %54 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %55 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %54, i32 0, i32 8
  %56 = load i32, i32* @pulse8_irq_work_handler, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  %58 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %59 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %58, i32 0, i32 7
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %62 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %61, i32 0, i32 6
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %65 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.serio*, %struct.serio** %4, align 8
  %67 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %68 = call i32 @serio_open(%struct.serio* %66, %struct.serio_driver* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %46
  br label %126

72:                                               ; preds = %46
  %73 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %74 = load %struct.serio*, %struct.serio** %4, align 8
  %75 = call i32 @pulse8_setup(%struct.pulse8* %73, %struct.serio* %74, %struct.cec_log_addrs* %9, i32* %10)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %123

79:                                               ; preds = %72
  %80 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %81 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.serio*, %struct.serio** %4, align 8
  %84 = getelementptr inbounds %struct.serio, %struct.serio* %83, i32 0, i32 0
  %85 = call i32 @cec_register_adapter(%struct.TYPE_7__* %82, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %123

89:                                               ; preds = %79
  %90 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %91 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %96 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %95, i32 0, i32 5
  store i32* %94, i32** %96, align 8
  %97 = load i64, i64* @persistent_config, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  %100 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %101 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @pulse8_apply_persistent_config(%struct.pulse8* %105, %struct.cec_log_addrs* %9, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %123

111:                                              ; preds = %104
  %112 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %113 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %99, %89
  %115 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %116 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %115, i32 0, i32 3
  %117 = load i32, i32* @pulse8_ping_eeprom_work_handler, align 4
  %118 = call i32 @INIT_DELAYED_WORK(i32* %116, i32 %117)
  %119 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %120 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %119, i32 0, i32 3
  %121 = load i32, i32* @PING_PERIOD, align 4
  %122 = call i32 @schedule_delayed_work(i32* %120, i32 %121)
  store i32 0, i32* %3, align 4
  br label %137

123:                                              ; preds = %110, %88, %78
  %124 = load %struct.serio*, %struct.serio** %4, align 8
  %125 = call i32 @serio_close(%struct.serio* %124)
  br label %126

126:                                              ; preds = %123, %71
  %127 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %128 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %127, i32 0, i32 2
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = call i32 @cec_delete_adapter(%struct.TYPE_7__* %129)
  %131 = load %struct.serio*, %struct.serio** %4, align 8
  %132 = call i32 @serio_set_drvdata(%struct.serio* %131, %struct.pulse8* null)
  br label %133

133:                                              ; preds = %126, %45
  %134 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %135 = call i32 @kfree(%struct.pulse8* %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %114, %24
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pulse8* @kzalloc(i32, i32) #2

declare dso_local %struct.TYPE_7__* @cec_allocate_adapter(i32*, %struct.pulse8*, i32, i32, i32) #2

declare dso_local i32 @dev_name(i32*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_7__*) #2

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.pulse8*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #2

declare dso_local i32 @pulse8_setup(%struct.pulse8*, %struct.serio*, %struct.cec_log_addrs*, i32*) #2

declare dso_local i32 @cec_register_adapter(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @pulse8_apply_persistent_config(%struct.pulse8*, %struct.cec_log_addrs*, i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32 @serio_close(%struct.serio*) #2

declare dso_local i32 @cec_delete_adapter(%struct.TYPE_7__*) #2

declare dso_local i32 @kfree(%struct.pulse8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
