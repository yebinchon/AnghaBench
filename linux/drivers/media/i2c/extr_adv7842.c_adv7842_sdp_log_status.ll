; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_sdp_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_sdp_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Chip powered %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Prim-mode = 0x%x, video std = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SDP: free run: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SDP: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"valid SD/PR signal detected\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"invalid/no signal\00", align 1
@adv7842_sdp_log_status.sdp_std_txt = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"NTSC-M/J\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"1?\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NTSC-443\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"60HzSECAM\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"5?\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"PAL-60\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"7?\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"8?\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"9?\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"a?\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"b?\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"PAL-CombN\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"d?\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"PAL-BGHID\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"SECAM\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"SDP: standard %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"50Hz\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"60Hz\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Interlaced\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"SDP: deinterlacer %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"SDP: csc %s mode\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7842_sdp_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_sdp_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call i32 @sdp_read(%struct.v4l2_subdev* %4, i32 90)
  %6 = and i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call i64 @no_power(%struct.v4l2_subdev* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = call i32 @io_read(%struct.v4l2_subdev* %15, i32 1)
  %17 = and i32 %16, 15
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %19 = call i32 @io_read(%struct.v4l2_subdev* %18, i32 0)
  %20 = and i32 %19, 63
  %21 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %24 = call i32 @sdp_read(%struct.v4l2_subdev* %23, i32 86)
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %29 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)
  %35 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %1
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %41 = call i32 @sdp_read(%struct.v4l2_subdev* %40, i32 82)
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv7842_sdp_log_status.sdp_std_txt, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %49 = call i32 @sdp_read(%struct.v4l2_subdev* %48, i32 89)
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)
  %54 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %57 = call i32 @sdp_read(%struct.v4l2_subdev* %56, i32 87)
  %58 = and i32 %57, 8
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)
  %62 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %65 = call i32 @sdp_read(%struct.v4l2_subdev* %64, i32 18)
  %66 = and i32 %65, 8
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)
  %70 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* %69)
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %73 = call i32 @sdp_io_read(%struct.v4l2_subdev* %72, i32 224)
  %74 = and i32 %73, 64
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)
  %78 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local i32 @sdp_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i64 @no_power(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @sdp_io_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
