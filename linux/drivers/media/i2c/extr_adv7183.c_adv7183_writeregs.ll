; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_writeregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_writeregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid regs array\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i8*, i32)* @adv7183_writeregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_writeregs(%struct.v4l2_subdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call i32 @v4l2_err(%struct.v4l2_subdev* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %8, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %9, align 1
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, 2
  store i32 %30, i32* %10, align 4
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %32 = load i8, i8* %8, align 1
  %33 = load i8, i8* %9, align 1
  %34 = call i32 @adv7183_write(%struct.v4l2_subdev* %31, i8 zeroext %32, i8 zeroext %33)
  br label %18

35:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @adv7183_write(%struct.v4l2_subdev*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
