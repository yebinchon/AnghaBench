; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18_open_id = type { %struct.cx18* }
%struct.cx18 = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Switching standard to %llx.\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.cx18_open_id* @fh2id(i8* %10)
  store %struct.cx18_open_id* %11, %struct.cx18_open_id** %8, align 8
  %12 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %13 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %12, i32 0, i32 0
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @V4L2_STD_ALL, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %124

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cx18*, %struct.cx18** %9, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %124

29:                                               ; preds = %22
  %30 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %31 = load %struct.cx18*, %struct.cx18** %9, align 8
  %32 = getelementptr inbounds %struct.cx18, %struct.cx18* %31, i32 0, i32 6
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.cx18*, %struct.cx18** %9, align 8
  %37 = getelementptr inbounds %struct.cx18, %struct.cx18* %36, i32 0, i32 5
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %29
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %124

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.cx18*, %struct.cx18** %9, align 8
  %46 = getelementptr inbounds %struct.cx18, %struct.cx18* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @V4L2_STD_525_60, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.cx18*, %struct.cx18** %9, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cx18*, %struct.cx18** %9, align 8
  %56 = getelementptr inbounds %struct.cx18, %struct.cx18* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.cx18*, %struct.cx18** %9, align 8
  %62 = getelementptr inbounds %struct.cx18, %struct.cx18* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cx18*, %struct.cx18** %9, align 8
  %64 = getelementptr inbounds %struct.cx18, %struct.cx18* %63, i32 0, i32 4
  %65 = load %struct.cx18*, %struct.cx18** %9, align 8
  %66 = getelementptr inbounds %struct.cx18, %struct.cx18* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cx2341x_handler_set_50hz(%struct.TYPE_4__* %64, i32 %67)
  %69 = load %struct.cx18*, %struct.cx18** %9, align 8
  %70 = getelementptr inbounds %struct.cx18, %struct.cx18* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 720, i32* %71, align 8
  %72 = load %struct.cx18*, %struct.cx18** %9, align 8
  %73 = getelementptr inbounds %struct.cx18, %struct.cx18* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 576, i32 480
  %78 = load %struct.cx18*, %struct.cx18** %9, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.cx18*, %struct.cx18** %9, align 8
  %82 = getelementptr inbounds %struct.cx18, %struct.cx18* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 18, i32 12
  %87 = load %struct.cx18*, %struct.cx18** %9, align 8
  %88 = getelementptr inbounds %struct.cx18, %struct.cx18* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.cx18*, %struct.cx18** %9, align 8
  %91 = getelementptr inbounds %struct.cx18, %struct.cx18* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 6, i32 10
  %96 = load %struct.cx18*, %struct.cx18** %9, align 8
  %97 = getelementptr inbounds %struct.cx18, %struct.cx18* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.cx18*, %struct.cx18** %9, align 8
  %102 = getelementptr inbounds %struct.cx18, %struct.cx18* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 318, i32 273
  %107 = load %struct.cx18*, %struct.cx18** %9, align 8
  %108 = getelementptr inbounds %struct.cx18, %struct.cx18* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %106, i32* %111, align 4
  %112 = load %struct.cx18*, %struct.cx18** %9, align 8
  %113 = getelementptr inbounds %struct.cx18, %struct.cx18* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %115)
  %117 = load %struct.cx18*, %struct.cx18** %9, align 8
  %118 = load i32, i32* @video, align 4
  %119 = load i32, i32* @s_std, align 4
  %120 = load %struct.cx18*, %struct.cx18** %9, align 8
  %121 = getelementptr inbounds %struct.cx18, %struct.cx18* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @cx18_call_all(%struct.cx18* %117, i32 %118, i32 %119, i32 %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %43, %40, %28, %19
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx2341x_handler_set_50hz(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i64) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
