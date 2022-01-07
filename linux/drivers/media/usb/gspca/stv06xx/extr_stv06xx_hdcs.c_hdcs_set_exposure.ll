; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.hdcs* }
%struct.hdcs = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HDCS_CLK_FREQ_MHZ = common dso_local global i32 0, align 4
@HDCS_ADC_START_SIG_DUR = common dso_local global i32 0, align 4
@HDCS20_CONTROL = common dso_local global i32 0, align 4
@HDCS_ROWEXPL = common dso_local global i32 0, align 4
@HDCS_ROWEXPH = common dso_local global i32 0, align 4
@HDCS20_SROWEXP = common dso_local global i32 0, align 4
@HDCS20_ERROR = common dso_local global i32 0, align 4
@HDCS00_CONTROL = common dso_local global i32 0, align 4
@HDCS00_SROWEXPL = common dso_local global i32 0, align 4
@HDCS00_SROWEXPH = common dso_local global i32 0, align 4
@HDCS_STATUS = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Writing exposure %d, rowexp %d, srowexp %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @hdcs_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_set_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.hdcs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [14 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = bitcast %struct.gspca_dev* %18 to %struct.sd*
  store %struct.sd* %19, %struct.sd** %6, align 8
  %20 = load %struct.sd*, %struct.sd** %6, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load %struct.hdcs*, %struct.hdcs** %21, align 8
  store %struct.hdcs* %22, %struct.hdcs** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @HDCS_CLK_FREQ_MHZ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = mul nsw i32 %25, 257
  store i32 %26, i32* %15, align 4
  %27 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %28 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %32 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* @HDCS_ADC_START_SIG_DUR, align 4
  %36 = add nsw i32 %35, 2
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %39 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %43 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %41, %47
  store i32 %48, i32* %12, align 4
  %49 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %50 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load %struct.sd*, %struct.sd** %6, align 8
  %64 = call i64 @IS_1020(%struct.sd* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %2
  %67 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %68 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %72 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  %76 = add nsw i32 %75, 13
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %76, %77
  %79 = sub nsw i32 %69, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %81 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 12
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %11, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %91 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %10, align 4
  br label %121

95:                                               ; preds = %2
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %98 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %96, %100
  %102 = sub nsw i32 %101, 6
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %9, align 4
  %105 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %106 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 5
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %11, align 4
  %114 = sdiv i32 %112, %113
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sub nsw i32 %115, %118
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %95, %66
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  br label %132

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %129, %125
  br label %132

132:                                              ; preds = %131, %124
  %133 = load %struct.sd*, %struct.sd** %6, align 8
  %134 = call i64 @IS_1020(%struct.sd* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %165

136:                                              ; preds = %132
  %137 = load i32, i32* @HDCS20_CONTROL, align 4
  %138 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  store i32 %137, i32* %138, align 16
  %139 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* @HDCS_ROWEXPL, align 4
  %141 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 2
  store i32 %140, i32* %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, 255
  %144 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 3
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* @HDCS_ROWEXPH, align 4
  %146 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 4
  store i32 %145, i32* %146, align 16
  %147 = load i32, i32* %8, align 4
  %148 = ashr i32 %147, 8
  %149 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 5
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @HDCS20_SROWEXP, align 4
  %151 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 6
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = ashr i32 %152, 2
  %154 = and i32 %153, 255
  %155 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 7
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @HDCS20_ERROR, align 4
  %157 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 8
  store i32 %156, i32* %157, align 16
  %158 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 9
  store i32 16, i32* %158, align 4
  %159 = load i32, i32* @HDCS20_CONTROL, align 4
  %160 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 10
  store i32 %159, i32* %160, align 8
  %161 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 11
  store i32 4, i32* %161, align 4
  %162 = load %struct.sd*, %struct.sd** %6, align 8
  %163 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  %164 = call i32 @stv06xx_write_sensor_bytes(%struct.sd* %162, i32* %163, i32 6)
  store i32 %164, i32* %16, align 4
  br label %203

165:                                              ; preds = %132
  %166 = load i32, i32* @HDCS00_CONTROL, align 4
  %167 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  store i32 %166, i32* %167, align 16
  %168 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %168, align 4
  %169 = load i32, i32* @HDCS_ROWEXPL, align 4
  %170 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 2
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, 255
  %173 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 3
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @HDCS_ROWEXPH, align 4
  %175 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 4
  store i32 %174, i32* %175, align 16
  %176 = load i32, i32* %8, align 4
  %177 = ashr i32 %176, 8
  %178 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 5
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @HDCS00_SROWEXPL, align 4
  %180 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 6
  store i32 %179, i32* %180, align 8
  %181 = load i32, i32* %9, align 4
  %182 = and i32 %181, 255
  %183 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 7
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* @HDCS00_SROWEXPH, align 4
  %185 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 8
  store i32 %184, i32* %185, align 16
  %186 = load i32, i32* %9, align 4
  %187 = ashr i32 %186, 8
  %188 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 9
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* @HDCS_STATUS, align 4
  %190 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 10
  store i32 %189, i32* %190, align 8
  %191 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 11
  store i32 16, i32* %191, align 4
  %192 = load i32, i32* @HDCS00_CONTROL, align 4
  %193 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 12
  store i32 %192, i32* %193, align 16
  %194 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 13
  store i32 4, i32* %194, align 4
  %195 = load %struct.sd*, %struct.sd** %6, align 8
  %196 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  %197 = call i32 @stv06xx_write_sensor_bytes(%struct.sd* %195, i32* %196, i32 7)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %165
  %201 = load i32, i32* %16, align 4
  store i32 %201, i32* %3, align 4
  br label %211

202:                                              ; preds = %165
  br label %203

203:                                              ; preds = %202, %136
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %205 = load i32, i32* @D_CONF, align 4
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @gspca_dbg(%struct.gspca_dev* %204, i32 %205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %16, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %203, %200
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i64 @IS_1020(%struct.sd*) #1

declare dso_local i32 @stv06xx_write_sensor_bytes(%struct.sd*, i32*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
