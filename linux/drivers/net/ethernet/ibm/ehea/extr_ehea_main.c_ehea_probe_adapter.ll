; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_probe_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_probe_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ehea_adapter = type { i32, %struct.TYPE_7__*, i32**, i32, i32, i32, %struct.platform_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid ibmebus device probed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no mem for ehea_adapter\0A\00", align 1
@adapter_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ibm,hea-handle\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed getting handle for adapter '%pOF'\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EHEA_PD_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"sense_adapter_attr failed: %d\0A\00", align 1
@EHEA_NEQ = common dso_local global i32 0, align 4
@EHEA_MAX_ENTRIES_EQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"NEQ creation failed\0A\00", align 1
@ehea_neq_tasklet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"setup_ports failed\0A\00", align 1
@ehea_interrupt_neq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"ehea_neq\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"requesting NEQ IRQ failed\0A\00", align 1
@EHEA_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehea_probe_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_probe_adapter(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ehea_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = call i32 (...) @ehea_register_memory_hooks()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %196

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = icmp ne %struct.platform_device* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16, %13
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %196

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ehea_adapter* @devm_kzalloc(%struct.TYPE_8__* %28, i32 48, i32 %29)
  store %struct.ehea_adapter* %30, %struct.ehea_adapter** %4, align 8
  %31 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %32 = icmp ne %struct.ehea_adapter* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %193

39:                                               ; preds = %26
  %40 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %40, i32 0, i32 0
  %42 = call i32 @list_add(i32* %41, i32* @adapter_list)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %44, i32 0, i32 6
  store %struct.platform_device* %43, %struct.platform_device** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @of_get_property(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %39
  %59 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %189

73:                                               ; preds = %58
  %74 = load i32, i32* @EHEA_PD_ID, align 4
  %75 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.ehea_adapter* %78)
  %80 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %81 = call i32 @ehea_sense_adapter_attr(%struct.ehea_adapter* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %189

89:                                               ; preds = %73
  %90 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %91 = load i32, i32* @EHEA_NEQ, align 4
  %92 = load i32, i32* @EHEA_MAX_ENTRIES_EQ, align 4
  %93 = call %struct.TYPE_7__* @ehea_create_eq(%struct.ehea_adapter* %90, i32 %91, i32 %92, i32 1)
  %94 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %94, i32 0, i32 1
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %95, align 8
  %96 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = icmp ne %struct.TYPE_7__* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %189

106:                                              ; preds = %89
  %107 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %107, i32 0, i32 3
  %109 = load i32, i32* @ehea_neq_tasklet, align 4
  %110 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %111 = ptrtoint %struct.ehea_adapter* %110 to i64
  %112 = call i32 @tasklet_init(i32* %108, i32 %109, i64 %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = call i32 @ehea_create_device_sysfs(%struct.platform_device* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %184

118:                                              ; preds = %106
  %119 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %120 = call i32 @ehea_setup_ports(%struct.ehea_adapter* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %181

127:                                              ; preds = %118
  %128 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %129 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ehea_interrupt_neq, align 4
  %135 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %136 = call i32 @ibmebus_request_irq(i32 %133, i32 %134, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.ehea_adapter* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %127
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %147

143:                                              ; preds = %127
  %144 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %145 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %144, i32 0, i32 3
  %146 = call i32 @tasklet_hi_schedule(i32* %145)
  store i32 0, i32* %6, align 4
  br label %193

147:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %177, %147
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @EHEA_MAX_PORTS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %180

152:                                              ; preds = %148
  %153 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %154 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %176

161:                                              ; preds = %152
  %162 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %163 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %162, i32 0, i32 2
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @ehea_shutdown_single_port(i32* %168)
  %170 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %171 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %170, i32 0, i32 2
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %161, %152
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %148

180:                                              ; preds = %148
  br label %181

181:                                              ; preds = %180, %123
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = call i32 @ehea_remove_device_sysfs(%struct.platform_device* %182)
  br label %184

184:                                              ; preds = %181, %117
  %185 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %186 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %185, i32 0, i32 1
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = call i32 @ehea_destroy_eq(%struct.TYPE_7__* %187)
  br label %189

189:                                              ; preds = %184, %100, %84, %63
  %190 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %191 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %190, i32 0, i32 0
  %192 = call i32 @list_del(i32* %191)
  br label %193

193:                                              ; preds = %189, %143, %33
  %194 = call i32 (...) @ehea_update_firmware_handles()
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %193, %22, %11
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @ehea_register_memory_hooks(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.ehea_adapter* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ehea_adapter*) #1

declare dso_local i32 @ehea_sense_adapter_attr(%struct.ehea_adapter*) #1

declare dso_local %struct.TYPE_7__* @ehea_create_eq(%struct.ehea_adapter*, i32, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @ehea_create_device_sysfs(%struct.platform_device*) #1

declare dso_local i32 @ehea_setup_ports(%struct.ehea_adapter*) #1

declare dso_local i32 @ibmebus_request_irq(i32, i32, i32, i8*, %struct.ehea_adapter*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @ehea_shutdown_single_port(i32*) #1

declare dso_local i32 @ehea_remove_device_sysfs(%struct.platform_device*) #1

declare dso_local i32 @ehea_destroy_eq(%struct.TYPE_7__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ehea_update_firmware_handles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
