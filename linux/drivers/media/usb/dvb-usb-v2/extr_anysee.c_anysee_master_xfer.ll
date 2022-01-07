; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dvb_usb_device = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CMD_I2C_READ = common dso_local global i32 0, align 4
@CMD_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @anysee_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [52 x i32], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %200

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %184, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %188

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %126

32:                                               ; preds = %27
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 %36
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %126

43:                                               ; preds = %32
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 %46
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %55
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 60
  br i1 %59, label %60, label %63

60:                                               ; preds = %51, %43
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %188

63:                                               ; preds = %51
  %64 = load i32, i32* @CMD_I2C_READ, align 4
  %65 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 %68
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 1
  %73 = or i32 %72, 1
  %74 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i64 %77
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 2
  store i32 %82, i32* %83, align 8
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 %86
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 3
  store i32 %91, i32* %92, align 4
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i64 %95
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 4
  store i32 %99, i32* %100, align 16
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i64 %104
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 5
  store i32 %107, i32* %108, align 4
  %109 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %110 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 0
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i64 %114
  %116 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i64 %121
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %109, i32* %110, i32 6, i32* %117, i32 %124)
  store i32 %125, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %180

126:                                              ; preds = %32, %27
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i64 %129
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 48
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* @EOPNOTSUPP, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %9, align 4
  br label %188

137:                                              ; preds = %126
  %138 = load i32, i32* @CMD_I2C_WRITE, align 4
  %139 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 0
  store i32 %138, i32* %139, align 16
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i64 %142
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 1
  %147 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i64 %150
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 2
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 3
  store i32 1, i32* %155, align 4
  %156 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 4
  %157 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i64 %159
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i64 %165
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @memcpy(i32* %156, i32* %162, i32 %168)
  %170 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %171 = getelementptr inbounds [52 x i32], [52 x i32]* %12, i64 0, i64 0
  %172 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i64 %174
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 4, %177
  %179 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %170, i32* %171, i32 %178, i32* null, i32 0)
  store i32 %179, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %180

180:                                              ; preds = %137, %63
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %23

188:                                              ; preds = %183, %134, %60, %23
  %189 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %190 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* %9, align 4
  br label %198

196:                                              ; preds = %188
  %197 = load i32, i32* %11, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %198, %19
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @anysee_ctrl_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
