; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_driver = type { i32 }
%struct.rain = type { %struct.TYPE_7__*, i32*, i32, i32, i32, %struct.serio* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cec_log_addrs = type { i32 }

@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_PHYS_ADDR = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rain_cec_adap_ops = common dso_local global i32 0, align 4
@rain_irq_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @rain_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rain*, align 8
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
  %21 = call %struct.rain* @kzalloc(i32 40, i32 %20)
  store %struct.rain* %21, %struct.rain** %7, align 8
  %22 = load %struct.rain*, %struct.rain** %7, align 8
  %23 = icmp ne %struct.rain* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %109

27:                                               ; preds = %2
  %28 = load %struct.serio*, %struct.serio** %4, align 8
  %29 = load %struct.rain*, %struct.rain** %7, align 8
  %30 = getelementptr inbounds %struct.rain, %struct.rain* %29, i32 0, i32 5
  store %struct.serio* %28, %struct.serio** %30, align 8
  %31 = load %struct.rain*, %struct.rain** %7, align 8
  %32 = load %struct.serio*, %struct.serio** %4, align 8
  %33 = getelementptr inbounds %struct.serio, %struct.serio* %32, i32 0, i32 0
  %34 = call i32 @dev_name(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_7__* @cec_allocate_adapter(i32* @rain_cec_adap_ops, %struct.rain* %31, i32 %34, i32 %35, i32 1)
  %37 = load %struct.rain*, %struct.rain** %7, align 8
  %38 = getelementptr inbounds %struct.rain, %struct.rain* %37, i32 0, i32 0
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.rain*, %struct.rain** %7, align 8
  %40 = getelementptr inbounds %struct.rain, %struct.rain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_7__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %27
  br label %105

46:                                               ; preds = %27
  %47 = load %struct.serio*, %struct.serio** %4, align 8
  %48 = getelementptr inbounds %struct.serio, %struct.serio* %47, i32 0, i32 0
  %49 = load %struct.rain*, %struct.rain** %7, align 8
  %50 = getelementptr inbounds %struct.rain, %struct.rain* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.serio*, %struct.serio** %4, align 8
  %52 = load %struct.rain*, %struct.rain** %7, align 8
  %53 = call i32 @serio_set_drvdata(%struct.serio* %51, %struct.rain* %52)
  %54 = load %struct.rain*, %struct.rain** %7, align 8
  %55 = getelementptr inbounds %struct.rain, %struct.rain* %54, i32 0, i32 4
  %56 = load i32, i32* @rain_irq_work_handler, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  %58 = load %struct.rain*, %struct.rain** %7, align 8
  %59 = getelementptr inbounds %struct.rain, %struct.rain* %58, i32 0, i32 3
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.rain*, %struct.rain** %7, align 8
  %62 = getelementptr inbounds %struct.rain, %struct.rain* %61, i32 0, i32 2
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.serio*, %struct.serio** %4, align 8
  %65 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %66 = call i32 @serio_open(%struct.serio* %64, %struct.serio_driver* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %46
  br label %98

70:                                               ; preds = %46
  %71 = load %struct.rain*, %struct.rain** %7, align 8
  %72 = load %struct.serio*, %struct.serio** %4, align 8
  %73 = call i32 @rain_setup(%struct.rain* %71, %struct.serio* %72, %struct.cec_log_addrs* %9, i32* %10)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %95

77:                                               ; preds = %70
  %78 = load %struct.rain*, %struct.rain** %7, align 8
  %79 = getelementptr inbounds %struct.rain, %struct.rain* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.serio*, %struct.serio** %4, align 8
  %82 = getelementptr inbounds %struct.serio, %struct.serio* %81, i32 0, i32 0
  %83 = call i32 @cec_register_adapter(%struct.TYPE_7__* %80, i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %95

87:                                               ; preds = %77
  %88 = load %struct.rain*, %struct.rain** %7, align 8
  %89 = getelementptr inbounds %struct.rain, %struct.rain* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.rain*, %struct.rain** %7, align 8
  %94 = getelementptr inbounds %struct.rain, %struct.rain* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  store i32 0, i32* %3, align 4
  br label %109

95:                                               ; preds = %86, %76
  %96 = load %struct.serio*, %struct.serio** %4, align 8
  %97 = call i32 @serio_close(%struct.serio* %96)
  br label %98

98:                                               ; preds = %95, %69
  %99 = load %struct.rain*, %struct.rain** %7, align 8
  %100 = getelementptr inbounds %struct.rain, %struct.rain* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = call i32 @cec_delete_adapter(%struct.TYPE_7__* %101)
  %103 = load %struct.serio*, %struct.serio** %4, align 8
  %104 = call i32 @serio_set_drvdata(%struct.serio* %103, %struct.rain* null)
  br label %105

105:                                              ; preds = %98, %45
  %106 = load %struct.rain*, %struct.rain** %7, align 8
  %107 = call i32 @kfree(%struct.rain* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %87, %24
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.rain* @kzalloc(i32, i32) #2

declare dso_local %struct.TYPE_7__* @cec_allocate_adapter(i32*, %struct.rain*, i32, i32, i32) #2

declare dso_local i32 @dev_name(i32*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_7__*) #2

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.rain*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #2

declare dso_local i32 @rain_setup(%struct.rain*, %struct.serio*, %struct.cec_log_addrs*, i32*) #2

declare dso_local i32 @cec_register_adapter(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @serio_close(%struct.serio*) #2

declare dso_local i32 @cec_delete_adapter(%struct.TYPE_7__*) #2

declare dso_local i32 @kfree(%struct.rain*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
