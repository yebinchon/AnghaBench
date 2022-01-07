; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_audioout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_audioout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_audioout = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"index=%u, name=%.*s, capability=0x%x, mode=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_audioout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_audioout(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_audioout*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_audioout*
  store %struct.v4l2_audioout* %7, %struct.v4l2_audioout** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 4, i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
