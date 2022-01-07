; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setgain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gspca_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32 }

@__const.setgain.i2c = private unnamed_addr constant [8 x i32] [i32 192, i32 17, i32 49, i32 0, i32 0, i32 0, i32 0, i32 23], align 16
@__const.setgain.i2c.1 = private unnamed_addr constant [8 x i32] [i32 48, i32 17, i32 2, i32 32, i32 112, i32 0, i32 0, i32 16], align 16
@__const.setgain.i2c.2 = private unnamed_addr constant [8 x i32] [i32 176, i32 97, i32 2, i32 0, i32 16, i32 0, i32 0, i32 23], align 16
@__const.setgain.i2c.3 = private unnamed_addr constant [8 x i32] [i32 160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_4__* null, align 8
@__const.setgain.i2cpgain = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 16, i32 0, i32 0, i32 0, i32 0, i32 21], align 16
@__const.setgain.i2cpcolorgain = private unnamed_addr constant [8 x i32] [i32 192, i32 64, i32 7, i32 0, i32 0, i32 0, i32 0, i32 21], align 16
@__const.setgain.i2cpdoit = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 17, i32 1, i32 0, i32 0, i32 0, i32 22], align 16
@BRIDGE_103 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca [2 x i32], align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %3, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %165 [
    i32 135, label %24
    i32 130, label %38
    i32 128, label %38
    i32 129, label %46
    i32 134, label %101
    i32 133, label %101
    i32 132, label %128
    i32 131, label %128
  ]

24:                                               ; preds = %1
  %25 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2c to i8*), i64 32, i1 false)
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 63, %26
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 63, %29
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 63, %32
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %37 = call i32 @i2c_w(%struct.gspca_dev* %35, i32* %36)
  br label %193

38:                                               ; preds = %1, %1
  %39 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2c.1 to i8*), i64 32, i1 false)
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 255, %40
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %41, i32* %42, align 16
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %45 = call i32 @i2c_w(%struct.gspca_dev* %43, i32* %44)
  br label %193

46:                                               ; preds = %1
  %47 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2c.2 to i8*), i64 32, i1 false)
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 255, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 128
  %52 = ashr i32 %51, 7
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 64
  %58 = ashr i32 %57, 5
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 32
  %64 = ashr i32 %63, 3
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 16
  %70 = ashr i32 %69, 1
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 8
  %76 = shl i32 %75, 1
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 4
  %82 = shl i32 %81, 3
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 2
  %88 = shl i32 %87, 5
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 1
  %94 = shl i32 %93, 7
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %100 = call i32 @i2c_w(%struct.gspca_dev* %98, i32* %99)
  br label %193

101:                                              ; preds = %1, %1
  %102 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %102, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2c.3 to i8*), i64 32, i1 false)
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 133
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = icmp sge i32 %108, 32
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 16
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %107, %101
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %115 = load %struct.sd*, %struct.sd** %3, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %4, align 4
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %123, i32* %124, align 4
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %127 = call i32 @i2c_w(%struct.gspca_dev* %125, i32* %126)
  br label %193

128:                                              ; preds = %1, %1
  %129 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %129, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2cpgain to i8*), i64 32, i1 false)
  %130 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %130, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2cpcolorgain to i8*), i64 32, i1 false)
  %131 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %131, i8* align 16 bitcast ([8 x i32]* @__const.setgain.i2cpdoit to i8*), i64 32, i1 false)
  %132 = load %struct.sd*, %struct.sd** %3, align 8
  %133 = getelementptr inbounds %struct.sd, %struct.sd* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 132
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 14, i32* %137, align 8
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 208, i32* %138, align 16
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 9, i32* %139, align 8
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  store i32 19, i32* %140, align 8
  br label %141

141:                                              ; preds = %136, %128
  %142 = load i32, i32* %4, align 4
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %4, align 4
  %145 = ashr i32 %144, 1
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %4, align 4
  %148 = ashr i32 %147, 1
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %148, i32* %149, align 16
  %150 = load i32, i32* %4, align 4
  %151 = ashr i32 %150, 1
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %4, align 4
  %154 = ashr i32 %153, 1
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  store i32 %154, i32* %155, align 8
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %158 = call i32 @i2c_w(%struct.gspca_dev* %156, i32* %157)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %161 = call i32 @i2c_w(%struct.gspca_dev* %159, i32* %160)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %164 = call i32 @i2c_w(%struct.gspca_dev* %162, i32* %163)
  br label %193

165:                                              ; preds = %1
  %166 = load %struct.sd*, %struct.sd** %3, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @BRIDGE_103, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %172, align 4
  %174 = getelementptr inbounds i32, i32* %172, i64 1
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %174, align 4
  %176 = getelementptr inbounds i32, i32* %174, i64 1
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %176, align 4
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %180 = call i32 @reg_w(%struct.gspca_dev* %178, i32 5, i32* %179, i32 3)
  br label %192

181:                                              ; preds = %165
  %182 = load i32, i32* %4, align 4
  %183 = shl i32 %182, 4
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %183, %184
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %4, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %187, i32* %188, align 4
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %191 = call i32 @reg_w(%struct.gspca_dev* %189, i32 16, i32* %190, i32 2)
  br label %192

192:                                              ; preds = %181, %171
  br label %193

193:                                              ; preds = %192, %141, %113, %46, %38, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
