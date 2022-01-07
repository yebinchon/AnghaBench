; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_cap_update_frame_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_cap_update_frame_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*)* @vivid_cap_update_frame_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_cap_update_frame_period(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %4 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = mul nsw i32 %8, 1000000000
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %11 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @do_div(i32 %23, i32 %27)
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %38, 9
  %40 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %41 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @do_div(i32 %44, i32 10)
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
