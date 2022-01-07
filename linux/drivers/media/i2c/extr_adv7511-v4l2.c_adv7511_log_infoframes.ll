; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_log_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_log_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511_cfg_read_infoframe = type { i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@adv7511_log_infoframes.cri = internal constant [3 x %struct.adv7511_cfg_read_infoframe] [%struct.adv7511_cfg_read_infoframe { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 68, i32 16, i32 130, %struct.TYPE_2__ { i32 85, i32 0, i32 0 } }, %struct.adv7511_cfg_read_infoframe { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 68, i32 8, i32 132, %struct.TYPE_2__ { i32 115, i32 0, i32 0 } }, %struct.adv7511_cfg_read_infoframe { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 64, i32 64, i32 131, %struct.TYPE_2__ { i32 259, i32 0, i32 0 } }], align 16
@.str = private unnamed_addr constant [4 x i8] c"AVI\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Audio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @adv7511_log_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_log_infoframes(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(%struct.adv7511_cfg_read_infoframe* getelementptr inbounds ([3 x %struct.adv7511_cfg_read_infoframe], [3 x %struct.adv7511_cfg_read_infoframe]* @adv7511_log_infoframes.cri, i64 0, i64 0))
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x %struct.adv7511_cfg_read_infoframe], [3 x %struct.adv7511_cfg_read_infoframe]* @adv7511_log_infoframes.cri, i64 0, i64 %11
  %13 = call i32 @log_infoframe(%struct.v4l2_subdev* %9, %struct.adv7511_cfg_read_infoframe* %12)
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.adv7511_cfg_read_infoframe*) #1

declare dso_local i32 @log_infoframe(%struct.v4l2_subdev*, %struct.adv7511_cfg_read_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
