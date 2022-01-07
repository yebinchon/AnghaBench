; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_queryctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"id=0x%x, type=%d, name=%.*s, min/max=%d/%d, step=%d, default=%d, flags=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_queryctrl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_queryctrl*
  store %struct.v4l2_queryctrl* %7, %struct.v4l2_queryctrl** %5, align 8
  %8 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_cont(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 4, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
