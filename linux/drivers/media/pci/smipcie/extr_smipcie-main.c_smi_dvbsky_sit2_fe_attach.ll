; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvbsky_sit2_fe_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvbsky_sit2_fe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i64, %struct.i2c_client*, %struct.i2c_client*, i32****, %struct.smi_dev* }
%struct.i2c_client = type { i32 }
%struct.smi_dev = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32, %struct.i2c_board_info*, i32, i32****, i32, %struct.i2c_adapter** }
%struct.si2168_config = type { i32, i32, %struct.si2168_config*, i32, i32****, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i32, %struct.si2157_config*, i32, i32****, i32, %struct.i2c_adapter** }

@SI2168_TS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_port*)* @smi_dvbsky_sit2_fe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_dvbsky_sit2_fe_attach(%struct.smi_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smi_dev*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.i2c_board_info, align 8
  %11 = alloca %struct.si2168_config, align 8
  %12 = alloca %struct.si2157_config, align 8
  store %struct.smi_port* %0, %struct.smi_port** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %14 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %13, i32 0, i32 4
  %15 = load %struct.smi_dev*, %struct.smi_dev** %14, align 8
  store %struct.smi_dev* %15, %struct.smi_dev** %5, align 8
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
  %32 = call i32 @memset(%struct.si2168_config* %11, i32 0, i32 48)
  %33 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %11, i32 0, i32 6
  store %struct.i2c_adapter** %7, %struct.i2c_adapter*** %33, align 8
  %34 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %35 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %34, i32 0, i32 3
  %36 = bitcast i32***** %35 to i32****
  %37 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %11, i32 0, i32 4
  store i32**** %36, i32***** %37, align 8
  %38 = load i32, i32* @SI2168_TS_PARALLEL, align 4
  %39 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %11, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = bitcast %struct.i2c_board_info* %10 to %struct.si2168_config*
  %41 = call i32 @memset(%struct.si2168_config* %40, i32 0, i32 48)
  %42 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I2C_NAME_SIZE, align 4
  %45 = call i32 @strscpy(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 0
  store i32 100, i32* %46, align 8
  %47 = bitcast %struct.si2168_config* %11 to %struct.i2c_board_info*
  %48 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 2
  store %struct.i2c_board_info* %47, %struct.i2c_board_info** %48, align 8
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %50 = bitcast %struct.i2c_board_info* %10 to %struct.si2168_config*
  %51 = call %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter* %49, %struct.si2168_config* %50)
  store %struct.i2c_client* %51, %struct.i2c_client** %9, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %53 = icmp ne %struct.i2c_client* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %30
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %98

58:                                               ; preds = %30
  %59 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %60 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %61 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %60, i32 0, i32 2
  store %struct.i2c_client* %59, %struct.i2c_client** %61, align 8
  %62 = bitcast %struct.si2157_config* %12 to %struct.si2168_config*
  %63 = call i32 @memset(%struct.si2168_config* %62, i32 0, i32 48)
  %64 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %65 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %64, i32 0, i32 3
  %66 = load i32****, i32***** %65, align 8
  %67 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %12, i32 0, i32 4
  store i32**** %66, i32***** %67, align 8
  %68 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %12, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = bitcast %struct.i2c_board_info* %10 to %struct.si2168_config*
  %70 = call i32 @memset(%struct.si2168_config* %69, i32 0, i32 48)
  %71 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @I2C_NAME_SIZE, align 4
  %74 = call i32 @strscpy(i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 0
  store i32 96, i32* %75, align 8
  %76 = bitcast %struct.si2157_config* %12 to %struct.i2c_board_info*
  %77 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 2
  store %struct.i2c_board_info* %76, %struct.i2c_board_info** %77, align 8
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %79 = bitcast %struct.i2c_board_info* %10 to %struct.si2168_config*
  %80 = call %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter* %78, %struct.si2168_config* %79)
  store %struct.i2c_client* %80, %struct.i2c_client** %8, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %82 = icmp ne %struct.i2c_client* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %58
  %84 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %85 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %84, i32 0, i32 2
  %86 = load %struct.i2c_client*, %struct.i2c_client** %85, align 8
  %87 = call i32 @smi_del_i2c_client(%struct.i2c_client* %86)
  %88 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %89 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %88, i32 0, i32 2
  store %struct.i2c_client* null, %struct.i2c_client** %89, align 8
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %98

93:                                               ; preds = %58
  %94 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %95 = load %struct.smi_port*, %struct.smi_port** %3, align 8
  %96 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %95, i32 0, i32 1
  store %struct.i2c_client* %94, %struct.i2c_client** %96, align 8
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %83, %54
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.si2168_config*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @smi_add_i2c_client(%struct.i2c_adapter*, %struct.si2168_config*) #1

declare dso_local i32 @smi_del_i2c_client(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
