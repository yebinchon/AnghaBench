; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.em28xx_i2c_bus* }
%struct.em28xx_i2c_bus = type { i32, i64, %struct.em28xx* }
%struct.em28xx = type { i32, i32, i64 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EM28XX_I2C_ALGO_EM28XX = common dso_local global i64 0, align 8
@EM2874_I2C_SECONDARY_BUS_SELECT = common dso_local global i64 0, align 8
@EM28XX_R06_I2C_CLK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s %s addr=%02x len=%d: %*ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nonstop\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s %s addr=%02x len=%d: %sERROR: %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"no device \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @em28xx_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.em28xx_i2c_bus*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 0
  %17 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %16, align 8
  store %struct.em28xx_i2c_bus* %17, %struct.em28xx_i2c_bus** %8, align 8
  %18 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %8, align 8
  %19 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %18, i32 0, i32 2
  %20 = load %struct.em28xx*, %struct.em28xx** %19, align 8
  store %struct.em28xx* %20, %struct.em28xx** %9, align 8
  %21 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %8, align 8
  %22 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %215

31:                                               ; preds = %3
  %32 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 1
  %34 = call i32 @rt_mutex_trylock(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %215

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %42 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %8, align 8
  %47 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EM28XX_I2C_ALGO_EM28XX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* @EM2874_I2C_SECONDARY_BUS_SELECT, align 8
  store i64 %55, i64* %14, align 8
  br label %57

56:                                               ; preds = %51
  store i64 0, i64* %14, align 8
  br label %57

57:                                               ; preds = %56, %54
  %58 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %59 = load i32, i32* @EM28XX_R06_I2C_CLK, align 4
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @EM2874_I2C_SECONDARY_BUS_SELECT, align 8
  %62 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %58, i32 %59, i64 %60, i64 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %45, %39
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %170, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %173

71:                                               ; preds = %67
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %71
  %87 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @i2c_check_for_device(%struct.em28xx_i2c_bus* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @ENXIO, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %86
  br label %128

98:                                               ; preds = %71
  %99 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i64 %101
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @I2C_M_RD, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %8, align 8
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i64 %112
  %114 = call i32 @i2c_recv_bytes(%struct.em28xx_i2c_bus* %109, %struct.i2c_msg* byval(%struct.i2c_msg) align 8 %113)
  store i32 %114, i32* %12, align 4
  br label %127

115:                                              ; preds = %98
  %116 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %8, align 8
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @i2c_send_bytes(%struct.em28xx_i2c_bus* %116, %struct.i2c_msg* byval(%struct.i2c_msg) align 8 %120, i32 %125)
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %115, %108
  br label %128

128:                                              ; preds = %127, %97
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %178

132:                                              ; preds = %128
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i64 %135
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @I2C_M_RD, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp eq i32 %144, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i64 %153
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i64 %159
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i64 %165
  %167 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %143, i8* %149, i32 %150, i8* %156, i8* %162, i32 %168)
  br label %170

170:                                              ; preds = %132
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %67

173:                                              ; preds = %67
  %174 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %175 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %174, i32 0, i32 1
  %176 = call i32 @rt_mutex_unlock(i32* %175)
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %4, align 4
  br label %215

178:                                              ; preds = %131
  %179 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i64 %181
  %183 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @I2C_M_RD, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %191, 1
  %193 = icmp eq i32 %190, %192
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %197, i64 %199
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  %206 = icmp eq i32 %203, %205
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %189, i8* %195, i32 %196, i8* %202, i8* %208, i32 %209)
  %211 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %212 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %211, i32 0, i32 1
  %213 = call i32 @rt_mutex_unlock(i32* %212)
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %178, %173, %36, %28
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @rt_mutex_trylock(i32*) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i64, i64) #1

declare dso_local i32 @i2c_check_for_device(%struct.em28xx_i2c_bus*, i32) #1

declare dso_local i32 @i2c_recv_bytes(%struct.em28xx_i2c_bus*, %struct.i2c_msg* byval(%struct.i2c_msg) align 8) #1

declare dso_local i32 @i2c_send_bytes(%struct.em28xx_i2c_bus*, %struct.i2c_msg* byval(%struct.i2c_msg) align 8, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i8*, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @rt_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
