; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_set_white_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_set_white_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@m5mols_set_white_balance.wb = internal constant [9 x [2 x i16]] [[2 x i16] [i16 129, i16 139], [2 x i16] [i16 132, i16 142], [2 x i16] [i16 131, i16 141], [2 x i16] [i16 130, i16 140], [2 x i16] [i16 134, i16 143], [2 x i16] [i16 133, i16 138], [2 x i16] [i16 135, i16 144], [2 x i16] [i16 128, i16 137], [2 x i16] [i16 136, i16 145]], align 16
@EINVAL = common dso_local global i32 0, align 4
@m5mols_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Setting white balance to: %#x\0A\00", align 1
@AWB_MODE = common dso_local global i32 0, align 4
@REG_AWB_PRESET = common dso_local global i16 0, align 2
@AWB_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m5mols_info*, i32)* @m5mols_set_white_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_set_white_balance(%struct.m5mols_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %11 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %10, i32 0, i32 0
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %74, %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ARRAY_SIZE(i16** bitcast ([9 x [2 x i16]]* @m5mols_set_white_balance.wb to i16**))
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [9 x [2 x i16]], [9 x [2 x i16]]* @m5mols_set_white_balance.wb, i64 0, i64 %20
  %22 = getelementptr inbounds [2 x i16], [2 x i16]* %21, i64 0, i64 0
  %23 = load i16, i16* %22, align 4
  %24 = zext i16 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %74

28:                                               ; preds = %18
  %29 = load i32, i32* @m5mols_debug, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x [2 x i16]], [9 x [2 x i16]]* @m5mols_set_white_balance.wb, i64 0, i64 %32
  %34 = getelementptr inbounds [2 x i16], [2 x i16]* %33, i64 0, i64 0
  %35 = load i16, i16* %34, align 4
  %36 = call i32 @v4l2_dbg(i32 1, i32 %29, %struct.v4l2_subdev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i16 zeroext %35)
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [9 x [2 x i16]], [9 x [2 x i16]]* @m5mols_set_white_balance.wb, i64 0, i64 %38
  %40 = getelementptr inbounds [2 x i16], [2 x i16]* %39, i64 0, i64 0
  %41 = load i16, i16* %40, align 4
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, 136
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %46 = load i32, i32* @AWB_MODE, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %53

50:                                               ; preds = %28
  %51 = load i16, i16* @REG_AWB_PRESET, align 2
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ 145, %49 ], [ %52, %50 ]
  %55 = trunc i32 %54 to i16
  %56 = call i32 @m5mols_write(%struct.v4l2_subdev* %45, i32 %46, i16 zeroext %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %79

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %66 = load i32, i32* @AWB_MANUAL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x [2 x i16]], [9 x [2 x i16]]* @m5mols_set_white_balance.wb, i64 0, i64 %68
  %70 = getelementptr inbounds [2 x i16], [2 x i16]* %69, i64 0, i64 1
  %71 = load i16, i16* %70, align 2
  %72 = call i32 @m5mols_write(%struct.v4l2_subdev* %65, i32 %66, i16 zeroext %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %64, %61
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %14

77:                                               ; preds = %14
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %59
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ARRAY_SIZE(i16**) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i16 zeroext) #1

declare dso_local i32 @m5mols_write(%struct.v4l2_subdev*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
