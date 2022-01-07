; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.stmpe_client_info = type { i32, %struct.TYPE_13__*, i32 (%struct.stmpe*)*, i32 }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stmpe = type opaque
%struct.stmpe_platform_data = type { i32, i32, i64 }
%struct.stmpe.0 = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i8*, i32, i32, %struct.stmpe_client_info*, %struct.stmpe_platform_data*, i32, i8*, i8*, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"st,sample-time\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"st,mod-12b\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"st,ref-sel\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"st,adc-freq\00", align 1
@stmpe_variant_info = common dso_local global %struct.TYPE_12__** null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to enable VCC supply\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to enable VIO supply\0A\00", align 1
@GPIOF_DIR_IN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"stmpe\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"failed to request IRQ GPIO: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s configured in no-irq mode by platform data\0A\00", align 1
@stmpe_noirq_variant_info = common dso_local global %struct.TYPE_12__** null, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"%s does not support no-irq mode!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@stmpe_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to add children\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmpe_probe(%struct.stmpe_client_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmpe_client_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmpe_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.stmpe.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.stmpe_client_info* %0, %struct.stmpe_client_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %12 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %17 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(%struct.TYPE_13__* %18, i32 16, i32 %19)
  %21 = bitcast i8* %20 to %struct.stmpe_platform_data*
  store %struct.stmpe_platform_data* %21, %struct.stmpe_platform_data** %6, align 8
  %22 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %23 = icmp ne %struct.stmpe_platform_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %350

