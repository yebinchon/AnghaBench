; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_NO_RD_ACK = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@M9206_I2C = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @m920x_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.dvb_usb_device* %15, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %216

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %206, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %209

28:                                               ; preds = %24
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %36 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @I2C_M_TEN, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %34, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %28
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i64 %45
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42, %28
  %51 = load i32, i32* @ENOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %211

53:                                               ; preds = %42
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I2C_M_NOSTART, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %53
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @M9206_I2C, align 4
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 1
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i64 %77
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @I2C_M_RD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = or i32 %74, %85
  %87 = call i32 @m920x_write(i32 %66, i32 %67, i32 %86, i32 128)
  store i32 %87, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %63
  br label %211

90:                                               ; preds = %63
  br label %91

91:                                               ; preds = %90, %53
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i64 %94
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @I2C_M_RD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %149, %101
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i64 %106
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %103, %109
  br i1 %110, label %111, label %152

111:                                              ; preds = %102
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i64 %121
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %118, %124
  br label %126

126:                                              ; preds = %116, %111
  %127 = phi i1 [ false, %111 ], [ %125, %116 ]
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 64, i32 1
  store i32 %129, i32* %12, align 4
  %130 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %131 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @M9206_I2C, align 4
  %134 = load i32, i32* %12, align 4
  %135 = or i32 32, %134
  %136 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i64 %138
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @m920x_read(i32 %132, i32 %133, i32 0, i32 %135, i32* %144, i32 1)
  store i32 %145, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %126
  br label %211

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %102

152:                                              ; preds = %102
  br label %205

153:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %201, %153
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i64 %158
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %155, %161
  br i1 %162, label %163, label %204

163:                                              ; preds = %154
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  %171 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i64 %173
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %170, %176
  br label %178

178:                                              ; preds = %168, %163
  %179 = phi i1 [ false, %163 ], [ %177, %168 ]
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 64, i32 0
  store i32 %181, i32* %13, align 4
  %182 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %183 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @M9206_I2C, align 4
  %186 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %186, i64 %188
  %190 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @m920x_write(i32 %184, i32 %185, i32 %195, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %178
  br label %211

200:                                              ; preds = %178
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %154

204:                                              ; preds = %154
  br label %205

205:                                              ; preds = %204, %152
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %24

209:                                              ; preds = %24
  %210 = load i32, i32* %7, align 4
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %209, %199, %147, %89, %50
  %212 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %213 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %212, i32 0, i32 0
  %214 = call i32 @mutex_unlock(i32* %213)
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %211, %20
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @m920x_write(i32, i32, i32, i32) #1

declare dso_local i32 @m920x_read(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
