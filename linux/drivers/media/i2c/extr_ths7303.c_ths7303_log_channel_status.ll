; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_log_channel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_log_channel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Channel %d Off\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Channel %d On\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  value 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@stc_lpf_sel_txt = common dso_local global i32* null, align 8
@in_mux_sel_txt = common dso_local global i32* null, align 8
@lpf_freq_sel_txt = common dso_local global i32* null, align 8
@in_bias_sel_dis_cont_txt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32)* @ths7303_log_channel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ths7303_log_channel_status(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ths7303_read(%struct.v4l2_subdev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @v4l2_info(%struct.v4l2_subdev* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @v4l2_info(%struct.v4l2_subdev* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @v4l2_info(%struct.v4l2_subdev* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load i32*, i32** @stc_lpf_sel_txt, align 8
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 6
  %27 = and i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @v4l2_info(%struct.v4l2_subdev* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load i32*, i32** @in_mux_sel_txt, align 8
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 5
  %36 = and i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @v4l2_info(%struct.v4l2_subdev* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %42 = load i32*, i32** @lpf_freq_sel_txt, align 8
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 3
  %45 = and i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @v4l2_info(%struct.v4l2_subdev* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %51 = load i32*, i32** @in_bias_sel_dis_cont_txt, align 8
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 0
  %54 = and i32 %53, 7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @v4l2_info(%struct.v4l2_subdev* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @ths7303_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
