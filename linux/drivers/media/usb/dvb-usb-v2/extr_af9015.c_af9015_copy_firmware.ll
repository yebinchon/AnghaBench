; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_copy_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_copy_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.af9015_state = type { i32, i32, i32*, i32 }
%struct.req_t = type { i32, i32, i32*, i32, i32, i32, i32 }

@COPY_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"firmware status %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"firmware copy cmd failed %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"firmware boot took %u ms\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"firmware boot timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @af9015_copy_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_copy_firmware(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.af9015_state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca %struct.req_t, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %11)
  store %struct.af9015_state* %12, %struct.af9015_state** %4, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %5, align 8
  %16 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  %17 = load i32, i32* @COPY_FIRMWARE, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32* inttoptr (i64 20736 to i32*), i32** %19, align 8
  %20 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 5
  store i32 4, i32* %22, align 8
  %23 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 6
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %25 = ptrtoint i32* %24 to i32
  store i32 %25, i32* %23, align 4
  %26 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %30 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %36 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 0
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %42 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %48 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 0
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %54 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %55 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @af9015_read_reg_i2c(%struct.dvb_usb_device* %53, i32 %58, i32 39102, i32* %8)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %1
  br label %171

63:                                               ; preds = %1
  %64 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 12
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %177

71:                                               ; preds = %63
  %72 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %73 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @regmap_write(i32 %74, i32 54294, i32 4)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %171

79:                                               ; preds = %71
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %81 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %80, %struct.req_t* %10)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %86 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %171

89:                                               ; preds = %79
  %90 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %91 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @regmap_write(i32 %92, i32 54294, i32 20)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %171

97:                                               ; preds = %89
  %98 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %99 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %100 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @af9015_write_reg_i2c(%struct.dvb_usb_device* %98, i32 %103, i32 57861, i32 1)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %171

108:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  %109 = load i64, i64* @jiffies, align 8
  %110 = call i64 @msecs_to_jiffies(i32 1000)
  %111 = add i64 %109, %110
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %137, %108
  %113 = load i64, i64* @jiffies, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @time_after(i64 %113, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 12
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 4
  br label %123

123:                                              ; preds = %120, %117, %112
  %124 = phi i1 [ false, %117 ], [ false, %112 ], [ %122, %120 ]
  br i1 %124, label %125, label %142

125:                                              ; preds = %123
  %126 = call i32 @msleep(i32 20)
  %127 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %128 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %129 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @af9015_read_reg_i2c(%struct.dvb_usb_device* %127, i32 %132, i32 39102, i32* %8)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %171

137:                                              ; preds = %125
  %138 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %139 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %138, i32 0, i32 0
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %112

142:                                              ; preds = %123
  %143 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %144 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %143, i32 0, i32 0
  %145 = load i64, i64* @jiffies, align 8
  %146 = call i32 @jiffies_to_msecs(i64 %145)
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @jiffies_to_msecs(i64 %147)
  %149 = sub nsw i32 %148, 1000
  %150 = sub nsw i32 %146, %149
  %151 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %154, label %160

154:                                              ; preds = %142
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  %157 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %158 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %157, i32 0, i32 0
  %159 = call i32 (i32*, i8*, ...) @dev_err(i32* %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %171

160:                                              ; preds = %142
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 12
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* @ETIMEDOUT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %6, align 4
  %166 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %167 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %166, i32 0, i32 0
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %171

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %177

171:                                              ; preds = %163, %154, %136, %107, %96, %84, %78, %62
  %172 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %173 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %172, i32 0, i32 0
  %174 = load i32, i32* %6, align 4
  %175 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %171, %170, %70
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @af9015_read_reg_i2c(%struct.dvb_usb_device*, i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @af9015_write_reg_i2c(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
