; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i32, i64, i32, i64 }

@tda18250_init.init_regs = internal constant [34 x [2 x i32]] [[2 x i32] [i32 166, i32 199], [2 x i32] [i32 165, i32 93], [2 x i32] [i32 164, i32 64], [2 x i32] [i32 163, i32 14], [2 x i32] [i32 162, i32 71], [2 x i32] [i32 161, i32 78], [2 x i32] [i32 160, i32 38], [2 x i32] [i32 159, i32 96], [2 x i32] [i32 158, i32 55], [2 x i32] [i32 157, i32 9], [2 x i32] [i32 156, i32 0], [2 x i32] [i32 155, i32 41], [2 x i32] [i32 154, i32 6], [2 x i32] [i32 153, i32 198], [2 x i32] [i32 152, i32 0], [2 x i32] [i32 151, i32 117], [2 x i32] [i32 150, i32 6], [2 x i32] [i32 149, i32 7], [2 x i32] [i32 148, i32 14], [2 x i32] [i32 147, i32 0], [2 x i32] [i32 146, i32 0], [2 x i32] [i32 145, i32 85], [2 x i32] [i32 144, i32 167], [2 x i32] [i32 143, i32 133], [2 x i32] [i32 142, i32 135], [2 x i32] [i32 141, i32 192], [2 x i32] [i32 140, i32 64], [2 x i32] [i32 139, i32 192], [2 x i32] [i32 138, i32 12], [2 x i32] [i32 137, i32 100], [2 x i32] [i32 136, i32 48], [2 x i32] [i32 135, i32 5], [2 x i32] [i32 134, i32 7], [2 x i32] [i32 133, i32 0]], align 16
@tda18250_init.xtal_regs = internal constant [133 x [5 x i32]] [[5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] [i32 117, i32 48, i32 143, i32 0, i32 30], [5 x i32] [i32 105, i32 120, i32 141, i32 128, i32 27], [5 x i32] [i32 97, i32 168, i32 236, i32 128, i32 25], [5 x i32] [i32 93, i32 192, i32 236, i32 0, i32 24], [5 x i32] [i32 62, i32 128, i32 80, i32 0, i32 32]], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TDA18250_POWER_NORMAL = common dso_local global i32 0, align 4
@R4D_XTALFLX1 = common dso_local global i32 0, align 4
@R0A_IRQ3 = common dso_local global i32 0, align 4
@TDA18250_IRQ_HW_INIT = common dso_local global i32 0, align 4
@R2A_MSM1 = common dso_local global i32 0, align 4
@R2B_MSM2 = common dso_local global i32 0, align 4
@TDA18250_IRQ_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"failed=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18250_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tda18250_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.tda18250_dev* %12, %struct.tda18250_dev** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = load i32, i32* @TDA18250_POWER_NORMAL, align 4
  %18 = call i32 @tda18250_power_control(%struct.dvb_frontend* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %156

22:                                               ; preds = %1
  %23 = call i32 @msleep(i32 20)
  %24 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %25 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %147

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ARRAY_SIZE(i32** bitcast ([34 x [2 x i32]]* @tda18250_init.init_regs to i32**))
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %36 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [34 x [2 x i32]], [34 x [2 x i32]]* @tda18250_init.init_regs, i64 0, i64 %39
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [34 x [2 x i32]], [34 x [2 x i32]]* @tda18250_init.init_regs, i64 0, i64 %44
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regmap_write(i32 %37, i32 %42, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %156

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %58 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @R4D_XTALFLX1, align 4
  %61 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %62 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [133 x [5 x i32]], [133 x [5 x i32]]* @tda18250_init.xtal_regs, i64 0, i64 %63
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %64, i64 0, i64 0
  %66 = call i32 @regmap_bulk_write(i32 %59, i32 %60, i32* %65, i32 5)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %156

70:                                               ; preds = %56
  %71 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %72 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %75 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 128
  %80 = call i32 @regmap_write_bits(i32 %73, i32 162, i32 128, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %156

84:                                               ; preds = %70
  %85 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %86 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @R0A_IRQ3, align 4
  %89 = load i32, i32* @TDA18250_IRQ_HW_INIT, align 4
  %90 = call i32 @regmap_write(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %156

94:                                               ; preds = %84
  %95 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %96 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @R2A_MSM1, align 4
  %99 = call i32 @regmap_write(i32 %97, i32 %98, i32 112)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %156

103:                                              ; preds = %94
  %104 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %105 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @R2B_MSM2, align 4
  %108 = call i32 @regmap_write(i32 %106, i32 %107, i32 1)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %156

112:                                              ; preds = %103
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %114 = load i32, i32* @TDA18250_IRQ_HW_INIT, align 4
  %115 = call i32 @tda18250_wait_for_irq(%struct.dvb_frontend* %113, i32 500, i32 10, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %156

119:                                              ; preds = %112
  %120 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %121 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @R2A_MSM1, align 4
  %124 = call i32 @regmap_write(i32 %122, i32 %123, i32 2)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %156

128:                                              ; preds = %119
  %129 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %130 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @R2B_MSM2, align 4
  %133 = call i32 @regmap_write(i32 %131, i32 %132, i32 1)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %156

137:                                              ; preds = %128
  %138 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %139 = load i32, i32* @TDA18250_IRQ_CAL, align 4
  %140 = call i32 @tda18250_wait_for_irq(%struct.dvb_frontend* %138, i32 500, i32 10, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %156

144:                                              ; preds = %137
  %145 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %146 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %28
  %148 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %149 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @regmap_write_bits(i32 %150, i32 166, i32 128, i32 0)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %156

155:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %162

156:                                              ; preds = %154, %143, %136, %127, %118, %111, %102, %93, %83, %69, %51, %21
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 0
  %159 = load i32, i32* %6, align 4
  %160 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %156, %155
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @tda18250_power_control(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @tda18250_wait_for_irq(%struct.dvb_frontend*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
