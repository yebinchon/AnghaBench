; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_read_pixelclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_read_pixelclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32 }

@ADV748X_HDMI_TMDS_1 = common dso_local global i32 0, align 4
@ADV748X_HDMI_TMDS_2 = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*)* @adv748x_hdmi_read_pixelclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_read_pixelclock(%struct.adv748x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %3, align 8
  %6 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %7 = load i32, i32* @ADV748X_HDMI_TMDS_1, align 4
  %8 = call i32 @hdmi_read(%struct.adv748x_state* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %10 = load i32, i32* @ADV748X_HDMI_TMDS_2, align 4
  %11 = call i32 @hdmi_read(%struct.adv748x_state* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 7
  %25 = or i32 %22, %24
  %26 = mul nsw i32 %25, 1000000
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 127
  %29 = mul nsw i32 %28, 1000000
  %30 = sdiv i32 %29, 128
  %31 = add nsw i32 %26, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @hdmi_read(%struct.adv748x_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
