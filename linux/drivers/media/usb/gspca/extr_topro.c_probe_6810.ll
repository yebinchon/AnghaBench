; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_probe_6810.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_probe_6810.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@TP6800_R18_GPIO_DATA = common dso_local global i32 0, align 4
@TP6800_R10_SIF_TYPE = common dso_local global i32 0, align 4
@TP6800_R12_SIF_ADDR_S = common dso_local global i32 0, align 4
@TP6800_R1A_SIF_TX_DATA2 = common dso_local global i32 0, align 4
@SENSOR_SOI763A = common dso_local global i32 0, align 4
@SENSOR_CX0342 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @probe_6810 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_6810(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %8 = call i32 @reg_r(%struct.gspca_dev* %6, i32 %7)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @reg_w(%struct.gspca_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 32
  %22 = call i32 @reg_w(%struct.gspca_dev* %18, i32 %19, i32 %21)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @reg_w(%struct.gspca_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = load i32, i32* @TP6800_R10_SIF_TYPE, align 4
  %29 = call i32 @reg_w(%struct.gspca_dev* %27, i32 %28, i32 4)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %32 = call i32 @reg_w(%struct.gspca_dev* %30, i32 %31, i32 33)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = load i32, i32* @TP6800_R1A_SIF_TX_DATA2, align 4
  %35 = call i32 @reg_w(%struct.gspca_dev* %33, i32 %34, i32 0)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i64 @i2c_w(%struct.gspca_dev* %36, i32 0, i32 0)
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @SENSOR_SOI763A, align 4
  store i32 %40, i32* %2, align 4
  br label %213

41:                                               ; preds = %1
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, 32
  %46 = call i32 @reg_w(%struct.gspca_dev* %42, i32 %43, i32 %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = load i32, i32* @TP6800_R10_SIF_TYPE, align 4
  %49 = call i32 @reg_w(%struct.gspca_dev* %47, i32 %48, i32 0)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %52 = call i32 @reg_w(%struct.gspca_dev* %50, i32 %51, i32 127)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = call i64 @i2c_w(%struct.gspca_dev* %53, i32 0, i32 0)
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 -2, i32* %2, align 4
  br label %213

57:                                               ; preds = %41
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, 32
  %62 = call i32 @reg_w(%struct.gspca_dev* %58, i32 %59, i32 %61)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @reg_w(%struct.gspca_dev* %63, i32 %64, i32 %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, 32
  %71 = call i32 @reg_w(%struct.gspca_dev* %67, i32 %68, i32 %70)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = load i32, i32* @TP6800_R10_SIF_TYPE, align 4
  %74 = call i32 @reg_w(%struct.gspca_dev* %72, i32 %73, i32 0)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %77 = call i32 @reg_w(%struct.gspca_dev* %75, i32 %76, i32 17)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %79 = call i32 @i2c_r(%struct.gspca_dev* %78, i32 0, i32 1)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %57
  store i32 -3, i32* %2, align 4
  br label %213

83:                                               ; preds = %57
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, 32
  %88 = call i32 @reg_w(%struct.gspca_dev* %84, i32 %85, i32 %87)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %90 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @reg_w(%struct.gspca_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, 32
  %97 = call i32 @reg_w(%struct.gspca_dev* %93, i32 %94, i32 %96)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %100 = call i32 @reg_w(%struct.gspca_dev* %98, i32 %99, i32 110)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = call i32 @i2c_r(%struct.gspca_dev* %101, i32 0, i32 1)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %83
  store i32 -4, i32* %2, align 4
  br label %213

106:                                              ; preds = %83
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %108 = call i32 @i2c_r(%struct.gspca_dev* %107, i32 1, i32 1)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 -5, i32* %2, align 4
  br label %213

112:                                              ; preds = %106
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %114 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, 32
  %117 = call i32 @reg_w(%struct.gspca_dev* %113, i32 %114, i32 %116)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %119 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @reg_w(%struct.gspca_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, 32
  %126 = call i32 @reg_w(%struct.gspca_dev* %122, i32 %123, i32 %125)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %128 = load i32, i32* @TP6800_R10_SIF_TYPE, align 4
  %129 = call i32 @reg_w(%struct.gspca_dev* %127, i32 %128, i32 4)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %132 = call i32 @reg_w(%struct.gspca_dev* %130, i32 %131, i32 93)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %134 = call i32 @i2c_r(%struct.gspca_dev* %133, i32 0, i32 2)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %112
  store i32 -6, i32* %2, align 4
  br label %213

138:                                              ; preds = %112
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %140 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %141 = load i32, i32* %4, align 4
  %142 = or i32 %141, 32
  %143 = call i32 @reg_w(%struct.gspca_dev* %139, i32 %140, i32 %142)
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %145 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @reg_w(%struct.gspca_dev* %144, i32 %145, i32 %146)
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %149 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %150 = load i32, i32* %4, align 4
  %151 = or i32 %150, 32
  %152 = call i32 @reg_w(%struct.gspca_dev* %148, i32 %149, i32 %151)
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %154 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %155 = call i32 @reg_w(%struct.gspca_dev* %153, i32 %154, i32 92)
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %157 = call i32 @i2c_r(%struct.gspca_dev* %156, i32 54, i32 2)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %138
  store i32 -7, i32* %2, align 4
  br label %213

161:                                              ; preds = %138
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %163 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @reg_w(%struct.gspca_dev* %162, i32 %163, i32 %164)
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %167 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %168 = load i32, i32* %4, align 4
  %169 = or i32 %168, 32
  %170 = call i32 @reg_w(%struct.gspca_dev* %166, i32 %167, i32 %169)
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %172 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @reg_w(%struct.gspca_dev* %171, i32 %172, i32 %173)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %176 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %177 = call i32 @reg_w(%struct.gspca_dev* %175, i32 %176, i32 97)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %179 = load i32, i32* @TP6800_R1A_SIF_TX_DATA2, align 4
  %180 = call i32 @reg_w(%struct.gspca_dev* %178, i32 %179, i32 16)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = call i64 @i2c_w(%struct.gspca_dev* %181, i32 255, i32 0)
  %183 = icmp sge i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %161
  store i32 -8, i32* %2, align 4
  br label %213

185:                                              ; preds = %161
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %187 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %188 = load i32, i32* %4, align 4
  %189 = or i32 %188, 32
  %190 = call i32 @reg_w(%struct.gspca_dev* %186, i32 %187, i32 %189)
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %192 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @reg_w(%struct.gspca_dev* %191, i32 %192, i32 %193)
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %196 = load i32, i32* @TP6800_R18_GPIO_DATA, align 4
  %197 = load i32, i32* %4, align 4
  %198 = or i32 %197, 32
  %199 = call i32 @reg_w(%struct.gspca_dev* %195, i32 %196, i32 %198)
  %200 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %201 = load i32, i32* @TP6800_R10_SIF_TYPE, align 4
  %202 = call i32 @reg_w(%struct.gspca_dev* %200, i32 %201, i32 0)
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %204 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %205 = call i32 @reg_w(%struct.gspca_dev* %203, i32 %204, i32 32)
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %207 = call i32 @i2c_r(%struct.gspca_dev* %206, i32 0, i32 1)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %185
  %211 = load i32, i32* @SENSOR_CX0342, align 4
  store i32 %211, i32* %2, align 4
  br label %213

212:                                              ; preds = %185
  store i32 -9, i32* %2, align 4
  br label %213

213:                                              ; preds = %212, %210, %184, %160, %137, %111, %105, %82, %56, %39
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i64 @i2c_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
