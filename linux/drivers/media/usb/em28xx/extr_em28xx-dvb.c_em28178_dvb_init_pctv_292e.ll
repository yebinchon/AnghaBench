; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_pctv_292e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_pctv_292e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, %struct.i2c_adapter*, %struct.em28xx_dvb* }
%struct.i2c_adapter = type { i32 }
%struct.em28xx_dvb = type { %struct.TYPE_4__**, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.si2168_config = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.i2c_adapter** }

@SI2168_TS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@em28xx_pctv_292e_set_lna = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28178_dvb_init_pctv_292e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28178_dvb_init_pctv_292e(%struct.em28xx* %0) #0 {
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
  %13 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 5
  store %struct.i2c_adapter** %5, %struct.i2c_adapter*** %13, align 8
  %14 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %15 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 0
  %18 = bitcast %struct.TYPE_4__** %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 3
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %19, align 8
  %20 = load i32, i32* @SI2168_TS_PARALLEL, align 4
  %21 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %6, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 2
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %24, align 8
  %26 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i64 %28
  %30 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %29, i32 100, %struct.si2168_config* %6)
  %31 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %32 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %34 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %1
  %41 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %42 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %7, i32 0, i32 3
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %46, align 8
  %47 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %7, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %49 = bitcast %struct.si2157_config* %7 to %struct.si2168_config*
  %50 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.i2c_adapter* %48, i32 96, %struct.si2168_config* %49)
  %51 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %52 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %54 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %40
  %58 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %59 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @dvb_module_release(i8* %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %73

64:                                               ; preds = %40
  %65 = load i32, i32* @em28xx_pctv_292e_set_lna, align 4
  %66 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %67 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %64, %57, %37
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i32, %struct.si2168_config*) #2

declare dso_local i32 @dvb_module_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
