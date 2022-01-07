; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_decoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_decoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_decoder_cmd = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"cmd=%d, flags=0x%x\0A\00", align 1
@V4L2_DEC_CMD_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"speed=%d, format=%u\0A\00", align 1
@V4L2_DEC_CMD_STOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"pts=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_decoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_decoder_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_decoder_cmd*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_decoder_cmd*
  store %struct.v4l2_decoder_cmd* %7, %struct.v4l2_decoder_cmd** %5, align 8
  %8 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %13)
  %15 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_DEC_CMD_START, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28)
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_DEC_CMD_STOP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.v4l2_decoder_cmd*, %struct.v4l2_decoder_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %20
  ret void
}

declare dso_local i32 @pr_cont(i8*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
