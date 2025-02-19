; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_setcolors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_setcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@__const.setcolors.I2cc = private unnamed_addr constant [5 x i32] [i32 5, i32 2, i32 2, i32 5, i32 13], align 16
@SENSOR_PAS106 = common dso_local global i64 0, align 8
@PAS106_REG13 = common dso_local global i32 0, align 4
@PAS106_REG9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcolors(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %5, align 8
  %10 = bitcast [5 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @__const.setcolors.I2cc to i8*), i64 20, i1 false)
  store i32 1, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 15, %13
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SENSOR_PAS106, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* @PAS106_REG13, align 4
  %24 = call i32 @i2c_w(%struct.gspca_dev* %22, i32 %23, i32* %7, i32 1, i32 3)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load i32, i32* @PAS106_REG9, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %28 = call i32 @i2c_w(%struct.gspca_dev* %25, i32 %26, i32* %27, i32 20, i32 1)
  br label %29

29:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
