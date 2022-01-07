; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_add_i2c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_add_i2c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.state = type { %struct.i2c_client** }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_board_info = type { i8*, i32, i32 }

@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@AF9035_I2C_CLIENT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"num=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"I2C client out of index\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8*, i32, i8*, %struct.i2c_adapter*)* @af9035_add_i2c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_add_i2c_dev(%struct.dvb_usb_device* %0, i8* %1, i32 %2, i8* %3, %struct.i2c_adapter* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.state*, align 8
  %15 = alloca %struct.usb_interface*, align 8
  %16 = alloca %struct.i2c_client*, align 8
  %17 = alloca %struct.i2c_board_info, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %11, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %19 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %18)
  store %struct.state* %19, %struct.state** %14, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  store %struct.usb_interface* %22, %struct.usb_interface** %15, align 8
  %23 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 0
  %24 = load i8*, i8** %10, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @I2C_NAME_SIZE, align 4
  %32 = call i32 @strscpy(i32 %29, i8* %30, i32 %31)
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %48, %5
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @AF9035_I2C_CLIENT_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.state*, %struct.state** %14, align 8
  %39 = getelementptr inbounds %struct.state, %struct.state* %38, i32 0, i32 0
  %40 = load %struct.i2c_client**, %struct.i2c_client*** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %40, i64 %42
  %44 = load %struct.i2c_client*, %struct.i2c_client** %43, align 8
  %45 = icmp eq %struct.i2c_client* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %33

51:                                               ; preds = %46, %33
  %52 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @AF9035_I2C_CLIENT_MAX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %104

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %70 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %69, %struct.i2c_board_info* %17)
  store %struct.i2c_client* %70, %struct.i2c_client** %16, align 8
  %71 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %72 = icmp eq %struct.i2c_client* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp eq %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %65
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %104

82:                                               ; preds = %73
  %83 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @try_module_get(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %82
  %92 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %93 = call i32 @i2c_unregister_device(%struct.i2c_client* %92)
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %104

96:                                               ; preds = %82
  %97 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  %98 = load %struct.state*, %struct.state** %14, align 8
  %99 = getelementptr inbounds %struct.state, %struct.state* %98, i32 0, i32 0
  %100 = load %struct.i2c_client**, %struct.i2c_client*** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %100, i64 %102
  store %struct.i2c_client* %97, %struct.i2c_client** %103, align 8
  store i32 0, i32* %6, align 4
  br label %110

104:                                              ; preds = %91, %79, %59
  %105 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %106 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %105, i32 0, i32 0
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %96
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
