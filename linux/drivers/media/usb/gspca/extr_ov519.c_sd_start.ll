; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 133, label %23
    i32 132, label %23
    i32 131, label %26
    i32 130, label %26
    i32 129, label %29
    i32 128, label %32
  ]

23:                                               ; preds = %1, %1
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = call i32 @ov511_mode_init_regs(%struct.sd* %24)
  br label %35

26:                                               ; preds = %1, %1
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = call i32 @ov518_mode_init_regs(%struct.sd* %27)
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = call i32 @ov519_mode_init_regs(%struct.sd* %30)
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = call i32 @w9968cf_mode_init_regs(%struct.sd* %33)
  br label %35

35:                                               ; preds = %1, %32, %29, %26, %23
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = call i32 @set_ov_sensor_window(%struct.sd* %36)
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @sd_reset_snapshot(%struct.gspca_dev* %40)
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 2
  store i32 3, i32* %43, align 4
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = call i32 @ov51x_restart(%struct.sd* %44)
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = call i32 @ov51x_led_control(%struct.sd* %46, i32 1)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  ret i32 %50
}

declare dso_local i32 @ov511_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @ov518_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @ov519_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @w9968cf_mode_init_regs(%struct.sd*) #1

declare dso_local i32 @set_ov_sensor_window(%struct.sd*) #1

declare dso_local i32 @sd_reset_snapshot(%struct.gspca_dev*) #1

declare dso_local i32 @ov51x_restart(%struct.sd*) #1

declare dso_local i32 @ov51x_led_control(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
