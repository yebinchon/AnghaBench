; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_create_sys_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_create_sys_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_vc = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i32* }

@SYS_FRAMES = common dso_local global i64 0, align 8
@SYS_FRAMES_MAXSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"out of memory.  using less frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2255_vc*)* @s2255_create_sys_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2255_create_sys_buffers(%struct.s2255_vc* %0) #0 {
  %2 = alloca %struct.s2255_vc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.s2255_vc* %0, %struct.s2255_vc** %2, align 8
  %5 = load i64, i64* @SYS_FRAMES, align 8
  %6 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %7 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %5, i64* %8, align 8
  %9 = load i64, i64* @SYS_FRAMES_MAXSIZE, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @SYS_FRAMES_MAXSIZE, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @SYS_FRAMES_MAXSIZE, align 8
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %13, %1
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %54, %15
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @SYS_FRAMES, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = call i32* @vmalloc(i64 %21)
  %23 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %24 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32* %22, i32** %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %32 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %30, i64* %37, align 8
  %38 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %39 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %20
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %51 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %57

53:                                               ; preds = %20
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %16

57:                                               ; preds = %47, %16
  store i64 0, i64* %3, align 8
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @SYS_FRAMES, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %64 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %71 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %82 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.s2255_vc*, %struct.s2255_vc** %2, align 8
  %84 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  ret i32 0
}

declare dso_local i32* @vmalloc(i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
