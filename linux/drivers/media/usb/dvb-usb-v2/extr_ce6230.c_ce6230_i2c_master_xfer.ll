; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_ce6230.c_ce6230_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_ce6230.c_ce6230_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }
%struct.dvb_usb_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_req = type { i32, i32, i32*, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ce6230_zl10353_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DEMOD_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: I2C read not implemented\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@DEMOD_WRITE = common dso_local global i32 0, align 4
@I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ce6230_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce6230_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_req, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %206

19:                                               ; preds = %3
  %20 = call i32 @memset(%struct.usb_req* %11, i32 0, i32 32)
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = call i64 @mutex_lock_interruptible(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %206

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %193, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %194

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %33
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I2C_M_RD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %38
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %52
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ce6230_zl10353_config, i32 0, i32 0), align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %49
  %59 = load i32, i32* @DEMOD_READ, align 4
  %60 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 4
  store i32 %59, i32* %60, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 3
  store i64 %84, i64* %85, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %89
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 2
  store i32* %93, i32** %94, align 8
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %96 = call i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %95, %struct.usb_req* %11)
  store i32 %96, i32* %9, align 4
  br label %106

97:                                               ; preds = %49
  %98 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %99 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* @KBUILD_MODNAME, align 4
  %103 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %97, %58
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %10, align 4
  br label %189

109:                                              ; preds = %38, %33
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 %112
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ce6230_zl10353_config, i32 0, i32 0), align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %156

118:                                              ; preds = %109
  %119 = load i32, i32* @DEMOD_WRITE, align 4
  %120 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 4
  store i32 %119, i32* %120, align 8
  %121 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %121, i64 %123
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 1
  %128 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i64 %131
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 1
  store i32 %136, i32* %137, align 4
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i64 %140
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  %145 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 3
  store i64 %144, i64* %145, align 8
  %146 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %146, i64 %148
  %150 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 2
  store i32* %152, i32** %153, align 8
  %154 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %155 = call i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %154, %struct.usb_req* %11)
  store i32 %155, i32* %9, align 4
  br label %186

156:                                              ; preds = %109
  %157 = load i32, i32* @I2C_WRITE, align 4
  %158 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 4
  store i32 %157, i32* %158, align 8
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i64 %161
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 1
  %166 = add nsw i32 8192, %165
  %167 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  %168 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %169, i64 %171
  %173 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 3
  store i64 %174, i64* %175, align 8
  %176 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %176, i64 %178
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %11, i32 0, i32 2
  store i32* %182, i32** %183, align 8
  %184 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %185 = call i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %184, %struct.usb_req* %11)
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %156, %118
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %186, %106
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %194

193:                                              ; preds = %189
  br label %29

194:                                              ; preds = %192, %29
  %195 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %196 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  br label %204

202:                                              ; preds = %194
  %203 = load i32, i32* %10, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %201, %200 ], [ %203, %202 ]
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %204, %25, %16
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @memset(%struct.usb_req*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ce6230_ctrl_msg(%struct.dvb_usb_device*, %struct.usb_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
