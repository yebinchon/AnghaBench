; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SENSOR_OV6650 = common dso_local global i64 0, align 8
@SENSOR_OV7630 = common dso_local global i64 0, align 8
@__const.setfreq.i2c = private unnamed_addr constant [8 x i32] [i32 160, i32 0, i32 43, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SENSOR_OV6650, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SENSOR_OV7630, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12, %1
  %19 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([8 x i32]* @__const.setfreq.i2c to i8*), i64 32, i1 false)
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %25 [
    i32 1, label %27
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %26, align 4
  br label %36

27:                                               ; preds = %18
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SENSOR_OV6650, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 79, i32 138
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %25
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %47 = call i32 @i2c_w(%struct.gspca_dev* %45, i32* %46)
  br label %48

48:                                               ; preds = %36, %12
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
