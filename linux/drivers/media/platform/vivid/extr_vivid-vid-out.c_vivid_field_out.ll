; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_field_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_field_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*, i32)* @vivid_field_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_field_out(%struct.vivid_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %7 = call i64 @vivid_is_svid_out(%struct.vivid_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %14 [
    i32 130, label %11
    i32 131, label %11
    i32 128, label %11
    i32 129, label %11
    i32 133, label %11
    i32 132, label %13
  ]

11:                                               ; preds = %9, %9, %9, %9, %9
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %9, %13
  store i32 132, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %17 = call i64 @vivid_is_hdmi_out(%struct.vivid_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @V4L2_FIELD_NONE, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 133, %26 ], [ %28, %27 ]
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %15
  %32 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29, %14, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @vivid_is_svid_out(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_out(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
