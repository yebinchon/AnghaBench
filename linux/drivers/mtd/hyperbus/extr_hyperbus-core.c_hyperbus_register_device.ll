; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/hyperbus/extr_hyperbus-core.c_hyperbus_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/hyperbus/extr_hyperbus-core.c_hyperbus_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hyperbus_device = type { %struct.TYPE_7__*, %struct.map_info, i32, %struct.hyperbus_ctlr*, %struct.device_node* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.map_info = type { i32, i32, i32, i32, i32, %struct.device_node*, i32, i32, i32 }
%struct.hyperbus_ctlr = type { i32, %struct.hyperbus_ops*, %struct.device* }
%struct.hyperbus_ops = type { i32 (%struct.hyperbus_device.0*)*, i64, i64, i64, i64 }
%struct.hyperbus_device.0 = type opaque
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"hyperbus: please fill all the necessary fields!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cypress,hyperflash\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HYPERFLASH = common dso_local global i32 0, align 4
@hyperbus_read16 = common dso_local global i32 0, align 4
@hyperbus_write16 = common dso_local global i32 0, align 4
@hyperbus_copy_to = common dso_local global i32 0, align 4
@hyperbus_copy_from = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Calibration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"probing of hyperbus device failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to register mtd device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hyperbus_register_device(%struct.hyperbus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hyperbus_device*, align 8
  %4 = alloca %struct.hyperbus_ops*, align 8
  %5 = alloca %struct.hyperbus_ctlr*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.map_info*, align 8
  %8 = alloca %struct.resource, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.hyperbus_device* %0, %struct.hyperbus_device** %3, align 8
  %11 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %12 = icmp ne %struct.hyperbus_device* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %15 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %14, i32 0, i32 4
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %20 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %19, i32 0, i32 3
  %21 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %20, align 8
  %22 = icmp ne %struct.hyperbus_ctlr* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %25 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %24, i32 0, i32 3
  %26 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %25, align 8
  %27 = getelementptr inbounds %struct.hyperbus_ctlr, %struct.hyperbus_ctlr* %26, i32 0, i32 2
  %28 = load %struct.device*, %struct.device** %27, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %18, %13, %1
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %202

34:                                               ; preds = %23
  %35 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %36 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %35, i32 0, i32 4
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  store %struct.device_node* %37, %struct.device_node** %6, align 8
  %38 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %39 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %38, i32 0, i32 3
  %40 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %39, align 8
  store %struct.hyperbus_ctlr* %40, %struct.hyperbus_ctlr** %5, align 8
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call i32 @of_device_is_compatible(%struct.device_node* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %202

47:                                               ; preds = %34
  %48 = load i32, i32* @HYPERFLASH, align 4
  %49 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %50 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i32 @of_address_to_resource(%struct.device_node* %51, i32 0, %struct.resource* %8)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %2, align 4
  br label %202

57:                                               ; preds = %47
  %58 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %5, align 8
  %59 = getelementptr inbounds %struct.hyperbus_ctlr, %struct.hyperbus_ctlr* %58, i32 0, i32 2
  %60 = load %struct.device*, %struct.device** %59, align 8
  store %struct.device* %60, %struct.device** %9, align 8
  %61 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %62 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %61, i32 0, i32 1
  store %struct.map_info* %62, %struct.map_info** %7, align 8
  %63 = call i32 @resource_size(%struct.resource* %8)
  %64 = load %struct.map_info*, %struct.map_info** %7, align 8
  %65 = getelementptr inbounds %struct.map_info, %struct.map_info* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = call i32 @devm_ioremap_resource(%struct.device* %66, %struct.resource* %8)
  %68 = load %struct.map_info*, %struct.map_info** %7, align 8
  %69 = getelementptr inbounds %struct.map_info, %struct.map_info* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.map_info*, %struct.map_info** %7, align 8
  %71 = getelementptr inbounds %struct.map_info, %struct.map_info* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %57
  %76 = load %struct.map_info*, %struct.map_info** %7, align 8
  %77 = getelementptr inbounds %struct.map_info, %struct.map_info* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %202

80:                                               ; preds = %57
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = call i32 @dev_name(%struct.device* %81)
  %83 = load %struct.map_info*, %struct.map_info** %7, align 8
  %84 = getelementptr inbounds %struct.map_info, %struct.map_info* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.map_info*, %struct.map_info** %7, align 8
  %86 = getelementptr inbounds %struct.map_info, %struct.map_info* %85, i32 0, i32 0
  store i32 2, i32* %86, align 8
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = load %struct.map_info*, %struct.map_info** %7, align 8
  %89 = getelementptr inbounds %struct.map_info, %struct.map_info* %88, i32 0, i32 5
  store %struct.device_node* %87, %struct.device_node** %89, align 8
  %90 = load %struct.map_info*, %struct.map_info** %7, align 8
  %91 = call i32 @simple_map_init(%struct.map_info* %90)
  %92 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %5, align 8
  %93 = getelementptr inbounds %struct.hyperbus_ctlr, %struct.hyperbus_ctlr* %92, i32 0, i32 1
  %94 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %93, align 8
  store %struct.hyperbus_ops* %94, %struct.hyperbus_ops** %4, align 8
  %95 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %96 = icmp ne %struct.hyperbus_ops* %95, null
  br i1 %96, label %97, label %161

97:                                               ; preds = %80
  %98 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %99 = getelementptr inbounds %struct.hyperbus_ops, %struct.hyperbus_ops* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @hyperbus_read16, align 4
  %104 = load %struct.map_info*, %struct.map_info** %7, align 8
  %105 = getelementptr inbounds %struct.map_info, %struct.map_info* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %108 = getelementptr inbounds %struct.hyperbus_ops, %struct.hyperbus_ops* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @hyperbus_write16, align 4
  %113 = load %struct.map_info*, %struct.map_info** %7, align 8
  %114 = getelementptr inbounds %struct.map_info, %struct.map_info* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %117 = getelementptr inbounds %struct.hyperbus_ops, %struct.hyperbus_ops* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @hyperbus_copy_to, align 4
  %122 = load %struct.map_info*, %struct.map_info** %7, align 8
  %123 = getelementptr inbounds %struct.map_info, %struct.map_info* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %126 = getelementptr inbounds %struct.hyperbus_ops, %struct.hyperbus_ops* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @hyperbus_copy_from, align 4
  %131 = load %struct.map_info*, %struct.map_info** %7, align 8
  %132 = getelementptr inbounds %struct.map_info, %struct.map_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %135 = getelementptr inbounds %struct.hyperbus_ops, %struct.hyperbus_ops* %134, i32 0, i32 0
  %136 = load i32 (%struct.hyperbus_device.0*)*, i32 (%struct.hyperbus_device.0*)** %135, align 8
  %137 = icmp ne i32 (%struct.hyperbus_device.0*)* %136, null
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %5, align 8
  %140 = getelementptr inbounds %struct.hyperbus_ctlr, %struct.hyperbus_ctlr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %138
  %144 = load %struct.hyperbus_ops*, %struct.hyperbus_ops** %4, align 8
  %145 = getelementptr inbounds %struct.hyperbus_ops, %struct.hyperbus_ops* %144, i32 0, i32 0
  %146 = load i32 (%struct.hyperbus_device.0*)*, i32 (%struct.hyperbus_device.0*)** %145, align 8
  %147 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %148 = bitcast %struct.hyperbus_device* %147 to %struct.hyperbus_device.0*
  %149 = call i32 %146(%struct.hyperbus_device.0* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %143
  %153 = load %struct.device*, %struct.device** %9, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %202

157:                                              ; preds = %143
  %158 = load %struct.hyperbus_ctlr*, %struct.hyperbus_ctlr** %5, align 8
  %159 = getelementptr inbounds %struct.hyperbus_ctlr, %struct.hyperbus_ctlr* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %138, %133
  br label %161

161:                                              ; preds = %160, %80
  %162 = load %struct.map_info*, %struct.map_info** %7, align 8
  %163 = call %struct.TYPE_7__* @do_map_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.map_info* %162)
  %164 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %165 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %164, i32 0, i32 0
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %165, align 8
  %166 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %167 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = icmp ne %struct.TYPE_7__* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %161
  %171 = load %struct.device*, %struct.device** %9, align 8
  %172 = call i32 @dev_err(%struct.device* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %202

175:                                              ; preds = %161
  %176 = load %struct.device*, %struct.device** %9, align 8
  %177 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %178 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %177, i32 0, i32 0
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store %struct.device* %176, %struct.device** %181, align 8
  %182 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %183 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load %struct.device_node*, %struct.device_node** %6, align 8
  %186 = call i32 @mtd_set_of_node(%struct.TYPE_7__* %184, %struct.device_node* %185)
  %187 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %188 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = call i32 @mtd_device_register(%struct.TYPE_7__* %189, i32* null, i32 0)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %175
  %194 = load %struct.device*, %struct.device** %9, align 8
  %195 = call i32 @dev_err(%struct.device* %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %196 = load %struct.hyperbus_device*, %struct.hyperbus_device** %3, align 8
  %197 = getelementptr inbounds %struct.hyperbus_device, %struct.hyperbus_device* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = call i32 @map_destroy(%struct.TYPE_7__* %198)
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %2, align 4
  br label %202

201:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %193, %170, %152, %75, %55, %44, %30
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @simple_map_init(%struct.map_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_7__* @do_map_probe(i8*, %struct.map_info*) #1

declare dso_local i32 @mtd_set_of_node(%struct.TYPE_7__*, %struct.device_node*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @map_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
