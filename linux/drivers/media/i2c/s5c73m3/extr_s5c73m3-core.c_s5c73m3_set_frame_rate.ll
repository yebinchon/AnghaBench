; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_set_frame_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_set_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@COMM_FRAME_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_set_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_set_frame_rate(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %5 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %6 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %15 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %13
  %25 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %26 = load i32, i32* @COMM_FRAME_RATE, align 4
  %27 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %28 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %25, i32 %26, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %37 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %21, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
