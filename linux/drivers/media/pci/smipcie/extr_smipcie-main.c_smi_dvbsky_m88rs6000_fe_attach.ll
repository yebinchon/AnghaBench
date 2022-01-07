; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvbsky_m88rs6000_fe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvbsky_m88rs6000_fe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i64, %struct.TYPE_7__*, %struct.i2c_client*, %struct.smi_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.smi_dev = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, %struct.m88rs6000t_config*, i32 }
%struct.m88rs6000t_config = type { %struct.TYPE_7__* }

@m88ds3103_attach = common dso_local global i32 0, align 4
@smi_dvbsky_m88rs6000_cfg = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"m88rs6000t\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_port*)* @smi_dvbsky_m88rs6000_fe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_dvbsky_m88rs6000_fe_attach(%struct.smi_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smi_dev*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  %10 = alloca %struct.m88rs6000t_config, align 8
  store %struct.smi_port* %0, %struct.smi_port** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %12 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %11, i32 0, i32 3
  %13 = load %struct.smi_dev*, %struct.smi_dev** %12, align 8
  store %struct.smi_dev* %13, %struct.smi_dev** %5, align 8
  %14 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 24)
  %15 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %16 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %21 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %20, i32 0, i32 0
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %22, i64 0
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %26 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %25, i32 0, i32 0
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %26, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i64 1
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi %struct.i2c_adapter* [ %23, %19 ], [ %28, %24 ]
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %6, align 8
  %31 = load i32, i32* @m88ds3103_attach, align 4
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %33 = call %struct.TYPE_7__* @dvb_attach(i32 %31, i32* @smi_dvbsky_m88rs6000_cfg, %struct.i2c_adapter* %32, %struct.i2c_adapter** %7)
  %34 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %35 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %34, i32 0, i32 1
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %37 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %85

44:                                               ; preds = %29
  %45 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %46 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.m88rs6000t_config, %struct.m88rs6000t_config* %10, i32 0, i32 0
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %48, align 8
  %49 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @I2C_NAME_SIZE, align 4
  %52 = call i32 @strscpy(i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store i32 33, i32* %53, align 8
  %54 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store %struct.m88rs6000t_config* %10, %struct.m88rs6000t_config** %54, align 8
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %56 = call %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter* %55, %struct.i2c_board_info* %9)
  store %struct.i2c_client* %56, %struct.i2c_client** %8, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = icmp ne %struct.i2c_client* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %44
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %79

62:                                               ; preds = %44
  %63 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %64 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %71 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %76 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %77 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %76, i32 0, i32 2
  store %struct.i2c_client* %75, %struct.i2c_client** %77, align 8
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %85

79:                                               ; preds = %59
  %80 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %81 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @dvb_frontend_detach(%struct.TYPE_7__* %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %62, %40
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @dvb_attach(i32, i32*, %struct.i2c_adapter*, %struct.i2c_adapter**) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
