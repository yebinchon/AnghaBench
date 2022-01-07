; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov51x_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov51x_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"stopping\0A\00", align 1
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@OV519_R51_RESET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov51x_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_stop(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = bitcast %struct.sd* %4 to %struct.gspca_dev*
  store %struct.gspca_dev* %5, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = load i32, i32* @D_STREAM, align 4
  %8 = call i32 @gspca_dbg(%struct.gspca_dev* %6, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %37 [
    i32 134, label %14
    i32 133, label %14
    i32 132, label %18
    i32 131, label %18
    i32 130, label %22
    i32 129, label %31
    i32 128, label %34
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = load i32, i32* @R51x_SYS_RESET, align 4
  %17 = call i32 @reg_w(%struct.sd* %15, i32 %16, i32 61)
  br label %37

18:                                               ; preds = %1, %1
  %19 = load %struct.sd*, %struct.sd** %2, align 8
  %20 = load i32, i32* @R51x_SYS_RESET, align 4
  %21 = call i32 @reg_w_mask(%struct.sd* %19, i32 %20, i32 58, i32 58)
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = load i32, i32* @OV519_R51_RESET1, align 4
  %25 = call i32 @reg_w(%struct.sd* %23, i32 %24, i32 15)
  %26 = load %struct.sd*, %struct.sd** %2, align 8
  %27 = load i32, i32* @OV519_R51_RESET1, align 4
  %28 = call i32 @reg_w(%struct.sd* %26, i32 %27, i32 0)
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = call i32 @reg_w(%struct.sd* %29, i32 34, i32 0)
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.sd*, %struct.sd** %2, align 8
  %33 = call i32 @reg_w_mask(%struct.sd* %32, i32 15, i32 0, i32 2)
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.sd*, %struct.sd** %2, align 8
  %36 = call i32 @reg_w(%struct.sd* %35, i32 60, i32 2565)
  br label %37

37:                                               ; preds = %1, %34, %31, %22, %18, %14
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
