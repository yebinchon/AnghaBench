; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_i2c_recv_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_i2c_recv_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_i2c_bus = type { i64, %struct.em28xx* }
%struct.em28xx = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EM28XX_I2C_ALGO_EM28XX = common dso_local global i64 0, align 8
@EM28XX_I2C_ALGO_EM2800 = common dso_local global i64 0, align 8
@EM28XX_I2C_ALGO_EM25XX_BUS_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_i2c_bus*, i64, i32)* @i2c_recv_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_recv_bytes(%struct.em28xx_i2c_bus* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca %struct.em28xx_i2c_bus*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %11, align 4
  %12 = bitcast %struct.i2c_msg* %4 to i8*
  %13 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  store %struct.em28xx_i2c_bus* %0, %struct.em28xx_i2c_bus** %6, align 8
  %14 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %6, align 8
  %15 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %14, i32 0, i32 1
  %16 = load %struct.em28xx*, %struct.em28xx** %15, align 8
  store %struct.em28xx* %16, %struct.em28xx** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %6, align 8
  %23 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EM28XX_I2C_ALGO_EM28XX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @em28xx_i2c_recv_bytes(%struct.em28xx* %28, i32 %29, i32 %31, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %65

35:                                               ; preds = %3
  %36 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %6, align 8
  %37 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EM28XX_I2C_ALGO_EM2800, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @em2800_i2c_recv_bytes(%struct.em28xx* %42, i32 %43, i32 %45, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %64

49:                                               ; preds = %35
  %50 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %6, align 8
  %51 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EM28XX_I2C_ALGO_EM25XX_BUS_B, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @em25xx_bus_B_recv_bytes(%struct.em28xx* %56, i32 %57, i32 %59, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %55, %49
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @em28xx_i2c_recv_bytes(%struct.em28xx*, i32, i32, i32) #2

declare dso_local i32 @em2800_i2c_recv_bytes(%struct.em28xx*, i32, i32, i32) #2

declare dso_local i32 @em25xx_bus_B_recv_bytes(%struct.em28xx*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
