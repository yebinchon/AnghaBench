; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dvb_usb_device = type { i32, %struct.opera1_state* }
%struct.opera1_state = type { i64 }
%struct.i2c_msg = type { i32, i32, i64*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@ADDR_B880_READ_REMOTE = common dso_local global i32 0, align 4
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@rc_map_opera1_table = common dso_local global %struct.TYPE_4__* null, align 8
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @opera1_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opera1_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.opera1_state*, align 8
  %9 = alloca [32 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.i2c_msg], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = load %struct.opera1_state*, %struct.opera1_state** %16, align 8
  store %struct.opera1_state* %17, %struct.opera1_state** %8, align 8
  store i32 4333, i32* %10, align 4
  store i32 4588, i32* %11, align 4
  %18 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  store i32 32, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  %23 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  store i64* %23, i64** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 3
  %25 = load i32, i32* @ADDR_B880_READ_REMOTE, align 4
  store i32 %25, i32* %24, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %29 = call i32 @i2c_transfer(i32* %27, %struct.i2c_msg* %28, i32 1)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %151

31:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 31
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load i32, i32* %14, align 4
  %56 = and i32 %55, 32768
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  %60 = shl i32 %59, 1
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 15
  %63 = and i32 %62, 1
  %64 = or i32 %60, %63
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %58, %54
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 65535
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.opera1_state*, %struct.opera1_state** %8, align 8
  %70 = getelementptr inbounds %struct.opera1_state, %struct.opera1_state* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.opera1_state*, %struct.opera1_state** %8, align 8
  %77 = getelementptr inbounds %struct.opera1_state, %struct.opera1_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %155

81:                                               ; preds = %68, %65
  br label %82

82:                                               ; preds = %102, %81
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = ashr i32 %86, 16
  %88 = icmp eq i32 %87, 4588
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %103

90:                                               ; preds = %85
  %91 = load i32, i32* %14, align 4
  %92 = ashr i32 %91, 16
  %93 = icmp eq i32 %92, 4333
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, -65537
  %97 = or i32 %96, 283967488
  store i32 %97, i32* %14, align 4
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = ashr i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101
  br label %82

103:                                              ; preds = %94, %89, %82
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %155

107:                                              ; preds = %103
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %108, 65535
  %110 = or i32 %109, 256
  store i32 %110, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %147, %107
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_opera1_table, align 8
  %114 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %150

116:                                              ; preds = %111
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_opera1_table, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = call i32 @rc5_scan(%struct.TYPE_4__* %120)
  %122 = load i32, i32* %14, align 4
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %116
  %126 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_opera1_table, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %6, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rc_map_opera1_table, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.opera1_state*, %struct.opera1_state** %8, align 8
  %143 = getelementptr inbounds %struct.opera1_state, %struct.opera1_state* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %150

144:                                              ; preds = %116
  %145 = load %struct.opera1_state*, %struct.opera1_state** %8, align 8
  %146 = getelementptr inbounds %struct.opera1_state, %struct.opera1_state* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %111

150:                                              ; preds = %125, %111
  br label %154

151:                                              ; preds = %3
  %152 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %153 = load i32*, i32** %7, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %150
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %106, %73
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @rc5_scan(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
