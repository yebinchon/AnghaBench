; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-dvb.c_si2157_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-dvb.c_si2157_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_port = type { %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }
%struct.si2157_config = type { %struct.dvb_frontend* }
%struct.i2c_board_info = type { i32, i32, %struct.si2157_config* }

@.str = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7164_port*, %struct.i2c_adapter*, %struct.dvb_frontend*, i32, %struct.si2157_config*)* @si2157_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2157_attach(%struct.saa7164_port* %0, %struct.i2c_adapter* %1, %struct.dvb_frontend* %2, i32 %3, %struct.si2157_config* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa7164_port*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.dvb_frontend*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.si2157_config*, align 8
  %12 = alloca %struct.i2c_board_info, align 8
  %13 = alloca %struct.i2c_client*, align 8
  store %struct.saa7164_port* %0, %struct.saa7164_port** %7, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %8, align 8
  store %struct.dvb_frontend* %2, %struct.dvb_frontend** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.si2157_config* %4, %struct.si2157_config** %11, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %9, align 8
  %15 = load %struct.si2157_config*, %struct.si2157_config** %11, align 8
  %16 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %15, i32 0, i32 0
  store %struct.dvb_frontend* %14, %struct.dvb_frontend** %16, align 8
  %17 = call i32 @memset(%struct.i2c_board_info* %12, i32 0, i32 16)
  %18 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_NAME_SIZE, align 4
  %21 = call i32 @strscpy(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.si2157_config*, %struct.si2157_config** %11, align 8
  %23 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 2
  store %struct.si2157_config* %22, %struct.si2157_config** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = ashr i32 %24, 1
  %26 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %12, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @request_module(i32 %28)
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %31 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %30, %struct.i2c_board_info* %12)
  store %struct.i2c_client* %31, %struct.i2c_client** %13, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %33 = icmp eq %struct.i2c_client* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %5
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %61

43:                                               ; preds = %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @try_module_get(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %54 = call i32 @i2c_unregister_device(%struct.i2c_client* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %43
  %58 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %59 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %60 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %59, i32 0, i32 0
  store %struct.i2c_client* %58, %struct.i2c_client** %60, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %52, %40
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @request_module(i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
