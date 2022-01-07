; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@__const.setbrightness.i2cOV = private unnamed_addr constant [8 x i32] [i32 160, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_4__* null, align 8
@__const.setbrightness.i2cpbright = private unnamed_addr constant [8 x i32] [i32 176, i32 64, i32 11, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setbrightness.i2cpdoit = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 17, i32 1, i32 0, i32 0, i32 0, i32 22], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %73 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %32
    i32 128, label %32
  ]

12:                                               ; preds = %1, %1
  %13 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.i2cOV to i8*), i64 32, i1 false)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %31 = call i32 @i2c_w(%struct.gspca_dev* %29, i32* %30)
  br label %74

32:                                               ; preds = %1, %1
  %33 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.i2cpbright to i8*), i64 32, i1 false)
  %34 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.i2cpdoit to i8*), i64 32, i1 false)
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 129
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 7, i32* %40, align 8
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 19, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 127
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %50, align 4
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 127, %55
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  br label %66

58:                                               ; preds = %42
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 127
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %64, i32* %65, align 16
  br label %66

66:                                               ; preds = %58, %49
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %69 = call i32 @i2c_w(%struct.gspca_dev* %67, i32* %68)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %72 = call i32 @i2c_w(%struct.gspca_dev* %70, i32* %71)
  br label %74

73:                                               ; preds = %1
  br label %74

74:                                               ; preds = %73, %66, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
