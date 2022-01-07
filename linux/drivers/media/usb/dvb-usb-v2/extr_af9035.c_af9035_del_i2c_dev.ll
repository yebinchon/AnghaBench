; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_del_i2c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_del_i2c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.state = type { %struct.i2c_client** }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AF9035_I2C_CLIENT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"num=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"I2C client out of index\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*)* @af9035_del_i2c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @af9035_del_i2c_dev(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %8 = call %struct.state* @d_to_priv(%struct.dvb_usb_device* %7)
  store %struct.state* %8, %struct.state** %4, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 0
  %11 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  store %struct.usb_interface* %11, %struct.usb_interface** %5, align 8
  %12 = load i32, i32* @AF9035_I2C_CLIENT_MAX, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.state*, %struct.state** %4, align 8
  %19 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 0
  %20 = load %struct.i2c_client**, %struct.i2c_client*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %20, i64 %22
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  %25 = icmp ne %struct.i2c_client* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %28

27:                                               ; preds = %17
  br label %13

28:                                               ; preds = %26, %13
  %29 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %62

39:                                               ; preds = %28
  %40 = load %struct.state*, %struct.state** %4, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %40, i32 0, i32 0
  %42 = load %struct.i2c_client**, %struct.i2c_client*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %42, i64 %44
  %46 = load %struct.i2c_client*, %struct.i2c_client** %45, align 8
  store %struct.i2c_client* %46, %struct.i2c_client** %6, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @module_put(i32 %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = call i32 @i2c_unregister_device(%struct.i2c_client* %54)
  %56 = load %struct.state*, %struct.state** %4, align 8
  %57 = getelementptr inbounds %struct.state, %struct.state* %56, i32 0, i32 0
  %58 = load %struct.i2c_client**, %struct.i2c_client*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %58, i64 %60
  store %struct.i2c_client* null, %struct.i2c_client** %61, align 8
  br label %66

62:                                               ; preds = %35
  %63 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %39
  ret void
}

declare dso_local %struct.state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
