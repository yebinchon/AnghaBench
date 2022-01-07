; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_frmivalenum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_frmivalenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frmivalenum = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"index=%u, pixelformat=%c%c%c%c, wxh=%ux%u, type=%u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", fps=%d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c", min=%d/%d, max=%d/%d, step=%d/%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_frmivalenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_frmivalenum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_frmivalenum*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.v4l2_frmivalenum*
  store %struct.v4l2_frmivalenum* %7, %struct.v4l2_frmivalenum** %5, align 8
  %8 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %19, i32 %24, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %86 [
    i32 129, label %43
    i32 128, label %53
    i32 130, label %85
  ]

43:                                               ; preds = %2
  %44 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %51)
  br label %88

53:                                               ; preds = %2
  %54 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %63, i32 %68, i32 %73, i32 %78, i32 %83)
  br label %88

85:                                               ; preds = %2
  br label %86

86:                                               ; preds = %2, %85
  %87 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %53, %43
  ret void
}

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
