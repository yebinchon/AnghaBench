; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0013.c_fc0013_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0013.c_fc0013_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.fc0013_priv* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.fc0013_priv = type { i32, i64 }

@__const.fc0013_init.reg = private unnamed_addr constant [22 x i8] c"\00\09\16\00\00\17\02\0A\FFo\B8\82\FC\01\00\00\00\00\00\00P\01", align 16
@.str = private unnamed_addr constant [27 x i8] c"fc0013_writereg failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @fc0013_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc0013_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.fc0013_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [22 x i8], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.fc0013_priv*, %struct.fc0013_priv** %8, align 8
  store %struct.fc0013_priv* %9, %struct.fc0013_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = bitcast [22 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.fc0013_init.reg, i32 0, i32 0), i64 22, i1 false)
  %11 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %12 = getelementptr inbounds %struct.fc0013_priv, %struct.fc0013_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %21 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %20
  ]

14:                                               ; preds = %1, %1
  %15 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 7
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, 32
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %15, align 1
  br label %22

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %20
  br label %22

22:                                               ; preds = %21, %14
  %23 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %24 = getelementptr inbounds %struct.fc0013_priv, %struct.fc0013_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 12
  %29 = load i8, i8* %28, align 4
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 2
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %42, align 8
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %45 = bitcast %struct.dvb_frontend* %44 to %struct.dvb_frontend.0*
  %46 = call i32 %43(%struct.dvb_frontend.0* %45, i32 1)
  br label %47

47:                                               ; preds = %39, %33
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 22
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @fc0013_writereg(%struct.fc0013_priv* %53, i32 %54, i8 zeroext %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %48

67:                                               ; preds = %62, %48
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %76, align 8
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %79 = bitcast %struct.dvb_frontend* %78 to %struct.dvb_frontend.0*
  %80 = call i32 %77(%struct.dvb_frontend.0* %79, i32 0)
  br label %81

81:                                               ; preds = %73, %67
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fc0013_writereg(%struct.fc0013_priv*, i32, i8 zeroext) #2

declare dso_local i32 @err(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
