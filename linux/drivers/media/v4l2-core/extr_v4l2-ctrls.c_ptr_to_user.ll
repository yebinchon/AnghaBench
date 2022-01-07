; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_ptr_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_ptr_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, i32, i32, i64 }
%union.v4l2_ctrl_ptr = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, %struct.v4l2_ctrl*, i32*)* @ptr_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_to_user(%struct.v4l2_ext_control* %0, %struct.v4l2_ctrl* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.v4l2_ctrl_ptr, align 8
  %6 = alloca %struct.v4l2_ext_control*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %5, i32 0, i32 0
  store i32* %2, i32** %9, align 8
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %6, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %7, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %union.v4l2_ctrl_ptr* %5 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @copy_to_user(i32 %22, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  br label %34

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  store i32 %35, i32* %4, align 4
  br label %87

36:                                               ; preds = %14, %3
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %80 [
    i32 128, label %40
    i32 129, label %74
  ]

40:                                               ; preds = %36
  %41 = bitcast %union.v4l2_ctrl_ptr* %5 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strlen(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @ENOSPC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %87

58:                                               ; preds = %40
  %59 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %union.v4l2_ctrl_ptr* %5 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i64 @copy_to_user(i32 %61, i32 %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i32 [ %70, %68 ], [ 0, %71 ]
  store i32 %73, i32* %4, align 4
  br label %87

74:                                               ; preds = %36
  %75 = bitcast %union.v4l2_ctrl_ptr* %5 to i32**
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %86

80:                                               ; preds = %36
  %81 = bitcast %union.v4l2_ctrl_ptr* %5 to i32**
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %74
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %72, %50, %34
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @copy_to_user(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
