; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvbsky_m88ds3103_fe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvbsky_m88ds3103_fe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i64, %struct.TYPE_7__*, %struct.i2c_client*, %struct.smi_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.smi_dev = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, %struct.ts2020_config*, i32 }
%struct.ts2020_config = type { %struct.TYPE_7__* }

@m88ds3103_attach = common dso_local global i32 0, align 4
@smi_dvbsky_m88ds3103_cfg = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_port*)* @smi_dvbsky_m88ds3103_fe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_dvbsky_m88ds3103_fe_attach(%struct.smi_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smi_dev*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  %10 = alloca %struct.ts2020_config, align 8
  store %struct.smi_port* %0, %struct.smi_port** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %12 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %11, i32 0, i32 3
  %13 = load %struct.smi_dev*, %struct.smi_dev** %12, align 8
  store %struct.smi_dev* %13, %struct.smi_dev** %5, align 8
  %14 = bitcast %struct.ts2020_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 24)
  %16 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %17 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %22 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %21, i32 0, i32 0
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i64 0
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %27 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %26, i32 0, i32 0
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i64 1
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi %struct.i2c_adapter* [ %24, %20 ], [ %29, %25 ]
  store %struct.i2c_adapter* %31, %struct.i2c_adapter** %6, align 8
  %32 = load i32, i32* @m88ds3103_attach, align 4
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %34 = call %struct.TYPE_7__* @dvb_attach(i32 %32, i32* @smi_dvbsky_m88ds3103_cfg, %struct.i2c_adapter* %33, %struct.i2c_adapter** %7)
  %35 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %36 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %35, i32 0, i32 1
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %38 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %86

45:                                               ; preds = %30
  %46 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %47 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %10, i32 0, i32 0
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %49, align 8
  %50 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @I2C_NAME_SIZE, align 4
  %53 = call i32 @strscpy(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store i32 96, i32* %54, align 8
  %55 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store %struct.ts2020_config* %10, %struct.ts2020_config** %55, align 8
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %57 = call %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter* %56, %struct.i2c_board_info* %9)
  store %struct.i2c_client* %57, %struct.i2c_client** %8, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %59 = icmp ne %struct.i2c_client* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %80

63:                                               ; preds = %45
  %64 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %65 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %72 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %77 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %78 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %77, i32 0, i32 2
  store %struct.i2c_client* %76, %struct.i2c_client** %78, align 8
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %86

80:                                               ; preds = %60
  %81 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %82 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = call i32 @dvb_frontend_detach(%struct.TYPE_7__* %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %63, %41
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #2

declare dso_local %struct.TYPE_7__* @dvb_attach(i32, i32*, %struct.i2c_adapter*, %struct.i2c_adapter**) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
