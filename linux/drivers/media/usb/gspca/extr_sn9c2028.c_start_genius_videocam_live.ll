; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_start_genius_videocam_live.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_start_genius_videocam_live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_command = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@__const.start_genius_videocam_live.genius_vcam_live_start_commands = private unnamed_addr constant [93 x %struct.init_command] [%struct.init_command { i32 12, %struct.TYPE_2__ zeroinitializer }, %struct.init_command { i32 22, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 16, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 28, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 18, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 19, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 17, %struct.TYPE_2__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 28, %struct.TYPE_2__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.init_command { i32 32, %struct.TYPE_2__ zeroinitializer }, %struct.init_command { i32 18, %struct.TYPE_2__ zeroinitializer }, %struct.init_command { i32 27, %struct.TYPE_2__ zeroinitializer }, %struct.init_command { i32 29, %struct.TYPE_2__ zeroinitializer }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @start_genius_videocam_live to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_genius_videocam_live(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca [93 x %struct.init_command], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = bitcast [93 x %struct.init_command]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([93 x %struct.init_command]* @__const.start_genius_videocam_live.genius_vcam_live_start_commands to i8*), i64 2604, i1 false)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = getelementptr inbounds [93 x %struct.init_command], [93 x %struct.init_command]* %6, i64 0, i64 0
  %12 = getelementptr inbounds [93 x %struct.init_command], [93 x %struct.init_command]* %6, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(%struct.init_command* %12)
  %14 = call i32 @run_start_commands(%struct.gspca_dev* %10, %struct.init_command* %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.sd*, %struct.sd** %5, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load %struct.sd*, %struct.sd** %5, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @v4l2_ctrl_g_ctrl(i64 %28)
  %30 = call i32 @set_gain(%struct.gspca_dev* %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @run_start_commands(%struct.gspca_dev*, %struct.init_command*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.init_command*) #2

declare dso_local i32 @set_gain(%struct.gspca_dev*, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
