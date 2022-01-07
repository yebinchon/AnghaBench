; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_field_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_field_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*, i32)* @vivid_field_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_field_cap(%struct.vivid_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %7 = call i64 @vivid_is_sdtv_cap(%struct.vivid_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %14 [
    i32 131, label %11
    i32 132, label %11
    i32 129, label %11
    i32 130, label %11
    i32 128, label %11
    i32 134, label %11
    i32 135, label %11
    i32 133, label %13
  ]

11:                                               ; preds = %9, %9, %9, %9, %9, %9, %9
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %9, %13
  store i32 133, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %17 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @V4L2_FIELD_NONE, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 135, %31 ], [ %33, %32 ]
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %15
  %37 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34, %14, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
