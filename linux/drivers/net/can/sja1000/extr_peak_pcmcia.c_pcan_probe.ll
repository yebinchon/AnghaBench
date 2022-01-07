; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i8**, %struct.pcan_pccard*, i32, %struct.TYPE_2__** }
%struct.pcan_pccard = type { i32, i32, i32, i8*, i8*, %struct.pcmcia_device* }
%struct.TYPE_2__ = type { i32 }

@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@pcan_conf_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pcmcia_loop_config() error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no irq assigned\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"pcmcia_enable_device failed err=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"couldn't map io port into io memory\0A\00", align 1
@PCC_FW_MAJOR = common dso_local global i32 0, align 4
@PCC_FW_MINOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"PEAK-System pcmcia card %s fw %d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PCAN-PC Card\00", align 1
@pcan_led_timer = common dso_local global i32 0, align 4
@pcan_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@PCC_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"couldn't request irq%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @pcan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcan_pccard*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %7 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = load i32, i32* @pcan_conf_check, align 4
  %15 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %13, i32 %14, i32* null)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %169

23:                                               ; preds = %1
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %169

34:                                               ; preds = %23
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %169

44:                                               ; preds = %34
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.pcan_pccard* @kzalloc(i32 40, i32 %45)
  store %struct.pcan_pccard* %46, %struct.pcan_pccard** %4, align 8
  %47 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %48 = icmp ne %struct.pcan_pccard* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %166

52:                                               ; preds = %44
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %54 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %55 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %54, i32 0, i32 5
  store %struct.pcmcia_device* %53, %struct.pcmcia_device** %55, align 8
  %56 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 3
  store %struct.pcan_pccard* %56, %struct.pcan_pccard** %58, align 8
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %67 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @resource_size(%struct.TYPE_2__* %70)
  %72 = call i32 @ioport_map(i32 %65, i32 %71)
  %73 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %74 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %76 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %52
  %80 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %81 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %80, i32 0, i32 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %161

85:                                               ; preds = %52
  %86 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %87 = load i32, i32* @PCC_FW_MAJOR, align 4
  %88 = call i8* @pcan_read_reg(%struct.pcan_pccard* %86, i32 %87)
  %89 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %90 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %92 = load i32, i32* @PCC_FW_MINOR, align 4
  %93 = call i8* @pcan_read_reg(%struct.pcan_pccard* %91, i32 %92)
  %94 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %95 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 4
  %98 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %99 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %85
  %105 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %106 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %105, i32 0, i32 2
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  %109 = load i8*, i8** %108, align 8
  br label %111

110:                                              ; preds = %85
  br label %111

111:                                              ; preds = %110, %104
  %112 = phi i8* [ %109, %104 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %110 ]
  %113 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %114 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %117 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %112, i8* %115, i8* %118)
  %120 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %121 = call i32 @pcan_add_channels(%struct.pcan_pccard* %120)
  %122 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %123 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %111
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %156

129:                                              ; preds = %111
  %130 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %131 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %130, i32 0, i32 1
  %132 = load i32, i32* @pcan_led_timer, align 4
  %133 = call i32 @timer_setup(i32* %131, i32 %132, i32 0)
  %134 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %135 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IRQF_SHARED, align 4
  %138 = load i32, i32* @PCC_NAME, align 4
  %139 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %140 = call i32 @request_irq(i32 %136, i32* @pcan_isr, i32 %137, i32 %138, %struct.pcan_pccard* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %129
  %144 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %145 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %144, i32 0, i32 4
  %146 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %147 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %153

150:                                              ; preds = %129
  %151 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %152 = call i32 @pcan_set_can_power(%struct.pcan_pccard* %151, i32 1)
  store i32 0, i32* %2, align 4
  br label %171

153:                                              ; preds = %143
  %154 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %155 = call i32 @pcan_free_channels(%struct.pcan_pccard* %154)
  br label %156

156:                                              ; preds = %153, %126
  %157 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %158 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ioport_unmap(i32 %159)
  br label %161

161:                                              ; preds = %156, %79
  %162 = load %struct.pcan_pccard*, %struct.pcan_pccard** %4, align 8
  %163 = call i32 @kfree(%struct.pcan_pccard* %162)
  %164 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %165 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %164, i32 0, i32 3
  store %struct.pcan_pccard* null, %struct.pcan_pccard** %165, align 8
  br label %166

166:                                              ; preds = %161, %49
  %167 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %168 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %167)
  br label %169

169:                                              ; preds = %166, %39, %28, %18
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %169, %150
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local %struct.pcan_pccard* @kzalloc(i32, i32) #1

declare dso_local i32 @ioport_map(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i8* @pcan_read_reg(%struct.pcan_pccard*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @pcan_add_channels(%struct.pcan_pccard*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.pcan_pccard*) #1

declare dso_local i32 @pcan_set_can_power(%struct.pcan_pccard*, i32) #1

declare dso_local i32 @pcan_free_channels(%struct.pcan_pccard*) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @kfree(%struct.pcan_pccard*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
