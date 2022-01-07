; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_i2c_bus = type { i64, %struct.em28xx* }
%struct.em28xx = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EM28XX_I2C_ALGO_EM28XX = common dso_local global i64 0, align 8
@EM28XX_I2C_ALGO_EM2800 = common dso_local global i64 0, align 8
@EM28XX_I2C_ALGO_EM25XX_BUS_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_i2c_bus*, i64, i32, i32)* @i2c_send_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_send_bytes(%struct.em28xx_i2c_bus* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.em28xx_i2c_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %13, align 4
  %14 = bitcast %struct.i2c_msg* %5 to i8*
  %15 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  store %struct.em28xx_i2c_bus* %0, %struct.em28xx_i2c_bus** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %7, align 8
  %17 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %16, i32 0, i32 1
  %18 = load %struct.em28xx*, %struct.em28xx** %17, align 8
  store %struct.em28xx* %18, %struct.em28xx** %9, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %7, align 8
  %25 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EM28XX_I2C_ALGO_EM28XX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @em28xx_i2c_send_bytes(%struct.em28xx* %30, i32 %31, i32 %33, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  br label %68

38:                                               ; preds = %4
  %39 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %7, align 8
  %40 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EM28XX_I2C_ALGO_EM2800, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @em2800_i2c_send_bytes(%struct.em28xx* %45, i32 %46, i32 %48, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %67

52:                                               ; preds = %38
  %53 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %7, align 8
  %54 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EM28XX_I2C_ALGO_EM25XX_BUS_B, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @em25xx_bus_B_send_bytes(%struct.em28xx* %59, i32 %60, i32 %62, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %58, %52
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @em28xx_i2c_send_bytes(%struct.em28xx*, i32, i32, i32, i32) #2

declare dso_local i32 @em2800_i2c_send_bytes(%struct.em28xx*, i32, i32, i32) #2

declare dso_local i32 @em25xx_bus_B_send_bytes(%struct.em28xx*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
