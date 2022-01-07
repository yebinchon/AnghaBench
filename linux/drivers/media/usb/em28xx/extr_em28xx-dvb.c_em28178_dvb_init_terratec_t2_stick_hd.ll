; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_terratec_t2_stick_hd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_terratec_t2_stick_hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, %struct.i2c_adapter*, %struct.em28xx_dvb* }
%struct.i2c_adapter = type { i32 }
%struct.em28xx_dvb = type { i8*, i8*, i32** }
%struct.si2168_config = type { i32, i64, i32*, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i64, i32*, i32, %struct.i2c_adapter** }

@SI2168_TS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"si2146\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28178_dvb_init_terratec_t2_stick_hd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28178_dvb_init_terratec_t2_stick_hd(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_dvb*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.si2168_config, align 8
  %7 = alloca %struct.si2157_config, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 3
  %10 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %9, align 8
  store %struct.em28xx_dvb* %10, %struct.em28xx_dvb** %4, align 8
  %11 = bitcast %struct.si2168_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = bitcast %struct.si2157_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 4
  store %struct.i2c_adapter** %5, %struct.i2c_adapter*** %13, align 8
  %14 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = bitcast i32** %17 to i32*
  %19 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 2
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* @SI2168_TS_PARALLEL, align 4
  %21 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 2
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %23, align 8
  %25 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i64 %27
  %29 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* null, %struct.i2c_adapter* %28, i32 100, %struct.si2168_config* %6)
  %30 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %31 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %33 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %66

39:                                               ; preds = %1
  %40 = bitcast %struct.si2157_config* %7 to %struct.si2168_config*
  %41 = call i32 @memset(%struct.si2168_config* %40, i32 0, i32 40)
  %42 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %43 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %7, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %7, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %50 = bitcast %struct.si2157_config* %7 to %struct.si2168_config*
  %51 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.i2c_adapter* %49, i32 96, %struct.si2168_config* %50)
  %52 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %53 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %55 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %39
  %59 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %60 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @dvb_module_release(i8* %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %58, %36
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dvb_module_probe(i8*, i8*, %struct.i2c_adapter*, i32, %struct.si2168_config*) #2

declare dso_local i32 @memset(%struct.si2168_config*, i32, i32) #2

declare dso_local i32 @dvb_module_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
