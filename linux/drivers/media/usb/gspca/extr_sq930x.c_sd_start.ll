; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32, i32 }

@icx098bq_start_0 = common dso_local global i32 0, align 4
@icx098bq_start_1 = common dso_local global i32 0, align 4
@icx098bq_start_2 = common dso_local global i32 0, align 4
@SQ930_GPIO_EXTRA2 = common dso_local global i32 0, align 4
@SQ930_GPIO_RSTBAR = common dso_local global i32 0, align 4
@SQ930_CTRL_CAP_STOP = common dso_local global i32 0, align 4
@lz24bp_start_0 = common dso_local global i32 0, align 4
@Creative_live_motion = common dso_local global i32 0, align 4
@lz24bp_start_1_gen = common dso_local global i32 0, align 4
@lz24bp_start_1_clm = common dso_local global i32 0, align 4
@lz24bp_start_2 = common dso_local global i32 0, align 4
@mi0360_start_0 = common dso_local global i32 0, align 4
@mi0360_init_23 = common dso_local global i32 0, align 4
@mi0360_init_24 = common dso_local global i32 0, align 4
@mi0360_init_25 = common dso_local global i32 0, align 4
@mi0360_start_1 = common dso_local global i32 0, align 4
@mi0360_start_2 = common dso_local global i32 0, align 4
@mi0360_start_3 = common dso_local global i32 0, align 4
@mi0360_start_4 = common dso_local global i32 0, align 4
@mt9v111_init_0 = common dso_local global i32 0, align 4
@mt9v111_init_1 = common dso_local global i32 0, align 4
@mt9v111_init_2 = common dso_local global i32 0, align 4
@mt9v111_start_1 = common dso_local global i32 0, align 4
@mt9v111_init_3 = common dso_local global i32 0, align 4
@mt9v111_init_4 = common dso_local global i32 0, align 4
@SENSOR_MT9V111 = common dso_local global i32 0, align 4
@SQ930_GPIO_DFL_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = call i32 @bridge_init(%struct.sd* %7)
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = call i32 @global_init(%struct.sd* %9, i32 0)
  %11 = call i32 @msleep(i32 100)
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %144 [
    i32 130, label %15
    i32 129, label %52
    i32 128, label %98
  ]

15:                                               ; preds = %1
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = load i32, i32* @icx098bq_start_0, align 4
  %18 = load i32, i32* @icx098bq_start_0, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @ucbus_write(%struct.gspca_dev* %16, i32 %17, i32 %19, i32 8)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = load i32, i32* @icx098bq_start_1, align 4
  %23 = load i32, i32* @icx098bq_start_1, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @ucbus_write(%struct.gspca_dev* %21, i32 %22, i32 %24, i32 5)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = load i32, i32* @icx098bq_start_2, align 4
  %28 = load i32, i32* @icx098bq_start_2, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @ucbus_write(%struct.gspca_dev* %26, i32 %27, i32 %29, i32 6)
  %31 = call i32 @msleep(i32 50)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @send_start(%struct.gspca_dev* %32)
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = load i32, i32* @SQ930_GPIO_EXTRA2, align 4
  %36 = load i32, i32* @SQ930_GPIO_RSTBAR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @gpio_set(%struct.sd* %34, i32 %37, i32 255)
  %39 = call i32 @msleep(i32 70)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32, i32* @SQ930_CTRL_CAP_STOP, align 4
  %42 = call i32 @reg_w(%struct.gspca_dev* %40, i32 %41, i32 0)
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = call i32 @gpio_set(%struct.sd* %43, i32 127, i32 255)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @send_start(%struct.gspca_dev* %45)
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = load i32, i32* @SQ930_GPIO_EXTRA2, align 4
  %49 = load i32, i32* @SQ930_GPIO_RSTBAR, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @gpio_set(%struct.sd* %47, i32 %50, i32 255)
  br label %183

