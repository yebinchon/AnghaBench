; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_log_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_log_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7842_cfg_read_infoframe = type { i8*, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"AVI\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@__const.adv7842_log_infoframes.cri = private unnamed_addr constant [4 x %struct.adv7842_cfg_read_infoframe] [%struct.adv7842_cfg_read_infoframe { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 1, i32 224, i32 0 }, %struct.adv7842_cfg_read_infoframe { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2, i32 227, i32 28 }, %struct.adv7842_cfg_read_infoframe { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 4, i32 230, i32 42 }, %struct.adv7842_cfg_read_infoframe { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 16, i32 236, i32 84 }], align 16
@.str.4 = private unnamed_addr constant [37 x i8] c"receive DVI-D signal, no infoframes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @adv7842_log_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7842_log_infoframes(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x %struct.adv7842_cfg_read_infoframe], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = bitcast [4 x %struct.adv7842_cfg_read_infoframe]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x %struct.adv7842_cfg_read_infoframe]* @__const.adv7842_log_infoframes.cri to i8*), i64 96, i1 false)
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call i32 @hdmi_read(%struct.v4l2_subdev* %6, i32 5)
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = call i32 @v4l2_info(%struct.v4l2_subdev* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %28

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [4 x %struct.adv7842_cfg_read_infoframe], [4 x %struct.adv7842_cfg_read_infoframe]* %4, i64 0, i64 0
  %17 = call i32 @ARRAY_SIZE(%struct.adv7842_cfg_read_infoframe* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x %struct.adv7842_cfg_read_infoframe], [4 x %struct.adv7842_cfg_read_infoframe]* %4, i64 0, i64 %22
  %24 = call i32 @log_infoframe(%struct.v4l2_subdev* %20, %struct.adv7842_cfg_read_infoframe* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hdmi_read(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.adv7842_cfg_read_infoframe*) #2

declare dso_local i32 @log_infoframe(%struct.v4l2_subdev*, %struct.adv7842_cfg_read_infoframe*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
