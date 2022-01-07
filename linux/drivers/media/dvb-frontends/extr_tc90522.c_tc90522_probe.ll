; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc90522_config = type { %struct.i2c_adapter*, %struct.TYPE_6__* }
%struct.i2c_adapter = type { i32, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.tc90522_config* }
%struct.TYPE_6__ = type { %struct.tc90522_state*, %struct.TYPE_8__ }
%struct.tc90522_state = type { %struct.TYPE_8__, %struct.i2c_adapter, %struct.TYPE_6__, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.i2c_adapter*, %struct.TYPE_6__* }
%struct.i2c_device_id = type { i64 }
%struct.dvb_frontend_ops = type { %struct.i2c_adapter*, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tc90522_ops_sat = common dso_local global %struct.tc90522_config zeroinitializer, align 8
@tc90522_ops_ter = common dso_local global %struct.tc90522_config zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@tc90522_tuner_i2c_algo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tc90522_sub\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Toshiba TC90522 attached.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tc90522_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tc90522_state*, align 8
  %7 = alloca %struct.tc90522_config*, align 8
  %8 = alloca %struct.dvb_frontend_ops*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tc90522_state* @kzalloc(i32 80, i32 %11)
  store %struct.tc90522_state* %12, %struct.tc90522_state** %6, align 8
  %13 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %14 = icmp ne %struct.tc90522_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %21 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %20, i32 0, i32 3
  store %struct.i2c_client* %19, %struct.i2c_client** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.tc90522_config*, %struct.tc90522_config** %24, align 8
  store %struct.tc90522_config* %25, %struct.tc90522_config** %7, align 8
  %26 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %27 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %26, i32 0, i32 0
  %28 = load %struct.tc90522_config*, %struct.tc90522_config** %7, align 8
  %29 = call i32 @memcpy(%struct.TYPE_8__* %27, %struct.tc90522_config* %28, i32 16)
  %30 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %31 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %30, i32 0, i32 2
  %32 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %33 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.tc90522_config*, %struct.tc90522_config** %7, align 8
  %36 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %35, i32 0, i32 1
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, %struct.tc90522_config* @tc90522_ops_sat, %struct.tc90522_config* @tc90522_ops_ter
  %43 = bitcast %struct.tc90522_config* %42 to %struct.dvb_frontend_ops*
  store %struct.dvb_frontend_ops* %43, %struct.dvb_frontend_ops** %8, align 8
  %44 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %45 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.dvb_frontend_ops*, %struct.dvb_frontend_ops** %8, align 8
  %48 = bitcast %struct.dvb_frontend_ops* %47 to %struct.tc90522_config*
  %49 = call i32 @memcpy(%struct.TYPE_8__* %46, %struct.tc90522_config* %48, i32 16)
  %50 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %51 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %52 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.tc90522_state* %50, %struct.tc90522_state** %53, align 8
  %54 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %55 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %54, i32 0, i32 1
  store %struct.i2c_adapter* %55, %struct.i2c_adapter** %9, align 8
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %59, i32 0, i32 2
  store i32* @tc90522_tuner_i2c_algo, i32** %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %64 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strscpy(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4)
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %71 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %72 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %70, %struct.tc90522_state* %71)
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %74 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %18
  br label %92

78:                                               ; preds = %18
  %79 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %80 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %81 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store %struct.i2c_adapter* %79, %struct.i2c_adapter** %82, align 8
  %83 = load %struct.tc90522_config*, %struct.tc90522_config** %7, align 8
  %84 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %83, i32 0, i32 0
  store %struct.i2c_adapter* %79, %struct.i2c_adapter** %84, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %87 = getelementptr inbounds %struct.tc90522_state, %struct.tc90522_state* %86, i32 0, i32 0
  %88 = call i32 @i2c_set_clientdata(%struct.i2c_client* %85, %struct.TYPE_8__* %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call i32 @dev_info(%struct.TYPE_9__* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

92:                                               ; preds = %77
  %93 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %94 = call i32 @kfree(%struct.tc90522_state* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %78, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.tc90522_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.tc90522_config*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.tc90522_state*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @kfree(%struct.tc90522_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
