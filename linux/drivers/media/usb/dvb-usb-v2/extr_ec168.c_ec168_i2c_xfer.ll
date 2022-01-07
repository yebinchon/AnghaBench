; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_ec168.c_ec168_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_ec168.c_ec168_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i64*, i64 }
%struct.dvb_usb_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ec168_req = type { i64, i64, i64*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ec168_ec100_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@READ_DEMOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: I2C read not implemented\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WRITE_DEMOD = common dso_local global i32 0, align 4
@WRITE_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ec168_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec168_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.ec168_req, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %194

19:                                               ; preds = %3
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %194

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %186, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %187

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %32
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %41
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I2C_M_RD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %37
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ec168_ec100_config, i32 0, i32 0), align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load i32, i32* @READ_DEMOD, align 4
  %59 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 65280, %68
  %70 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 3
  store i64 %77, i64* %78, align 8
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %82
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 2
  store i64* %86, i64** %87, align 8
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %89 = call i32 @ec168_ctrl_msg(%struct.dvb_usb_device* %88, %struct.ec168_req* %9)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %10, align 4
  br label %103

92:                                               ; preds = %48
  %93 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* @KBUILD_MODNAME, align 4
  %98 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %92, %57
  br label %182

104:                                              ; preds = %37, %32
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i64 %107
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ec168_ec100_config, i32 0, i32 0), align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %104
  %114 = load i32, i32* @WRITE_DEMOD, align 4
  %115 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 4
  store i32 %114, i32* %115, align 8
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i64 %127
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 65280, %132
  %134 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 1
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 2
  store i64* null, i64** %136, align 8
  %137 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %138 = call i32 @ec168_ctrl_msg(%struct.dvb_usb_device* %137, %struct.ec168_req* %9)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %181

141:                                              ; preds = %104
  %142 = load i32, i32* @WRITE_I2C, align 4
  %143 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 4
  store i32 %142, i32* %143, align 8
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 %146
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i64 %155
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 256, %158
  %160 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 1
  store i64 %159, i64* %160, align 8
  %161 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i64 %163
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %166, 1
  %168 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 3
  store i64 %167, i64* %168, align 8
  %169 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i64 %171
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = getelementptr inbounds %struct.ec168_req, %struct.ec168_req* %9, i32 0, i32 2
  store i64* %175, i64** %176, align 8
  %177 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %178 = call i32 @ec168_ctrl_msg(%struct.dvb_usb_device* %177, %struct.ec168_req* %9)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %141, %113
  br label %182

182:                                              ; preds = %181, %103
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %189

186:                                              ; preds = %182
  br label %28

187:                                              ; preds = %28
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %191 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %189, %24, %16
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ec168_ctrl_msg(%struct.dvb_usb_device*, %struct.ec168_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
