; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { i32, i32, %struct.cx231xx* }
%struct.cx231xx = type { i32, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32*, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@TUNER_XC5000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GPIO WRITE: addr 0x%x, len %d, saddr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @cx231xx_i2c_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_i2c_send_bytes(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.cx231xx_i2c*, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %17, align 8
  store %struct.cx231xx_i2c* %18, %struct.cx231xx_i2c** %6, align 8
  %19 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %20 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %19, i32 0, i32 2
  %21 = load %struct.cx231xx*, %struct.cx231xx** %20, align 8
  store %struct.cx231xx* %21, %struct.cx231xx** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %23 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = load i32, i32* @TUNER_XC5000, align 4
  %26 = call i64 @is_tuner(%struct.cx231xx* %22, %struct.cx231xx_i2c* %23, %struct.i2c_msg* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %182

28:                                               ; preds = %2
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %214

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %108

38:                                               ; preds = %35
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %49, %54
  store i32 %55, i32* %14, align 4
  br label %68

56:                                               ; preds = %38
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %61, %56
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %14, align 4
  switch i32 %69, label %74 [
    i32 0, label %70
    i32 13, label %73
    i32 1, label %73
    i32 2, label %73
    i32 3, label %73
  ]

70:                                               ; preds = %68
  store i32 1, i32* %15, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %72 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %81

73:                                               ; preds = %68, %68, %68, %68
  store i32 1, i32* %15, align 4
  br label %81

74:                                               ; preds = %68
  %75 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %15, align 4
  br label %80

80:                                               ; preds = %79, %74
  br label %81

81:                                               ; preds = %80, %73, %70
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @dprintk1(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i32 %91)
  %93 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %94 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %93, i32 0, i32 1
  %95 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %94, align 8
  %96 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %95(%struct.cx231xx* %96, i32 %99, i32* %102, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %214

107:                                              ; preds = %81
  br label %108

108:                                              ; preds = %107, %35
  br label %109

109:                                              ; preds = %108
  store i32 1, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32* %116, i32** %13, align 8
  br label %117

117:                                              ; preds = %174, %109
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 5
  store i32 %120, i32* %121, align 4
  %122 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 4
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %129 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp sgt i32 %134, 16
  br i1 %135, label %136, label %137

136:                                              ; preds = %117
  br label %139

137:                                              ; preds = %117
  %138 = load i32, i32* %10, align 4
  br label %139

139:                                              ; preds = %137, %136
  %140 = phi i32 [ 16, %136 ], [ %138, %137 ]
  %141 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 %143, 16
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 3
  store i32* %146, i32** %147, align 8
  %148 = load i32, i32* %10, align 4
  %149 = icmp sgt i32 %148, 16
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  %152 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %153 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 0, i32 1
  %158 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %159 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %161 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %160, i32 0, i32 2
  %162 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %161, align 8
  %163 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %164 = call i32 %162(%struct.cx231xx_i2c* %163, %struct.cx231xx_i2c_xfer_data* %8)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp sge i32 %167, 16
  br i1 %168, label %169, label %172

169:                                              ; preds = %139
  %170 = load i32, i32* %10, align 4
  %171 = sub nsw i32 %170, 16
  store i32 %171, i32* %10, align 4
  br label %173

172:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %172, %169
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %117, label %177

177:                                              ; preds = %174
  %178 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %179 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %181 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %206

182:                                              ; preds = %2
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 5
  store i32 %185, i32* %186, align 4
  %187 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %188 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 4
  store i32 %189, i32* %190, align 8
  %191 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 1
  store i32 0, i32* %192, align 4
  %193 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 2
  store i32 %195, i32* %196, align 8
  %197 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %198 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 3
  store i32* %199, i32** %200, align 8
  %201 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %202 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %201, i32 0, i32 2
  %203 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %202, align 8
  %204 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %205 = call i32 %203(%struct.cx231xx_i2c* %204, %struct.cx231xx_i2c_xfer_data* %8)
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %182, %177
  %207 = load i32, i32* %9, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* %9, align 4
  br label %212

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ]
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %84, %34
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i64 @is_tuner(%struct.cx231xx*, %struct.cx231xx_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk1(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