52:                                               ; preds = %1
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load i32, i32* @lz24bp_start_0, align 4
  %55 = load i32, i32* @lz24bp_start_0, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = call i32 @ucbus_write(%struct.gspca_dev* %53, i32 %54, i32 %56, i32 8)
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @Creative_live_motion, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = load i32, i32* @lz24bp_start_1_gen, align 4
  %66 = load i32, i32* @lz24bp_start_1_gen, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = call i32 @ucbus_write(%struct.gspca_dev* %64, i32 %65, i32 %67, i32 5)
  br label %75

69:                                               ; preds = %52
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* @lz24bp_start_1_clm, align 4
  %72 = load i32, i32* @lz24bp_start_1_clm, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = call i32 @ucbus_write(%struct.gspca_dev* %70, i32 %71, i32 %73, i32 5)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32, i32* @lz24bp_start_2, align 4
  %78 = load i32, i32* @lz24bp_start_2, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = call i32 @ucbus_write(%struct.gspca_dev* %76, i32 %77, i32 %79, i32 6)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %4, align 4
  %91 = load %struct.sd*, %struct.sd** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1380, i32 784
  %96 = call i32 @lz24bp_ppl(%struct.sd* %91, i32 %95)
  %97 = call i32 @msleep(i32 10)
  br label %180

98:                                               ; preds = %1
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = load i32, i32* @mi0360_start_0, align 4
  %101 = load i32, i32* @mi0360_start_0, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = call i32 @ucbus_write(%struct.gspca_dev* %99, i32 %100, i32 %102, i32 8)
  %104 = load %struct.sd*, %struct.sd** %3, align 8
  %105 = load i32, i32* @mi0360_init_23, align 4
  %106 = load i32, i32* @mi0360_init_23, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @i2c_write(%struct.sd* %104, i32 %105, i32 %107)
  %109 = load %struct.sd*, %struct.sd** %3, align 8
  %110 = load i32, i32* @mi0360_init_24, align 4
  %111 = load i32, i32* @mi0360_init_24, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @i2c_write(%struct.sd* %109, i32 %110, i32 %112)
  %114 = load %struct.sd*, %struct.sd** %3, align 8
  %115 = load i32, i32* @mi0360_init_25, align 4
  %116 = load i32, i32* @mi0360_init_25, align 4
  %117 = call i32 @ARRAY_SIZE(i32 %116)
  %118 = call i32 @i2c_write(%struct.sd* %114, i32 %115, i32 %117)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = load i32, i32* @mi0360_start_1, align 4
  %121 = load i32, i32* @mi0360_start_1, align 4
  %122 = call i32 @ARRAY_SIZE(i32 %121)
  %123 = call i32 @ucbus_write(%struct.gspca_dev* %119, i32 %120, i32 %122, i32 5)
  %124 = load %struct.sd*, %struct.sd** %3, align 8
  %125 = load i32, i32* @mi0360_start_2, align 4
  %126 = load i32, i32* @mi0360_start_2, align 4
  %127 = call i32 @ARRAY_SIZE(i32 %126)
  %128 = call i32 @i2c_write(%struct.sd* %124, i32 %125, i32 %127)
  %129 = load %struct.sd*, %struct.sd** %3, align 8
  %130 = load i32, i32* @mi0360_start_3, align 4
  %131 = load i32, i32* @mi0360_start_3, align 4
  %132 = call i32 @ARRAY_SIZE(i32 %131)
  %133 = call i32 @i2c_write(%struct.sd* %129, i32 %130, i32 %132)
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = call i32 @send_start(%struct.gspca_dev* %134)
  %136 = call i32 @msleep(i32 60)
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %138 = call i32 @send_stop(%struct.gspca_dev* %137)
  %139 = load %struct.sd*, %struct.sd** %3, align 8
  %140 = load i32, i32* @mi0360_start_4, align 4
  %141 = load i32, i32* @mi0360_start_4, align 4
  %142 = call i32 @ARRAY_SIZE(i32 %141)
  %143 = call i32 @i2c_write(%struct.sd* %139, i32 %140, i32 %142)
  br label %180

