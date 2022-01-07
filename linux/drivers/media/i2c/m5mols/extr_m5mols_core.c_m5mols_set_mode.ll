; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYSTEM_SYSMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Wrong mode: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_set_mode(%struct.m5mols_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.m5mols_info* %0, %struct.m5mols_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %10 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %9, i32 0, i32 1
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 128
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %16, 130
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %15
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %22 = load i32, i32* @SYSTEM_SYSMODE, align 4
  %23 = call i32 @m5mols_read_u8(%struct.v4l2_subdev* %21, i32 %22, i64* %8)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %82

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  switch i64 %33, label %69 [
    i64 128, label %34
    i64 129, label %47
    i64 130, label %56
  ]

34:                                               ; preds = %32
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = call i32 @m5mols_reg_mode(%struct.v4l2_subdev* %35, i64 129)
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 129
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %73

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = call i32 @m5mols_reg_mode(%struct.v4l2_subdev* %44, i64 130)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %73

47:                                               ; preds = %32
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 128
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %52 = call i32 @m5mols_reg_mode(%struct.v4l2_subdev* %51, i64 128)
  store i32 %52, i32* %7, align 4
  br label %73

53:                                               ; preds = %47
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %55 = call i32 @m5mols_reg_mode(%struct.v4l2_subdev* %54, i64 130)
  store i32 %55, i32* %7, align 4
  br label %73

56:                                               ; preds = %32
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %58 = call i32 @m5mols_reg_mode(%struct.v4l2_subdev* %57, i64 129)
  store i32 %58, i32* %7, align 4
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %59, 129
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %73

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %67 = call i32 @m5mols_reg_mode(%struct.v4l2_subdev* %66, i64 128)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %73

69:                                               ; preds = %32
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @v4l2_warn(%struct.v4l2_subdev* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %69, %68, %61, %53, %50, %46, %39
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %79 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %30, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @m5mols_read_u8(%struct.v4l2_subdev*, i32, i64*) #1

declare dso_local i32 @m5mols_reg_mode(%struct.v4l2_subdev*, i64) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
