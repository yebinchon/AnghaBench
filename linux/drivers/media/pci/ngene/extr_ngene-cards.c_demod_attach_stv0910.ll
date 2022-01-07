; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_stv0910.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_stv0910.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0910_cfg = type { i32 }
%struct.lnbh25_config = type { i32 }
%struct.ngene_channel = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }

@stv0910_p = common dso_local global %struct.stv0910_cfg zeroinitializer, align 4
@lnbh25_cfg = common dso_local global %struct.lnbh25_config zeroinitializer, align 4
@stv0910_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"stv0910_attach() failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lnbh25_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"lnbh25_attach() failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, %struct.i2c_adapter*)* @demod_attach_stv0910 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_stv0910(%struct.ngene_channel* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene_channel*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.stv0910_cfg, align 4
  %8 = alloca %struct.lnbh25_config, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %9 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = bitcast %struct.stv0910_cfg* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.stv0910_cfg* @stv0910_p to i8*), i64 4, i1 false)
  %16 = bitcast %struct.lnbh25_config* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.lnbh25_config* @lnbh25_cfg to i8*), i64 4, i1 false)
  %17 = load i32, i32* @stv0910_attach, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = bitcast %struct.i2c_adapter* %18 to i32*
  %20 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  %24 = call i8* (i32, i32*, ...) @dvb_attach(i32 %17, i32* %19, %struct.stv0910_cfg* %7, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %29 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %7, i32 0, i32 0
  store i32 108, i32* %33, align 4
  %34 = load i32, i32* @stv0910_attach, align 4
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %36 = bitcast %struct.i2c_adapter* %35 to i32*
  %37 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 1
  %41 = call i8* (i32, i32*, ...) @dvb_attach(i32 %34, i32* %36, %struct.stv0910_cfg* %7, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %32, %2
  %46 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %47 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %102

55:                                               ; preds = %45
  %56 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %57 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 13, i32 12
  %63 = shl i32 %62, 1
  %64 = getelementptr inbounds %struct.lnbh25_config, %struct.lnbh25_config* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @lnbh25_attach, align 4
  %66 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %67 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %70 = call i8* (i32, i32*, ...) @dvb_attach(i32 %65, i32* %68, %struct.lnbh25_config* %8, %struct.i2c_adapter* %69)
  %71 = icmp ne i8* %70, null
  br i1 %71, label %101, label %72

72:                                               ; preds = %55
  %73 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %74 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 9, i32 8
  %80 = shl i32 %79, 1
  %81 = getelementptr inbounds %struct.lnbh25_config, %struct.lnbh25_config* %8, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @lnbh25_attach, align 4
  %83 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %84 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %87 = call i8* (i32, i32*, ...) @dvb_attach(i32 %82, i32* %85, %struct.lnbh25_config* %8, %struct.i2c_adapter* %86)
  %88 = icmp ne i8* %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %72
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %93 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @dvb_frontend_detach(i32* %94)
  %96 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %97 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %55
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %89, %50
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @dvb_attach(i32, i32*, ...) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @dvb_frontend_detach(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
