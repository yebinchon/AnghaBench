; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_it930x_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_it930x_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dvb_usb_adapter = type { i32, i32** }
%struct.state = type { i64, %struct.i2c_adapter*, i32, %struct.TYPE_3__* }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_3__ = type { i32*, i32** }
%struct.dvb_usb_device = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.si2168_config = type { i32, i32**, %struct.i2c_adapter** }

@.str = private unnamed_addr constant [13 x i8] c"adap->id=%d\0A\00", align 1
@SI2168_TS_SERIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@it930x_addresses_table = common dso_local global %struct.TYPE_4__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @it930x_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it930x_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.si2168_config, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = call %struct.state* @adap_to_priv(%struct.dvb_usb_adapter* %10)
  store %struct.state* %11, %struct.state** %4, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %13 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %5, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %24 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %23, i32 63143, i32 7)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %139

28:                                               ; preds = %1
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %30 = call i32 @af9035_wr_reg(%struct.dvb_usb_device* %29, i32 61699, i32 7)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %139

34:                                               ; preds = %28
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %36 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %35, i32 55508, i32 1, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %139

40:                                               ; preds = %34
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %42 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %41, i32 55509, i32 1, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %139

46:                                               ; preds = %40
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %48 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %47, i32 55507, i32 1, i32 1)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %139

52:                                               ; preds = %46
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %54 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %53, i32 55480, i32 1, i32 1)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %139

58:                                               ; preds = %52
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %60 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %59, i32 55481, i32 1, i32 1)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %139

64:                                               ; preds = %58
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %66 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %65, i32 55479, i32 0, i32 1)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %139

70:                                               ; preds = %64
  %71 = call i32 @msleep(i32 200)
  %72 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %73 = call i32 @af9035_wr_reg_mask(%struct.dvb_usb_device* %72, i32 55479, i32 1, i32 1)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %139

77:                                               ; preds = %70
  %78 = call i32 @memset(%struct.si2168_config* %8, i32 0, i32 24)
  %79 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %8, i32 0, i32 2
  store %struct.i2c_adapter** %9, %struct.i2c_adapter*** %79, align 8
  %80 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %8, i32 0, i32 1
  store i32** %83, i32*** %84, align 8
  %85 = load i32, i32* @SI2168_TS_SERIAL, align 4
  %86 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %8, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load %struct.state*, %struct.state** %4, align 8
  %92 = getelementptr inbounds %struct.state, %struct.state* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32** %90, i32*** %99, align 8
  %100 = load %struct.state*, %struct.state** %4, align 8
  %101 = getelementptr inbounds %struct.state, %struct.state* %100, i32 0, i32 2
  %102 = load %struct.state*, %struct.state** %4, align 8
  %103 = getelementptr inbounds %struct.state, %struct.state* %102, i32 0, i32 3
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32* %101, i32** %110, align 8
  %111 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @it930x_addresses_table, align 8
  %113 = load %struct.state*, %struct.state** %4, align 8
  %114 = getelementptr inbounds %struct.state, %struct.state* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %120 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %119, i32 0, i32 0
  %121 = call i32 @af9035_add_i2c_dev(%struct.dvb_usb_device* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %118, %struct.si2168_config* %8, i32* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %77
  br label %139

125:                                              ; preds = %77
  %126 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %139

135:                                              ; preds = %125
  %136 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %137 = load %struct.state*, %struct.state** %4, align 8
  %138 = getelementptr inbounds %struct.state, %struct.state* %137, i32 0, i32 1
  store %struct.i2c_adapter* %136, %struct.i2c_adapter** %138, align 8
  store i32 0, i32* %2, align 4
  br label %145

139:                                              ; preds = %132, %124, %76, %69, %63, %57, %51, %45, %39, %33, %27
  %140 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %141 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %140, i32 0, i32 0
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @dev_dbg(i32* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %135
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @af9035_wr_reg(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @af9035_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memset(%struct.si2168_config*, i32, i32) #1

declare dso_local i32 @af9035_add_i2c_dev(%struct.dvb_usb_device*, i8*, i32, %struct.si2168_config*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
