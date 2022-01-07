; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_plex_px_bcud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28178_dvb_init_plex_px_bcud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32*, %struct.em28xx_dvb* }
%struct.em28xx_dvb = type { i32*, i8*, i8* }
%struct.tc90522_config = type { i32, i32, i32* }
%struct.qm1d1c0042_config = type { i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"tc90522\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tc90522sat\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"qm1d1c0042\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28178_dvb_init_plex_px_bcud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28178_dvb_init_plex_px_bcud(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_dvb*, align 8
  %5 = alloca %struct.tc90522_config, align 8
  %6 = alloca %struct.qm1d1c0042_config, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %7 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 2
  %9 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %8, align 8
  store %struct.em28xx_dvb* %9, %struct.em28xx_dvb** %4, align 8
  %10 = bitcast %struct.tc90522_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = bitcast %struct.qm1d1c0042_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 21, %struct.tc90522_config* %5)
  %20 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %21 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %23 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.qm1d1c0042_config, %struct.qm1d1c0042_config* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.qm1d1c0042_config, %struct.qm1d1c0042_config* %6, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %5, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast %struct.qm1d1c0042_config* %6 to %struct.tc90522_config*
  %37 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* null, i32* %35, i32 97, %struct.tc90522_config* %36)
  %38 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %39 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %41 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %29
  %45 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %46 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @dvb_module_release(i8* %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.tc90522_config, %struct.tc90522_config* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %4, align 8
  %55 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %59 = call i32 @px_bcud_init(%struct.em28xx* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %44, %26
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dvb_module_probe(i8*, i8*, i32*, i32, %struct.tc90522_config*) #2

declare dso_local i32 @dvb_module_release(i8*) #2

declare dso_local i32 @px_bcud_init(%struct.em28xx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
