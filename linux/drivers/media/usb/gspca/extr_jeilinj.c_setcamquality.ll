; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_setcamquality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_setcamquality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@__const.setcamquality.quality_commands = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 113, i32 30], [2 x i32] [i32 112, i32 6]], align 16
@QUALITY_MAX = common dso_local global i32 0, align 4
@CAMQUALITY_MAX = common dso_local global i32 0, align 4
@QUALITY_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setcamquality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcamquality(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x [2 x i32]], align 16
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [2 x [2 x i32]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([2 x [2 x i32]]* @__const.setcamquality.quality_commands to i8*), i64 16, i1 false)
  %8 = load i32, i32* @QUALITY_MAX, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %8, %9
  %11 = load i32, i32* @CAMQUALITY_MAX, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* @QUALITY_MAX, align 4
  %14 = load i32, i32* @QUALITY_MIN, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sdiv i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %25 = call i32 @jlj_write2(%struct.gspca_dev* %22, i32* %24)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %29 = call i32 @jlj_write2(%struct.gspca_dev* %26, i32* %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jlj_write2(%struct.gspca_dev*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
