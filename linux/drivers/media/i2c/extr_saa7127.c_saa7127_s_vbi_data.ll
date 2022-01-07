; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_s_vbi_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_s_vbi_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)* @saa7127_s_vbi_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_s_vbi_data(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_data* %1, %struct.v4l2_sliced_vbi_data** %5, align 8
  %6 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %30 [
    i32 128, label %9
    i32 129, label %13
    i32 130, label %17
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %12 = call i32 @saa7127_set_wss(%struct.v4l2_subdev* %10, %struct.v4l2_sliced_vbi_data* %11)
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %16 = call i32 @saa7127_set_vps(%struct.v4l2_subdev* %14, %struct.v4l2_sliced_vbi_data* %15)
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %25 = call i32 @saa7127_set_cc(%struct.v4l2_subdev* %23, %struct.v4l2_sliced_vbi_data* %24)
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %29 = call i32 @saa7127_set_xds(%struct.v4l2_subdev* %27, %struct.v4l2_sliced_vbi_data* %28)
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %26, %22, %13, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @saa7127_set_wss(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #1

declare dso_local i32 @saa7127_set_vps(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #1

declare dso_local i32 @saa7127_set_cc(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #1

declare dso_local i32 @saa7127_set_xds(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
