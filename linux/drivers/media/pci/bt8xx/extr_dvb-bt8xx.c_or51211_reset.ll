; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_or51211_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_or51211_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dvb_bt8xx_card* }
%struct.dvb_bt8xx_card = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"or51211: Init Error - Can't Reset DVR (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @or51211_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @or51211_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_bt8xx_card*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %8, align 8
  store %struct.dvb_bt8xx_card* %9, %struct.dvb_bt8xx_card** %3, align 8
  %10 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bttv_gpio_enable(i32 %12, i32 31, i32 31)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bttv_write_gpio(i32 %22, i32 31, i32 0)
  %24 = call i32 @msleep(i32 20)
  %25 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bttv_write_gpio(i32 %27, i32 31, i32 1)
  %29 = call i32 @msleep(i32 500)
  ret void
}

declare dso_local i32 @bttv_gpio_enable(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @bttv_write_gpio(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
