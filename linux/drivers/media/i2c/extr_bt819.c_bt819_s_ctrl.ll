; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.bt819 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @bt819_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.bt819*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.bt819* @to_bt819(%struct.v4l2_subdev* %9)
  store %struct.bt819* %10, %struct.bt819** %5, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %70 [
    i32 131, label %14
    i32 130, label %20
    i32 128, label %34
    i32 129, label %64
  ]

14:                                               ; preds = %1
  %15 = load %struct.bt819*, %struct.bt819** %5, align 8
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bt819_write(%struct.bt819* %15, i32 10, i32 %18)
  br label %73

20:                                               ; preds = %1
  %21 = load %struct.bt819*, %struct.bt819** %5, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @bt819_write(%struct.bt819* %21, i32 12, i32 %25)
  %27 = load %struct.bt819*, %struct.bt819** %5, align 8
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 1
  %33 = call i32 @bt819_setbit(%struct.bt819* %27, i32 11, i32 2, i32 %32)
  br label %73

34:                                               ; preds = %1
  %35 = load %struct.bt819*, %struct.bt819** %5, align 8
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 7
  %40 = and i32 %39, 255
  %41 = call i32 @bt819_write(%struct.bt819* %35, i32 13, i32 %40)
  %42 = load %struct.bt819*, %struct.bt819** %5, align 8
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 15
  %47 = and i32 %46, 1
  %48 = call i32 @bt819_setbit(%struct.bt819* %42, i32 11, i32 1, i32 %47)
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 180
  %53 = sdiv i32 %52, 254
  store i32 %53, i32* %6, align 4
  %54 = load %struct.bt819*, %struct.bt819** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 7
  %57 = and i32 %56, 255
  %58 = call i32 @bt819_write(%struct.bt819* %54, i32 14, i32 %57)
  %59 = load %struct.bt819*, %struct.bt819** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 15
  %62 = and i32 %61, 1
  %63 = call i32 @bt819_setbit(%struct.bt819* %59, i32 11, i32 0, i32 %62)
  br label %73

64:                                               ; preds = %1
  %65 = load %struct.bt819*, %struct.bt819** %5, align 8
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bt819_write(%struct.bt819* %65, i32 15, i32 %68)
  br label %73

70:                                               ; preds = %1
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %64, %34, %20, %14
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.bt819* @to_bt819(%struct.v4l2_subdev*) #1

declare dso_local i32 @bt819_write(%struct.bt819*, i32, i32) #1

declare dso_local i32 @bt819_setbit(%struct.bt819*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
