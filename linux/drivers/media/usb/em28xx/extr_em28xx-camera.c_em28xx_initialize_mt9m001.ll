; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_initialize_mt9m001.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-camera.c_em28xx_initialize_mt9m001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32* }

@__const.em28xx_initialize_mt9m001.regs = private unnamed_addr constant [13 x [3 x i8]] [[3 x i8] c"\0D\00\01", [3 x i8] c"\0D\00\00", [3 x i8] c"\04\05\00", [3 x i8] c"\03\04\00", [3 x i8] c" \11\00", [3 x i8] c"\06\00\10", [3 x i8] c"+\00$", [3 x i8] c".\00$", [3 x i8] c"5\00$", [3 x i8] c"-\00 ", [3 x i8] c",\00 ", [3 x i8] c"\09\0A\D4", [3 x i8] c"5\00W"], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_initialize_mt9m001 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_initialize_mt9m001(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [13 x [3 x i8]], align 16
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %5 = bitcast [13 x [3 x i8]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([13 x [3 x i8]], [13 x [3 x i8]]* @__const.em28xx_initialize_mt9m001.regs, i32 0, i32 0, i32 0), i64 39, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [13 x [3 x i8]], [13 x [3 x i8]]* %4, i64 0, i64 0
  %9 = bitcast [3 x i8]* %8 to i8**
  %10 = call i32 @ARRAY_SIZE(i8** %9)
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [13 x [3 x i8]], [13 x [3 x i8]]* %4, i64 0, i64 %21
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %22, i64 0, i64 0
  %24 = call i32 @i2c_master_send(i32* %19, i8* %23, i32 3)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %6

28:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @i2c_master_send(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
