; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.ts2020_config = type { i32, i32, %struct.dvb_frontend* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_board_info = type { %struct.ts2020_config*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @ts2020_attach(%struct.dvb_frontend* %0, %struct.ts2020_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.ts2020_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  %10 = alloca %struct.ts2020_config, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.ts2020_config* %1, %struct.ts2020_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  %11 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %12 = call i32 @memcpy(%struct.ts2020_config* %10, %struct.ts2020_config* %11, i32 16)
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %14 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %10, i32 0, i32 2
  store %struct.dvb_frontend* %13, %struct.dvb_frontend** %14, align 8
  %15 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %10, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 16)
  %17 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I2C_NAME_SIZE, align 4
  %20 = call i32 @strscpy(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %22 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store %struct.ts2020_config* %10, %struct.ts2020_config** %25, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %27 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %26, %struct.i2c_board_info* %9)
  store %struct.i2c_client* %27, %struct.i2c_client** %8, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %29 = icmp ne %struct.i2c_client* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %39

37:                                               ; preds = %30
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %38, %struct.dvb_frontend** %4, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %40
}

declare dso_local i32 @memcpy(%struct.ts2020_config*, %struct.ts2020_config*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
