; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_reset_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_reset_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i64 }

@R51x_SYS_SNAP = common dso_local global i32 0, align 4
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_reset_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_reset_snapshot(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %38 [
    i32 132, label %17
    i32 131, label %17
    i32 130, label %24
    i32 129, label %24
    i32 128, label %31
  ]

17:                                               ; preds = %11, %11
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = load i32, i32* @R51x_SYS_SNAP, align 4
  %20 = call i32 @reg_w(%struct.sd* %18, i32 %19, i32 2)
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = load i32, i32* @R51x_SYS_SNAP, align 4
  %23 = call i32 @reg_w(%struct.sd* %21, i32 %22, i32 0)
  br label %38

24:                                               ; preds = %11, %11
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = load i32, i32* @R51x_SYS_SNAP, align 4
  %27 = call i32 @reg_w(%struct.sd* %25, i32 %26, i32 2)
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = load i32, i32* @R51x_SYS_SNAP, align 4
  %30 = call i32 @reg_w(%struct.sd* %28, i32 %29, i32 1)
  br label %38

31:                                               ; preds = %11
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = load i32, i32* @R51x_SYS_RESET, align 4
  %34 = call i32 @reg_w(%struct.sd* %32, i32 %33, i32 64)
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = load i32, i32* @R51x_SYS_RESET, align 4
  %37 = call i32 @reg_w(%struct.sd* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %10, %11, %31, %24, %17
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
