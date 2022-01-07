; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_dbg_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_dbg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dbg_register = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"type=%u, \00", align 1
@V4L2_CHIP_MATCH_I2C_DRIVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"name=%.*s, \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"addr=%u, \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"reg=0x%llx, val=0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_dbg_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_dbg_register(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_dbg_register*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_dbg_register*
  store %struct.v4l2_dbg_register* %7, %struct.v4l2_dbg_register** %5, align 8
  %8 = load %struct.v4l2_dbg_register*, %struct.v4l2_dbg_register** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_dbg_register, %struct.v4l2_dbg_register* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.v4l2_dbg_register*, %struct.v4l2_dbg_register** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_dbg_register, %struct.v4l2_dbg_register* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_CHIP_MATCH_I2C_DRIVER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.v4l2_dbg_register*, %struct.v4l2_dbg_register** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_dbg_register, %struct.v4l2_dbg_register* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %24)
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.v4l2_dbg_register*, %struct.v4l2_dbg_register** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_dbg_register, %struct.v4l2_dbg_register* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.v4l2_dbg_register*, %struct.v4l2_dbg_register** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_dbg_register, %struct.v4l2_dbg_register* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.v4l2_dbg_register*, %struct.v4l2_dbg_register** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_dbg_register, %struct.v4l2_dbg_register* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @pr_cont(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
