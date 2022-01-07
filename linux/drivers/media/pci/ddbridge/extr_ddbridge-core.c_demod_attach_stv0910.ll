; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_stv0910.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_stv0910.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0910_cfg = type { i32, i32, i32, i32 }
%struct.lnbh25_config = type { i32 }
%struct.ddb_input = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ddb_dvb*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { i8* }
%struct.TYPE_4__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@stv0910_p = common dso_local global %struct.stv0910_cfg zeroinitializer, align 4
@lnbh25_cfg = common dso_local global %struct.lnbh25_config zeroinitializer, align 4
@stv0910_single = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Enabling stv0910 higher speed TS\0A\00", align 1
@stv0910_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"No STV0910 found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lnbh25_attach = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"No LNBH25 found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*, i32, i32)* @demod_attach_stv0910 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_stv0910(%struct.ddb_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.ddb_dvb*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.stv0910_cfg, align 4
  %12 = alloca %struct.lnbh25_config, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %14 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %8, align 8
  %19 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %20 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.ddb_dvb*, %struct.ddb_dvb** %22, align 8
  %24 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %25 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %23, i64 %28
  store %struct.ddb_dvb* %29, %struct.ddb_dvb** %9, align 8
  %30 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %31 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %10, align 8
  %37 = bitcast %struct.stv0910_cfg* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 bitcast (%struct.stv0910_cfg* @stv0910_p to i8*), i64 16, i1 false)
  %38 = bitcast %struct.lnbh25_config* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.lnbh25_config* @lnbh25_cfg to i8*), i64 4, i1 false)
  %39 = load i64, i64* @stv0910_single, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %11, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %11, i32 0, i32 1
  store i32 2, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %11, i32 0, i32 2
  store i32 16, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @stv0910_attach, align 4
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %58 = bitcast %struct.i2c_adapter* %57 to i8*
  %59 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %60 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 1
  %63 = call i8* (i32, i8*, ...) @dvb_attach(i32 %56, i8* %58, %struct.stv0910_cfg* %11, i32 %62)
  %64 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %65 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %67 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %11, i32 0, i32 3
  store i32 108, i32* %71, align 4
  %72 = load i32, i32* @stv0910_attach, align 4
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %74 = bitcast %struct.i2c_adapter* %73 to i8*
  %75 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %76 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 1
  %79 = call i8* (i32, i8*, ...) @dvb_attach(i32 %72, i8* %74, %struct.stv0910_cfg* %11, i32 %78)
  %80 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %81 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %70, %55
  %83 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %84 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %10, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %134

92:                                               ; preds = %82
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %94 = call i64 @has_lnbh25(%struct.i2c_adapter* %93, i32 13)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %98 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 13, i32 12
  %104 = shl i32 %103, 1
  %105 = getelementptr inbounds %struct.lnbh25_config, %struct.lnbh25_config* %12, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  br label %116

106:                                              ; preds = %92
  %107 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %108 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 9, i32 8
  %114 = shl i32 %113, 1
  %115 = getelementptr inbounds %struct.lnbh25_config, %struct.lnbh25_config* %12, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %106, %96
  %117 = load i32, i32* @lnbh25_attach, align 4
  %118 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %119 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %122 = call i8* (i32, i8*, ...) @dvb_attach(i32 %117, i8* %120, %struct.lnbh25_config* %12, %struct.i2c_adapter* %121)
  %123 = icmp ne i8* %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %116
  %125 = load %struct.device*, %struct.device** %10, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %128 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @dvb_frontend_detach(i8* %129)
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %134

133:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %124, %87
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #2

declare dso_local i8* @dvb_attach(i32, i8*, ...) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i64 @has_lnbh25(%struct.i2c_adapter*, i32) #2

declare dso_local i32 @dvb_frontend_detach(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