27:                                               ; preds = %2
  %28 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @stmpe_of_probe(%struct.stmpe_platform_data* %28, %struct.device_node* %29)
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = call i32* @of_find_property(%struct.device_node* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %36 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %39 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(%struct.TYPE_13__* %40, i32 112, i32 %41)
  %43 = bitcast i8* %42 to %struct.stmpe.0*
  store %struct.stmpe.0* %43, %struct.stmpe.0** %8, align 8
  %44 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %45 = icmp ne %struct.stmpe.0* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %350

49:                                               ; preds = %37
  %50 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %51 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %50, i32 0, i32 16
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %54 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %53, i32 0, i32 15
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = call i32 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %62 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %61, i32 0, i32 14
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %49
  %64 = load %struct.device_node*, %struct.device_node** %7, align 8
  %65 = call i32 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %10)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %70 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %69, i32 0, i32 13
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.device_node*, %struct.device_node** %7, align 8
  %73 = call i32 @of_property_read_u32(%struct.device_node* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %10)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %78 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %77, i32 0, i32 12
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.device_node*, %struct.device_node** %7, align 8
  %81 = call i32 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %10)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %86 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %85, i32 0, i32 11
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %89 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %92 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %91, i32 0, i32 2
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %92, align 8
  %93 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %94 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %97 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  %98 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %99 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %100 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %99, i32 0, i32 9
  store %struct.stmpe_platform_data* %98, %struct.stmpe_platform_data** %100, align 8
  %101 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %102 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %103 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %102, i32 0, i32 8
  store %struct.stmpe_client_info* %101, %struct.stmpe_client_info** %103, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %106 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @stmpe_variant_info, align 8
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %107, i64 %109
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %113 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %112, i32 0, i32 3
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %113, align 8
  %114 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %115 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %114, i32 0, i32 3
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %120 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %122 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %121, i32 0, i32 3
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %127 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 8
  %128 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %129 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %128, i32 0, i32 1
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = call i8* @devm_regulator_get_optional(%struct.TYPE_13__* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %132 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %133 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %135 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @IS_ERR(i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %87
  %140 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %141 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @regulator_enable(i8* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %148 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = call i32 @dev_warn(%struct.TYPE_13__* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %139
  br label %152

152:                                              ; preds = %151, %87
  %153 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %154 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = call i8* @devm_regulator_get_optional(%struct.TYPE_13__* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %157 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %158 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %160 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @IS_ERR(i8* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %152
  %165 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %166 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @regulator_enable(i8* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %173 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = call i32 @dev_warn(%struct.TYPE_13__* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %164
  br label %177

177:                                              ; preds = %176, %152
  %178 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %179 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %178, i32 0, i32 2
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %182 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %180, %struct.stmpe.0* %181)
  %183 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %184 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %183, i32 0, i32 2
  %185 = load i32 (%struct.stmpe*)*, i32 (%struct.stmpe*)** %184, align 8
  %186 = icmp ne i32 (%struct.stmpe*)* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %177
  %188 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %189 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %188, i32 0, i32 2
  %190 = load i32 (%struct.stmpe*)*, i32 (%struct.stmpe*)** %189, align 8
  %191 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %192 = bitcast %struct.stmpe.0* %191 to %struct.stmpe*
  %193 = call i32 %190(%struct.stmpe* %192)
  br label %194

194:                                              ; preds = %187, %177
  %195 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %196 = getelementptr inbounds %struct.stmpe_platform_data, %struct.stmpe_platform_data* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %224

199:                                              ; preds = %194
  %200 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %201 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %200, i32 0, i32 1
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %204 = getelementptr inbounds %struct.stmpe_platform_data, %struct.stmpe_platform_data* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @GPIOF_DIR_IN, align 4
  %207 = call i32 @devm_gpio_request_one(%struct.TYPE_13__* %202, i32 %205, i32 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %199
  %211 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %212 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %211, i32 0, i32 2
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %213, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %3, align 4
  br label %350

217:                                              ; preds = %199
  %218 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %219 = getelementptr inbounds %struct.stmpe_platform_data, %struct.stmpe_platform_data* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @gpio_to_irq(i32 %220)
  %222 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %223 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  br label %230

224:                                              ; preds = %194
  %225 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %226 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %229 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %224, %217
  %231 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %232 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %275

235:                                              ; preds = %230
  %236 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %237 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %236, i32 0, i32 2
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %237, align 8
  %239 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %240 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %239, i32 0, i32 3
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @dev_info(%struct.TYPE_13__* %238, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %243)
  %245 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @stmpe_noirq_variant_info, align 8
  %246 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %247 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %245, i64 %249
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = icmp ne %struct.TYPE_12__* %251, null
  br i1 %252, label %265, label %253

253:                                              ; preds = %235
  %254 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %255 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %254, i32 0, i32 2
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %258 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %257, i32 0, i32 3
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @ENODEV, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %3, align 4
  br label %350

265:                                              ; preds = %235
  %266 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @stmpe_noirq_variant_info, align 8
  %267 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %268 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %266, i64 %270
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %274 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %273, i32 0, i32 3
  store %struct.TYPE_12__* %272, %struct.TYPE_12__** %274, align 8
  br label %289

275:                                              ; preds = %230
  %276 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %277 = getelementptr inbounds %struct.stmpe_platform_data, %struct.stmpe_platform_data* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %275
  %282 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %283 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @irq_get_trigger_type(i32 %284)
  %286 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %287 = getelementptr inbounds %struct.stmpe_platform_data, %struct.stmpe_platform_data* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  br label %288

288:                                              ; preds = %281, %275
  br label %289

289:                                              ; preds = %288, %265
  %290 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %291 = call i32 @stmpe_chip_init(%struct.stmpe.0* %290)
  store i32 %291, i32* %9, align 4
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* %9, align 4
  store i32 %295, i32* %3, align 4
  br label %350

296:                                              ; preds = %289
  %297 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %298 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp sge i32 %299, 0
  br i1 %300, label %301, label %334

301:                                              ; preds = %296
  %302 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %303 = load %struct.device_node*, %struct.device_node** %7, align 8
  %304 = call i32 @stmpe_irq_init(%struct.stmpe.0* %302, %struct.device_node* %303)
  store i32 %304, i32* %9, align 4
  %305 = load i32, i32* %9, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %301
  %308 = load i32, i32* %9, align 4
  store i32 %308, i32* %3, align 4
  br label %350

309:                                              ; preds = %301
  %310 = load %struct.stmpe_client_info*, %struct.stmpe_client_info** %4, align 8
  %311 = getelementptr inbounds %struct.stmpe_client_info, %struct.stmpe_client_info* %310, i32 0, i32 1
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %314 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @stmpe_irq, align 4
  %317 = load %struct.stmpe_platform_data*, %struct.stmpe_platform_data** %6, align 8
  %318 = getelementptr inbounds %struct.stmpe_platform_data, %struct.stmpe_platform_data* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @IRQF_ONESHOT, align 4
  %321 = or i32 %319, %320
  %322 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %323 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %312, i32 %315, i32* null, i32 %316, i32 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %struct.stmpe.0* %322)
  store i32 %323, i32* %9, align 4
  %324 = load i32, i32* %9, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %309
  %327 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %328 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %327, i32 0, i32 2
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %329, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* %9, align 4
  store i32 %332, i32* %3, align 4
  br label %350

333:                                              ; preds = %309
  br label %334

334:                                              ; preds = %333, %296
  %335 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %336 = call i32 @stmpe_devices_init(%struct.stmpe.0* %335)
  store i32 %336, i32* %9, align 4
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %334
  store i32 0, i32* %3, align 4
  br label %350

340:                                              ; preds = %334
  %341 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %342 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %341, i32 0, i32 2
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %343, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %345 = load %struct.stmpe.0*, %struct.stmpe.0** %8, align 8
  %346 = getelementptr inbounds %struct.stmpe.0, %struct.stmpe.0* %345, i32 0, i32 2
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %346, align 8
  %348 = call i32 @mfd_remove_devices(%struct.TYPE_13__* %347)
  %349 = load i32, i32* %9, align 4
  store i32 %349, i32* %3, align 4
  br label %350

350:                                              ; preds = %340, %339, %326, %307, %294, %253, %210, %46, %24
  %351 = load i32, i32* %3, align 4
  ret i32 %351
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @stmpe_of_probe(%struct.stmpe_platform_data*, %struct.device_node*) #1

declare dso_local i32* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.stmpe.0*) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_13__*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @stmpe_chip_init(%struct.stmpe.0*) #1

declare dso_local i32 @stmpe_irq_init(%struct.stmpe.0*, %struct.device_node*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32*, i32, i32, i8*, %struct.stmpe.0*) #1

declare dso_local i32 @stmpe_devices_init(%struct.stmpe.0*) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
