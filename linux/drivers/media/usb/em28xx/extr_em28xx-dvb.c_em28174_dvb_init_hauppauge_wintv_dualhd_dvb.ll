; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28174_dvb_init_hauppauge_wintv_dualhd_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28174_dvb_init_hauppauge_wintv_dualhd_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64, i32, %struct.i2c_adapter*, %struct.em28xx_dvb* }
%struct.i2c_adapter = type { i32 }
%struct.em28xx_dvb = type { i8*, i8*, i32** }
%struct.si2168_config = type { i32, i32, i32, i32*, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i32, i32, i32*, i32, %struct.i2c_adapter** }

@SI2168_TS_SERIAL = common dso_local global i32 0, align 4
@PRIMARY_TS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28174_dvb_init_hauppauge_wintv_dualhd_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28174_dvb_init_hauppauge_wintv_dualhd_dvb(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_dvb*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.si2168_config, align 8
  %7 = alloca %struct.si2157_config, align 8
  %8 = alloca i8, align 1
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 4
  %11 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %10, align 8
  store %struct.em28xx_dvb* %11, %struct.em28xx_dvb** %4, align 8
  %12 = bitcast %struct.si2168_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = bitcast %struct.si2157_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 5
  store %struct.i2c_adapter** %5, %struct.i2c_adapter*** %14, align 8
  %15 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %16 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %15, i32 0, i32 2
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = bitcast i32** %18 to i32*
  %20 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 3
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @SI2168_TS_SERIAL, align 4
  %22 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PRIMARY_TS, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 100, i32 103
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 3
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %33, align 8
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i64 %37
  %39 = load i8, i8* %8, align 1
  %40 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %38, i8 zeroext %39, %struct.si2168_config* %6)
  %41 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %42 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %44 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %86

50:                                               ; preds = %1
  %51 = bitcast %struct.si2157_config* %7 to %struct.si2168_config*
  %52 = call i32 @memset(%struct.si2168_config* %51, i32 0, i32 40)
  %53 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %54 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %7, i32 0, i32 3
  store i32* %57, i32** %58, align 8
  %59 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %7, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PRIMARY_TS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 96, i32 99
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %8, align 1
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %69 = load i8, i8* %8, align 1
  %70 = bitcast %struct.si2157_config* %7 to %struct.si2168_config*
  %71 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.i2c_adapter* %68, i8 zeroext %69, %struct.si2168_config* %70)
  %72 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %73 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %75 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %50
  %79 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %80 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @dvb_module_release(i8* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %78, %47
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i8 zeroext, %struct.si2168_config*) #2

declare dso_local i32 @memset(%struct.si2168_config*, i32, i32) #2

declare dso_local i32 @dvb_module_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