144:                                              ; preds = %1
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %146 = load i32, i32* @mi0360_start_0, align 4
  %147 = load i32, i32* @mi0360_start_0, align 4
  %148 = call i32 @ARRAY_SIZE(i32 %147)
  %149 = call i32 @ucbus_write(%struct.gspca_dev* %145, i32 %146, i32 %148, i32 8)
  %150 = load %struct.sd*, %struct.sd** %3, align 8
  %151 = load i32, i32* @mt9v111_init_0, align 4
  %152 = load i32, i32* @mt9v111_init_0, align 4
  %153 = call i32 @ARRAY_SIZE(i32 %152)
  %154 = call i32 @i2c_write(%struct.sd* %150, i32 %151, i32 %153)
  %155 = load %struct.sd*, %struct.sd** %3, align 8
  %156 = load i32, i32* @mt9v111_init_1, align 4
  %157 = load i32, i32* @mt9v111_init_1, align 4
  %158 = call i32 @ARRAY_SIZE(i32 %157)
  %159 = call i32 @i2c_write(%struct.sd* %155, i32 %156, i32 %158)
  %160 = load %struct.sd*, %struct.sd** %3, align 8
  %161 = load i32, i32* @mt9v111_init_2, align 4
  %162 = load i32, i32* @mt9v111_init_2, align 4
  %163 = call i32 @ARRAY_SIZE(i32 %162)
  %164 = call i32 @i2c_write(%struct.sd* %160, i32 %161, i32 %163)
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = load i32, i32* @mt9v111_start_1, align 4
  %167 = load i32, i32* @mt9v111_start_1, align 4
  %168 = call i32 @ARRAY_SIZE(i32 %167)
  %169 = call i32 @ucbus_write(%struct.gspca_dev* %165, i32 %166, i32 %168, i32 5)
  %170 = load %struct.sd*, %struct.sd** %3, align 8
  %171 = load i32, i32* @mt9v111_init_3, align 4
  %172 = load i32, i32* @mt9v111_init_3, align 4
  %173 = call i32 @ARRAY_SIZE(i32 %172)
  %174 = call i32 @i2c_write(%struct.sd* %170, i32 %171, i32 %173)
  %175 = load %struct.sd*, %struct.sd** %3, align 8
  %176 = load i32, i32* @mt9v111_init_4, align 4
  %177 = load i32, i32* @mt9v111_init_4, align 4
  %178 = call i32 @ARRAY_SIZE(i32 %177)
  %179 = call i32 @i2c_write(%struct.sd* %175, i32 %176, i32 %178)
  br label %180

180:                                              ; preds = %144, %98, %75
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = call i32 @send_start(%struct.gspca_dev* %181)
  br label %183

183:                                              ; preds = %180, %15
  %184 = call i32 @msleep(i32 1000)
  %185 = load %struct.sd*, %struct.sd** %3, align 8
  %186 = getelementptr inbounds %struct.sd, %struct.sd* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @SENSOR_MT9V111, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load %struct.sd*, %struct.sd** %3, align 8
  %192 = load i32, i32* @SQ930_GPIO_DFL_LED, align 4
  %193 = load i32, i32* @SQ930_GPIO_DFL_LED, align 4
  %194 = call i32 @gpio_set(%struct.sd* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %183
  %196 = load %struct.sd*, %struct.sd** %3, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 1
  store i32 1, i32* %197, align 4
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %199 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  ret i32 %200
}

declare dso_local i32 @bridge_init(%struct.sd*) #1

declare dso_local i32 @global_init(%struct.sd*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ucbus_write(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @send_start(%struct.gspca_dev*) #1

declare dso_local i32 @gpio_set(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @lz24bp_ppl(%struct.sd*, i32) #1

declare dso_local i32 @i2c_write(%struct.sd*, i32, i32) #1

declare dso_local i32 @send_stop(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
