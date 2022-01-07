; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28174_dvb_init_pctv_460e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28174_dvb_init_pctv_460e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32*, %struct.em28xx_dvb* }
%struct.em28xx_dvb = type { i8*, i8*, i32* }
%struct.tda10071_platform_data = type { i32, i32, i32, i32, i32, i32 (i8*)*, i32 }
%struct.a8293_platform_data = type { i32, i32, i32, i32, i32, i32 (i8*)*, i32 }

@TDA10071_TS_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tda10071\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"tda10071_cx24118\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"a8293\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28174_dvb_init_pctv_460e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28174_dvb_init_pctv_460e(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_dvb*, align 8
  %5 = alloca %struct.tda10071_platform_data, align 8
  %6 = alloca %struct.a8293_platform_data, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %7 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 2
  %9 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %8, align 8
  store %struct.em28xx_dvb* %9, %struct.em28xx_dvb** %4, align 8
  %10 = bitcast %struct.tda10071_platform_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = bitcast %struct.a8293_platform_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %5, i32 0, i32 0
  store i32 40444000, i32* %12, align 8
  %13 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %5, i32 0, i32 1
  store i32 64, i32* %13, align 4
  %14 = load i32, i32* @TDA10071_TS_SERIAL, align 4
  %15 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %5, i32 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %5, i32 0, i32 2
  store i32 20, i32* %16, align 8
  %17 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %5, i32 0, i32 3
  store i32 20, i32* %17, align 4
  %18 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %24, i32 85, %struct.tda10071_platform_data* %5)
  %26 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %27 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %29 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %75

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %5, i32 0, i32 5
  %37 = load i32 (i8*)*, i32 (i8*)** %36, align 8
  %38 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %39 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 %37(i8* %40)
  %42 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %43 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %47 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.a8293_platform_data, %struct.a8293_platform_data* %6, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = bitcast %struct.a8293_platform_data* %6 to %struct.tda10071_platform_data*
  %60 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null, i32* %58, i32 8, %struct.tda10071_platform_data* %59)
  %61 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %62 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %64 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %35
  %68 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %69 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @dvb_module_release(i8* %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %67, %32
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dvb_module_probe(i8*, i8*, i32*, i32, %struct.tda10071_platform_data*) #2

declare dso_local i32 @dvb_module_release(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
