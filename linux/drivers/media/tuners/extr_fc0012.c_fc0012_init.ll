; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0012.c_fc0012_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0012.c_fc0012_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.fc0012_priv* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.fc0012_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@__const.fc0012_init.reg = private unnamed_addr constant [22 x i8] c"\00\05\10\00\00\0F\00\00\FFn\B8\82\FC\02\00\00\00\00\1F\08\00\04", align 16
@.str = private unnamed_addr constant [32 x i8] c"%s: fc0012_writereg failed: %d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @fc0012_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc0012_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.fc0012_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [22 x i8], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.fc0012_priv*, %struct.fc0012_priv** %8, align 8
  store %struct.fc0012_priv* %9, %struct.fc0012_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = bitcast [22 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.fc0012_init.reg, i32 0, i32 0), i64 22, i1 false)
  %11 = load %struct.fc0012_priv*, %struct.fc0012_priv** %3, align 8
  %12 = getelementptr inbounds %struct.fc0012_priv, %struct.fc0012_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %23 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %22
  ]

16:                                               ; preds = %1, %1
  %17 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 7
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, 32
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  br label %24

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.fc0012_priv*, %struct.fc0012_priv** %3, align 8
  %26 = getelementptr inbounds %struct.fc0012_priv, %struct.fc0012_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 12
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, 2
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.fc0012_priv*, %struct.fc0012_priv** %3, align 8
  %39 = getelementptr inbounds %struct.fc0012_priv, %struct.fc0012_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 9
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, 1
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %59, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %62 = bitcast %struct.dvb_frontend* %61 to %struct.dvb_frontend.0*
  %63 = call i32 %60(%struct.dvb_frontend.0* %62, i32 1)
  br label %64

64:                                               ; preds = %56, %50
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 22
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.fc0012_priv*, %struct.fc0012_priv** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @fc0012_writereg(%struct.fc0012_priv* %70, i32 %71, i8 zeroext %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %84

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %65

84:                                               ; preds = %79, %65
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %93, align 8
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %96 = bitcast %struct.dvb_frontend* %95 to %struct.dvb_frontend.0*
  %97 = call i32 %94(%struct.dvb_frontend.0* %96, i32 0)
  br label %98

98:                                               ; preds = %90, %84
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.fc0012_priv*, %struct.fc0012_priv** %3, align 8
  %103 = getelementptr inbounds %struct.fc0012_priv, %struct.fc0012_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* @KBUILD_MODNAME, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %101, %98
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fc0012_writereg(%struct.fc0012_priv*, i32, i8 zeroext) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
