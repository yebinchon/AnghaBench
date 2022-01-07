; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_set_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_set_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i64, i32, %struct.s5c73m3_frame_size** }
%struct.s5c73m3_frame_size = type { i32, i32, i32 }

@RES_ISP = common dso_local global i64 0, align 8
@RES_JPEG = common dso_local global i64 0, align 8
@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Preview size: %dx%d, reg_val: 0x%x\0A\00", align 1
@COMM_CHG_MODE_NEW = common dso_local global i32 0, align 4
@S5C73M3_JPEG_FMT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Capture size: %dx%d, reg_val: 0x%x\0A\00", align 1
@COMM_CHG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_set_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_set_frame_size(%struct.s5c73m3* %0) #0 {
  %2 = alloca %struct.s5c73m3*, align 8
  %3 = alloca %struct.s5c73m3_frame_size*, align 8
  %4 = alloca %struct.s5c73m3_frame_size*, align 8
  %5 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %2, align 8
  %6 = load %struct.s5c73m3*, %struct.s5c73m3** %2, align 8
  %7 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %6, i32 0, i32 2
  %8 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %7, align 8
  %9 = load i64, i64* @RES_ISP, align 8
  %10 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %8, i64 %9
  %11 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %10, align 8
  store %struct.s5c73m3_frame_size* %11, %struct.s5c73m3_frame_size** %3, align 8
  %12 = load %struct.s5c73m3*, %struct.s5c73m3** %2, align 8
  %13 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %12, i32 0, i32 2
  %14 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** %13, align 8
  %15 = load i64, i64* @RES_JPEG, align 8
  %16 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %14, i64 %15
  %17 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %16, align 8
  store %struct.s5c73m3_frame_size* %17, %struct.s5c73m3_frame_size** %4, align 8
  %18 = load i32, i32* @s5c73m3_dbg, align 4
  %19 = load %struct.s5c73m3*, %struct.s5c73m3** %2, align 8
  %20 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %19, i32 0, i32 1
  %21 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %3, align 8
  %22 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %3, align 8
  %25 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %3, align 8
  %28 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l2_dbg(i32 1, i32 %18, i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %3, align 8
  %32 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @COMM_CHG_MODE_NEW, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.s5c73m3*, %struct.s5c73m3** %2, align 8
  %37 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S5C73M3_JPEG_FMT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %1
  %42 = load i32, i32* @s5c73m3_dbg, align 4
  %43 = load %struct.s5c73m3*, %struct.s5c73m3** %2, align 8
  %44 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %43, i32 0, i32 1
  %45 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %4, align 8
  %46 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %4, align 8
  %49 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %4, align 8
  %52 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @v4l2_dbg(i32 1, i32 %42, i32* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %4, align 8
  %56 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %41, %1
  %61 = load %struct.s5c73m3*, %struct.s5c73m3** %2, align 8
  %62 = load i32, i32* @COMM_CHG_MODE, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %61, i32 %62, i32 %63)
  ret i32 %64
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
