; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_disable_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_disable_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32, %struct.vfe_output }
%struct.vfe_output = type { i32, i32, i32, i32*, i32, i32 }
%struct.vfe_device = type { %struct.TYPE_2__*, i32, %struct.vfe_hw_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.vfe_hw_ops = type { i32 (%struct.vfe_device.0*, i32)*, i32 (%struct.vfe_device.1*, i32)*, i32 (%struct.vfe_device.2*, %struct.vfe_output*, i32)*, i32 (%struct.vfe_device.3*, %struct.vfe_line*, i32)*, i32 (%struct.vfe_device.4*, i32)*, i32 (%struct.vfe_device.5*, i32, i32, i32)*, i32 (%struct.vfe_device.6*, i32, i32)*, i32 (%struct.vfe_device.7*, i32, i32*, i32, i32)*, i32 (%struct.vfe_device.8*, i32, i32, i32)*, i32 (%struct.vfe_device.9*, i32, i32)*, i32 (%struct.vfe_device.10*, i32, i32)*, i32 (%struct.vfe_device.11*, i32)*, i32 (%struct.vfe_device.12*, i32, i32)* }
%struct.vfe_device.0 = type opaque
%struct.vfe_device.1 = type opaque
%struct.vfe_device.2 = type opaque
%struct.vfe_device.3 = type opaque
%struct.vfe_device.4 = type opaque
%struct.vfe_device.5 = type opaque
%struct.vfe_device.6 = type opaque
%struct.vfe_device.7 = type opaque
%struct.vfe_device.8 = type opaque
%struct.vfe_device.9 = type opaque
%struct.vfe_device.10 = type opaque
%struct.vfe_device.11 = type opaque
%struct.vfe_device.12 = type opaque

@VFE_NEXT_SOF_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"VFE sof timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"VFE reg update timeout\0A\00", align 1
@VFE_LINE_PIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*)* @vfe_disable_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_disable_output(%struct.vfe_line* %0) #0 {
  %2 = alloca %struct.vfe_line*, align 8
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_output*, align 8
  %5 = alloca %struct.vfe_hw_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vfe_line* %0, %struct.vfe_line** %2, align 8
  %9 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %10 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %9)
  store %struct.vfe_device* %10, %struct.vfe_device** %3, align 8
  %11 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %11, i32 0, i32 1
  store %struct.vfe_output* %12, %struct.vfe_output** %4, align 8
  %13 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %14 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %13, i32 0, i32 2
  %15 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %14, align 8
  store %struct.vfe_hw_ops* %15, %struct.vfe_hw_ops** %5, align 8
  %16 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %17 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %21 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %23 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %22, i32 0, i32 1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %27 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %26, i32 0, i32 5
  %28 = load i32, i32* @VFE_NEXT_SOF_MS, align 4
  %29 = call i32 @msecs_to_jiffies(i32 %28)
  %30 = call i64 @wait_for_completion_timeout(i32* %27, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %1
  %34 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %35 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %1
  %41 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %42 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %41, i32 0, i32 1
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %65, %40
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %48 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %53 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %52, i32 0, i32 12
  %54 = load i32 (%struct.vfe_device.12*, i32, i32)*, i32 (%struct.vfe_device.12*, i32, i32)** %53, align 8
  %55 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %56 = bitcast %struct.vfe_device* %55 to %struct.vfe_device.12*
  %57 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %58 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %54(%struct.vfe_device.12* %56, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %45

68:                                               ; preds = %45
  %69 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %70 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %69, i32 0, i32 11
  %71 = load i32 (%struct.vfe_device.11*, i32)*, i32 (%struct.vfe_device.11*, i32)** %70, align 8
  %72 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %73 = bitcast %struct.vfe_device* %72 to %struct.vfe_device.11*
  %74 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %75 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %71(%struct.vfe_device.11* %73, i32 %76)
  %78 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %79 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %81 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %80, i32 0, i32 1
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %85 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %84, i32 0, i32 4
  %86 = load i32, i32* @VFE_NEXT_SOF_MS, align 4
  %87 = call i32 @msecs_to_jiffies(i32 %86)
  %88 = call i64 @wait_for_completion_timeout(i32* %85, i32 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %68
  %92 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %93 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %91, %68
  %99 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %100 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %99, i32 0, i32 1
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %104 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @VFE_LINE_PIX, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %163

108:                                              ; preds = %98
  %109 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %110 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %109, i32 0, i32 10
  %111 = load i32 (%struct.vfe_device.10*, i32, i32)*, i32 (%struct.vfe_device.10*, i32, i32)** %110, align 8
  %112 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %113 = bitcast %struct.vfe_device* %112 to %struct.vfe_device.10*
  %114 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %115 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 %111(%struct.vfe_device.10* %113, i32 %118, i32 0)
  %120 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %121 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %120, i32 0, i32 9
  %122 = load i32 (%struct.vfe_device.9*, i32, i32)*, i32 (%struct.vfe_device.9*, i32, i32)** %121, align 8
  %123 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %124 = bitcast %struct.vfe_device* %123 to %struct.vfe_device.9*
  %125 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %126 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %131 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %122(%struct.vfe_device.9* %124, i32 %129, i32 %132)
  %134 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %135 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %134, i32 0, i32 8
  %136 = load i32 (%struct.vfe_device.8*, i32, i32, i32)*, i32 (%struct.vfe_device.8*, i32, i32, i32)** %135, align 8
  %137 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %138 = bitcast %struct.vfe_device* %137 to %struct.vfe_device.8*
  %139 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %140 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %145 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %136(%struct.vfe_device.8* %138, i32 %143, i32 %146, i32 0)
  %148 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %149 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %148, i32 0, i32 6
  %150 = load i32 (%struct.vfe_device.6*, i32, i32)*, i32 (%struct.vfe_device.6*, i32, i32)** %149, align 8
  %151 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %152 = bitcast %struct.vfe_device* %151 to %struct.vfe_device.6*
  %153 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %154 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 %150(%struct.vfe_device.6* %152, i32 %157, i32 0)
  %159 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %160 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %159, i32 0, i32 1
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  br label %252

163:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %198, %163
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %167 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ult i32 %165, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %164
  %171 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %172 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %171, i32 0, i32 7
  %173 = load i32 (%struct.vfe_device.7*, i32, i32*, i32, i32)*, i32 (%struct.vfe_device.7*, i32, i32*, i32, i32)** %172, align 8
  %174 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %175 = bitcast %struct.vfe_device* %174 to %struct.vfe_device.7*
  %176 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %177 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 %173(%struct.vfe_device.7* %175, i32 %182, i32* null, i32 %183, i32 0)
  %185 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %186 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %185, i32 0, i32 6
  %187 = load i32 (%struct.vfe_device.6*, i32, i32)*, i32 (%struct.vfe_device.6*, i32, i32)** %186, align 8
  %188 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %189 = bitcast %struct.vfe_device* %188 to %struct.vfe_device.6*
  %190 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %191 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 %187(%struct.vfe_device.6* %189, i32 %196, i32 0)
  br label %198

198:                                              ; preds = %170
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %164

201:                                              ; preds = %164
  %202 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %203 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %202, i32 0, i32 5
  %204 = load i32 (%struct.vfe_device.5*, i32, i32, i32)*, i32 (%struct.vfe_device.5*, i32, i32, i32)** %203, align 8
  %205 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %206 = bitcast %struct.vfe_device* %205 to %struct.vfe_device.5*
  %207 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %208 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 %204(%struct.vfe_device.5* %206, i32 0, i32 %209, i32 0)
  %211 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %212 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %211, i32 0, i32 4
  %213 = load i32 (%struct.vfe_device.4*, i32)*, i32 (%struct.vfe_device.4*, i32)** %212, align 8
  %214 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %215 = bitcast %struct.vfe_device* %214 to %struct.vfe_device.4*
  %216 = call i32 %213(%struct.vfe_device.4* %215, i32 0)
  %217 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %218 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %217, i32 0, i32 3
  %219 = load i32 (%struct.vfe_device.3*, %struct.vfe_line*, i32)*, i32 (%struct.vfe_device.3*, %struct.vfe_line*, i32)** %218, align 8
  %220 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %221 = bitcast %struct.vfe_device* %220 to %struct.vfe_device.3*
  %222 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %223 = call i32 %219(%struct.vfe_device.3* %221, %struct.vfe_line* %222, i32 0)
  %224 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %225 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %224, i32 0, i32 2
  %226 = load i32 (%struct.vfe_device.2*, %struct.vfe_output*, i32)*, i32 (%struct.vfe_device.2*, %struct.vfe_output*, i32)** %225, align 8
  %227 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %228 = bitcast %struct.vfe_device* %227 to %struct.vfe_device.2*
  %229 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %230 = call i32 %226(%struct.vfe_device.2* %228, %struct.vfe_output* %229, i32 0)
  %231 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %232 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %231, i32 0, i32 1
  %233 = load i32 (%struct.vfe_device.1*, i32)*, i32 (%struct.vfe_device.1*, i32)** %232, align 8
  %234 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %235 = bitcast %struct.vfe_device* %234 to %struct.vfe_device.1*
  %236 = call i32 %233(%struct.vfe_device.1* %235, i32 0)
  %237 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %238 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %237, i32 0, i32 1
  %239 = load i64, i64* %6, align 8
  %240 = call i32 @spin_unlock_irqrestore(i32* %238, i64 %239)
  %241 = load %struct.vfe_hw_ops*, %struct.vfe_hw_ops** %5, align 8
  %242 = getelementptr inbounds %struct.vfe_hw_ops, %struct.vfe_hw_ops* %241, i32 0, i32 0
  %243 = load i32 (%struct.vfe_device.0*, i32)*, i32 (%struct.vfe_device.0*, i32)** %242, align 8
  %244 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %245 = bitcast %struct.vfe_device* %244 to %struct.vfe_device.0*
  %246 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %247 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %246, i32 0, i32 0
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 %243(%struct.vfe_device.0* %245, i32 %250)
  br label %252

252:                                              ; preds = %201, %108
  ret i32 0
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
