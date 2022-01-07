; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca506.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca506.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"webcam started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 2
  %8 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  store %struct.usb_device* %8, %struct.usb_device** %3, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = call i32 @reg_w(%struct.usb_device* %9, i32 3, i32 0, i32 4)
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = call i32 @reg_w(%struct.usb_device* %11, i32 3, i32 0, i32 3)
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = call i32 @reg_w(%struct.usb_device* %13, i32 3, i32 0, i32 4)
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = call i32 @reg_w(%struct.usb_device* %15, i32 3, i32 255, i32 3)
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = call i32 @reg_w(%struct.usb_device* %17, i32 2, i32 0, i32 0)
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = call i32 @reg_w(%struct.usb_device* %19, i32 3, i32 96, i32 0)
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = call i32 @reg_w(%struct.usb_device* %21, i32 3, i32 24, i32 1)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @spca506_Initi2c(%struct.gspca_dev* %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %25, i32 8, i32 1)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %27, i32 51, i32 3)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %29, i32 0, i32 4)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %31, i32 0, i32 5)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %33, i32 13, i32 6)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %35, i32 240, i32 7)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %37, i32 152, i32 8)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %39, i32 3, i32 9)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %41, i32 128, i32 10)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %43, i32 71, i32 11)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %45, i32 72, i32 12)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %47, i32 0, i32 13)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %49, i32 42, i32 15)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %51, i32 0, i32 16)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %53, i32 12, i32 17)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %55, i32 184, i32 18)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %57, i32 1, i32 19)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %59, i32 0, i32 20)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %61, i32 0, i32 21)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %63, i32 0, i32 22)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %65, i32 0, i32 23)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %67, i32 0, i32 24)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %69, i32 0, i32 25)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %71, i32 0, i32 26)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %73, i32 0, i32 27)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %75, i32 0, i32 28)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %77, i32 0, i32 29)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %79, i32 0, i32 30)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %81, i32 161, i32 31)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %83, i32 2, i32 64)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %85, i32 255, i32 65)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %87, i32 255, i32 66)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %89, i32 255, i32 67)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %91, i32 255, i32 68)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %93, i32 255, i32 69)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %95, i32 255, i32 70)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %97, i32 255, i32 71)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %99, i32 255, i32 72)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %102 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %101, i32 255, i32 73)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %103, i32 255, i32 74)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %105, i32 255, i32 75)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %108 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %107, i32 255, i32 76)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %109, i32 255, i32 77)
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %112 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %111, i32 255, i32 78)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %113, i32 255, i32 79)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %115, i32 255, i32 80)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %118 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %117, i32 255, i32 81)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %119, i32 255, i32 82)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %121, i32 255, i32 83)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %123, i32 255, i32 84)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %125, i32 255, i32 85)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %128 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %127, i32 255, i32 86)
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %130 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %129, i32 255, i32 87)
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %132 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %131, i32 0, i32 88)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %133, i32 84, i32 89)
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %136 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %135, i32 7, i32 90)
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %138 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %137, i32 131, i32 91)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %139, i32 0, i32 92)
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %141, i32 0, i32 93)
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %144 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %143, i32 0, i32 94)
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %146 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %145, i32 0, i32 95)
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %148 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %147, i32 0, i32 96)
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %149, i32 5, i32 97)
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %151, i32 159, i32 98)
  %153 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %154 = call i32 @reg_w(%struct.usb_device* %153, i32 5, i32 0, i32 3)
  %155 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %156 = call i32 @reg_w(%struct.usb_device* %155, i32 5, i32 0, i32 4)
  %157 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %158 = call i32 @reg_w(%struct.usb_device* %157, i32 3, i32 16, i32 1)
  %159 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %160 = call i32 @reg_w(%struct.usb_device* %159, i32 3, i32 120, i32 0)
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %162 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %185 [
    i32 0, label %173
    i32 1, label %176
    i32 2, label %179
    i32 4, label %182
  ]

173:                                              ; preds = %1
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %175 = call i32 @spca506_Setsize(%struct.gspca_dev* %174, i32 0, i32 16, i32 16)
  br label %188

176:                                              ; preds = %1
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %178 = call i32 @spca506_Setsize(%struct.gspca_dev* %177, i32 1, i32 26, i32 26)
  br label %188

179:                                              ; preds = %1
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = call i32 @spca506_Setsize(%struct.gspca_dev* %180, i32 2, i32 28, i32 28)
  br label %188

182:                                              ; preds = %1
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %184 = call i32 @spca506_Setsize(%struct.gspca_dev* %183, i32 4, i32 52, i32 52)
  br label %188

185:                                              ; preds = %1
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = call i32 @spca506_Setsize(%struct.gspca_dev* %186, i32 5, i32 64, i32 64)
  br label %188

188:                                              ; preds = %185, %182, %179, %176, %173
  %189 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %190 = call i32 @reg_w(%struct.usb_device* %189, i32 2, i32 1, i32 0)
  %191 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %192 = call i32 @reg_w(%struct.usb_device* %191, i32 3, i32 18, i32 0)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = call i32 @reg_r(%struct.gspca_dev* %193, i32 4, i32 1, i32 2)
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %196 = load i32, i32* @D_STREAM, align 4
  %197 = call i32 @gspca_dbg(%struct.gspca_dev* %195, i32 %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %199 = call i32 @spca506_GetNormeInput(%struct.gspca_dev* %198, i32* %4, i32* %5)
  %200 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @spca506_SetNormeInput(%struct.gspca_dev* %200, i32 %201, i32 %202)
  ret i32 0
}

declare dso_local i32 @reg_w(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @spca506_Initi2c(%struct.gspca_dev*) #1

declare dso_local i32 @spca506_WriteI2c(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @spca506_Setsize(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @spca506_GetNormeInput(%struct.gspca_dev*, i32*, i32*) #1

declare dso_local i32 @spca506_SetNormeInput(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
