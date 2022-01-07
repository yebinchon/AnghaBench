; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_propagate_pixelrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_propagate_pixelrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_afe = type { i32* }
%struct.v4l2_subdev = type { i32 }

@ADV748X_AFE_SOURCE = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_afe*)* @adv748x_afe_propagate_pixelrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_afe_propagate_pixelrate(%struct.adv748x_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_afe*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.adv748x_afe* %0, %struct.adv748x_afe** %3, align 8
  %5 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %6 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @ADV748X_AFE_SOURCE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call %struct.v4l2_subdev* @adv748x_get_remote_sd(i32* %9)
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = icmp ne %struct.v4l2_subdev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOLINK, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = call i32 @adv748x_csi2_set_pixelrate(%struct.v4l2_subdev* %17, i32 14318180)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.v4l2_subdev* @adv748x_get_remote_sd(i32*) #1

declare dso_local i32 @adv748x_csi2_set_pixelrate(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
