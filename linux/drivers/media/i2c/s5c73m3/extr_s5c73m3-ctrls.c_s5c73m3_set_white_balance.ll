; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_set_white_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_set_white_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@s5c73m3_set_white_balance.wb = internal constant [6 x [2 x i16]] [[2 x i16] [i16 128, i16 134], [2 x i16] [i16 130, i16 136], [2 x i16] [i16 129, i16 135], [2 x i16] [i16 132, i16 138], [2 x i16] [i16 131, i16 137], [2 x i16] [i16 133, i16 139]], align 16
@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting white balance to: %s\0A\00", align 1
@COMM_AWB_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_set_white_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_set_white_balance(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @ARRAY_SIZE(i16** bitcast ([6 x [2 x i16]]* @s5c73m3_set_white_balance.wb to i16**))
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* @s5c73m3_set_white_balance.wb, i64 0, i64 %13
  %15 = getelementptr inbounds [2 x i16], [2 x i16]* %14, i64 0, i64 0
  %16 = load i16, i16* %15, align 4
  %17 = zext i16 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %45

21:                                               ; preds = %11
  %22 = load i32, i32* @s5c73m3_dbg, align 4
  %23 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %24 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %23, i32 0, i32 1
  %25 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %26 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @v4l2_ctrl_get_menu(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l2_dbg(i32 1, i32 %22, i32* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %38 = load i32, i32* @COMM_AWB_MODE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* @s5c73m3_set_white_balance.wb, i64 0, i64 %40
  %42 = getelementptr inbounds [2 x i16], [2 x i16]* %41, i64 0, i64 1
  %43 = load i16, i16* %42, align 2
  %44 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %37, i32 %38, i16 zeroext %43)
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %20
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(i16**) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32* @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
