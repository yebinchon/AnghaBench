; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_i2c_xfer_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.dvb_usb_device = type { i32, i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c xfer to big: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@REQUEST_I2C_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"I2C read failed on address 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"i2c xfer buffer to small for %d\0A\00", align 1
@REQUEST_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib0700_i2c_xfer_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_i2c_xfer_legacy(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.dib0700_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %8, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 2
  %17 = load %struct.dib0700_state*, %struct.dib0700_state** %16, align 8
  store %struct.dib0700_state* %17, %struct.dib0700_state** %9, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %235

25:                                               ; preds = %3
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 1
  %28 = call i64 @mutex_lock_interruptible(i32* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EINTR, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %235

37:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %222, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %225

42:                                               ; preds = %38
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i64 %45
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 1
  %50 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %51 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %60, 6
  br i1 %61, label %62, label %72

62:                                               ; preds = %42
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %65
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %227

72:                                               ; preds = %42
  %73 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %74 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 %79
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i64 %85
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32* %76, i32* %82, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %199

94:                                               ; preds = %72
  %95 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i64 %98
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @I2C_M_RD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %199

105:                                              ; preds = %94
  %106 = load i32, i32* @REQUEST_I2C_READ, align 4
  %107 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %108 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %112 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %118 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %119 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %121, i64 %123
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 2
  %128 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %129 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i64 %134
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dib0700_ctrl_rd(%struct.dvb_usb_device* %117, i32* %120, i32 %127, i32* %130, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %105
  %142 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i64 %144
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @deb_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %12, align 4
  br label %227

151:                                              ; preds = %105
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i64 %155
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ugt i64 %159, 8
  br i1 %160, label %161, label %171

161:                                              ; preds = %151
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i64 %164
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @deb_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %12, align 4
  br label %227

171:                                              ; preds = %151
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i64 %175
  %177 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %180 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i64 %185
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @memcpy(i32* %178, i32* %181, i32 %188)
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %191, i64 %194
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 0, i32 1
  store i32 %190, i32* %196, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %221

199:                                              ; preds = %94, %72
  %200 = load i32, i32* @REQUEST_I2C_WRITE, align 4
  %201 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %202 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %200, i32* %204, align 4
  %205 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %206 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  %207 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %209, i64 %211
  %213 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 2
  %216 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %205, i32* %208, i32 %215)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %199
  br label %227

220:                                              ; preds = %199
  br label %221

221:                                              ; preds = %220, %171
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %38

225:                                              ; preds = %38
  %226 = load i32, i32* %10, align 4
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %225, %219, %161, %141, %62
  %228 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %229 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %228, i32 0, i32 1
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %232 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %231, i32 0, i32 0
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %227, %30, %22
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dib0700_ctrl_rd(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
