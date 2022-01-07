; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_pctv_461e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_pctv_461e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, %struct.i2c_adapter*, %struct.em28xx_dvb* }
%struct.i2c_adapter = type { i32 }
%struct.em28xx_dvb = type { i8*, i8*, i8*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.m88ds3103_platform_data = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i32 }
%struct.ts2020_config = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i32 }
%struct.a8293_platform_data = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i32 }

@M88DS3103_TS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"m88ds3103\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ts2022\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"a8293\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28178_dvb_init_pctv_461e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28178_dvb_init_pctv_461e(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_dvb*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.m88ds3103_platform_data, align 8
  %7 = alloca %struct.ts2020_config, align 8
  %8 = alloca %struct.a8293_platform_data, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 2
  %11 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %10, align 8
  store %struct.em28xx_dvb* %11, %struct.em28xx_dvb** %4, align 8
  %12 = bitcast %struct.m88ds3103_platform_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 64, i1 false)
  %13 = bitcast %struct.ts2020_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 64, i1 false)
  %14 = bitcast %struct.a8293_platform_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 64, i1 false)
  %15 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 0
  store i32 27000000, i32* %15, align 8
  %16 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 1
  store i32 33, i32* %16, align 4
  %17 = load i32, i32* @M88DS3103_TS_PARALLEL, align 4
  %18 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 9
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 2
  store i32 16000, i32* %19, align 8
  %20 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 3
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 4
  store i32 153, i32* %21, align 8
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 1
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %23, align 8
  %25 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i64 %27
  %29 = bitcast %struct.m88ds3103_platform_data* %6 to %struct.ts2020_config*
  %30 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* null, %struct.i2c_adapter* %28, i32 104, %struct.ts2020_config* %29)
  %31 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %32 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %34 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %128

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 8
  %42 = load %struct.TYPE_6__* (i8*)*, %struct.TYPE_6__* (i8*)** %41, align 8
  %43 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %44 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call %struct.TYPE_6__* %42(i8* %45)
  %47 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %48 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %50, align 8
  %51 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %6, i32 0, i32 7
  %52 = load %struct.i2c_adapter* (i8*)*, %struct.i2c_adapter* (i8*)** %51, align 8
  %53 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %54 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call %struct.i2c_adapter* %52(i8* %55)
  store %struct.i2c_adapter* %56, %struct.i2c_adapter** %5, align 8
  %57 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %58 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %7, i32 0, i32 6
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %64 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.i2c_adapter* %63, i32 96, %struct.ts2020_config* %7)
  %65 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %66 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %68 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %40
  %72 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %73 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @dvb_module_release(i8* %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %128

78:                                               ; preds = %40
  %79 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %80 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %89 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %87, i32* %94, align 4
  %95 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %96 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.a8293_platform_data, %struct.a8293_platform_data* %8, i32 0, i32 5
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %100, align 8
  %101 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %102 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %101, i32 0, i32 1
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %102, align 8
  %104 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %105 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i64 %106
  %108 = bitcast %struct.a8293_platform_data* %8 to %struct.ts2020_config*
  %109 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* null, %struct.i2c_adapter* %107, i32 8, %struct.ts2020_config* %108)
  %110 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %111 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %113 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %78
  %117 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %118 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @dvb_module_release(i8* %119)
  %121 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %122 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @dvb_module_release(i8* %123)
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %128

127:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %116, %71, %37
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dvb_module_probe(i8*, i8*, %struct.i2c_adapter*, i32, %struct.ts2020_config*) #2

declare dso_local i32 @dvb_module_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
