; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_frmsizeenum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_frmsizeenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frmsizeenum = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"index=%u, pixelformat=%c%c%c%c, type=%u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", wxh=%ux%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c", min=%ux%u, max=%ux%u, step=%ux%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_frmsizeenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_frmsizeenum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_frmsizeenum*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_frmsizeenum*
  store %struct.v4l2_frmsizeenum* %7, %struct.v4l2_frmsizeenum** %5, align 8
  %8 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %19, i32 %24, i32 %29, i32 %32)
  %34 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %74 [
    i32 129, label %37
    i32 128, label %47
    i32 130, label %73
  ]

37:                                               ; preds = %2
  %38 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45)
  br label %76

47:                                               ; preds = %2
  %48 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71)
  br label %76

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %2, %73
  %75 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %47, %37
  ret void
}

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
