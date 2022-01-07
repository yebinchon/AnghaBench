; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_ddb_fe_attach_mxl5xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_ddb_fe_attach_mxl5xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5xx_cfg = type { %struct.ddb_link* }
%struct.ddb_link = type { i32 }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb_dvb*, %struct.TYPE_4__*, %struct.ddb* }
%struct.ddb_dvb = type { i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { %struct.ddb_input*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.ddb = type { i32, %struct.ddb_link* }

@mxl5xx = common dso_local global %struct.mxl5xx_cfg zeroinitializer, align 8
@fmode = common dso_local global i32 0, align 4
@mxl5xx_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No MXL5XX found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No mxl5xx_set_input function pointer!\0A\00", align 1
@LNB_CMD_INIT = common dso_local global i32 0, align 4
@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@max_set_voltage = common dso_local global i32 0, align 4
@max_enable_high_lnb_voltage = common dso_local global i32 0, align 4
@max_set_tone = common dso_local global i32 0, align 4
@max_send_master_cmd = common dso_local global i32 0, align 4
@max_send_burst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_fe_attach_mxl5xx(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.ddb*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.ddb_dvb*, align 8
  %7 = alloca %struct.ddb_port*, align 8
  %8 = alloca %struct.ddb_link*, align 8
  %9 = alloca %struct.mxl5xx_cfg, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  %12 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %13 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %12, i32 0, i32 1
  %14 = load %struct.ddb_port*, %struct.ddb_port** %13, align 8
  %15 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %14, i32 0, i32 3
  %16 = load %struct.ddb*, %struct.ddb** %15, align 8
  store %struct.ddb* %16, %struct.ddb** %4, align 8
  %17 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %18 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %17, i32 0, i32 1
  %19 = load %struct.ddb_port*, %struct.ddb_port** %18, align 8
  %20 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %5, align 8
  %23 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %24 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %23, i32 0, i32 1
  %25 = load %struct.ddb_port*, %struct.ddb_port** %24, align 8
  %26 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %25, i32 0, i32 1
  %27 = load %struct.ddb_dvb*, %struct.ddb_dvb** %26, align 8
  %28 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %29 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %27, i64 %32
  store %struct.ddb_dvb* %33, %struct.ddb_dvb** %6, align 8
  %34 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %35 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %34, i32 0, i32 1
  %36 = load %struct.ddb_port*, %struct.ddb_port** %35, align 8
  store %struct.ddb_port* %36, %struct.ddb_port** %7, align 8
  %37 = load %struct.ddb*, %struct.ddb** %4, align 8
  %38 = getelementptr inbounds %struct.ddb, %struct.ddb* %37, i32 0, i32 1
  %39 = load %struct.ddb_link*, %struct.ddb_link** %38, align 8
  %40 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %41 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %39, i64 %42
  store %struct.ddb_link* %43, %struct.ddb_link** %8, align 8
  %44 = bitcast %struct.mxl5xx_cfg* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 bitcast (%struct.mxl5xx_cfg* @mxl5xx to i8*), i64 8, i1 false)
  %45 = load %struct.ddb_link*, %struct.ddb_link** %8, align 8
  %46 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %9, i32 0, i32 0
  store %struct.ddb_link* %45, %struct.ddb_link** %46, align 8
  %47 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %48 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %50 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 3
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @fmode, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* @mxl5xx_attach, align 4
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %63 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %62, i32 0, i32 3
  %64 = call %struct.TYPE_6__* @dvb_attach(i32 %58, %struct.i2c_adapter* %59, %struct.mxl5xx_cfg* %9, i32 %60, i32 %61, i32** %63)
  %65 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %66 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %65, i32 0, i32 1
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %68 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %57
  %72 = load %struct.ddb*, %struct.ddb** %4, align 8
  %73 = getelementptr inbounds %struct.ddb, %struct.ddb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %165

78:                                               ; preds = %57
  %79 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %80 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.ddb*, %struct.ddb** %4, align 8
  %85 = getelementptr inbounds %struct.ddb, %struct.ddb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %165

90:                                               ; preds = %78
  %91 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %92 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load %struct.ddb*, %struct.ddb** %4, align 8
  %97 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %98 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %101 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @LNB_CMD_INIT, align 4
  %104 = call i32 @lnb_command(%struct.ddb* %96, i64 %99, i32 %102, i32 %103)
  %105 = load %struct.ddb*, %struct.ddb** %4, align 8
  %106 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %107 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %110 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %113 = call i32 @lnb_set_voltage(%struct.ddb* %105, i64 %108, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %95, %90
  %115 = load %struct.ddb*, %struct.ddb** %4, align 8
  %116 = load %struct.ddb_link*, %struct.ddb_link** %8, align 8
  %117 = load i32, i32* @fmode, align 4
  %118 = call i32 @ddb_lnb_init_fmode(%struct.ddb* %115, %struct.ddb_link* %116, i32 %117)
  %119 = load i32, i32* @max_set_voltage, align 4
  %120 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %121 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i32 %119, i32* %124, align 8
  %125 = load i32, i32* @max_enable_high_lnb_voltage, align 4
  %126 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %127 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* @max_set_tone, align 4
  %132 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %133 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i32 %131, i32* %136, align 8
  %137 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %138 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %144 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @max_send_master_cmd, align 4
  %146 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %147 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* @max_send_burst, align 4
  %152 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %153 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %158 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %159 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store %struct.ddb_input* %157, %struct.ddb_input** %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %164 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %114, %83, %71
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @dvb_attach(i32, %struct.i2c_adapter*, %struct.mxl5xx_cfg*, i32, i32, i32**) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @lnb_command(%struct.ddb*, i64, i32, i32) #2

declare dso_local i32 @lnb_set_voltage(%struct.ddb*, i64, i32, i32) #2

declare dso_local i32 @ddb_lnb_init_fmode(%struct.ddb*, %struct.ddb_link*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
