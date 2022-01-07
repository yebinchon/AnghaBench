; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov51x_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov51x_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i64 }
%struct.gspca_dev = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"restarting\0A\00", align 1
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@OV519_R51_RESET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov51x_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_restart(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = bitcast %struct.sd* %4 to %struct.gspca_dev*
  store %struct.gspca_dev* %5, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = load i32, i32* @D_STREAM, align 4
  %8 = call i32 @gspca_dbg(%struct.gspca_dev* %6, i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %45 [
    i32 134, label %20
    i32 133, label %20
    i32 132, label %24
    i32 131, label %24
    i32 130, label %30
    i32 129, label %39
    i32 128, label %42
  ]

20:                                               ; preds = %14, %14
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = load i32, i32* @R51x_SYS_RESET, align 4
  %23 = call i32 @reg_w(%struct.sd* %21, i32 %22, i32 0)
  br label %45

24:                                               ; preds = %14, %14
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = call i32 @reg_w(%struct.sd* %25, i32 47, i32 128)
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = load i32, i32* @R51x_SYS_RESET, align 4
  %29 = call i32 @reg_w(%struct.sd* %27, i32 %28, i32 0)
  br label %45

30:                                               ; preds = %14
  %31 = load %struct.sd*, %struct.sd** %2, align 8
  %32 = load i32, i32* @OV519_R51_RESET1, align 4
  %33 = call i32 @reg_w(%struct.sd* %31, i32 %32, i32 15)
  %34 = load %struct.sd*, %struct.sd** %2, align 8
  %35 = load i32, i32* @OV519_R51_RESET1, align 4
  %36 = call i32 @reg_w(%struct.sd* %34, i32 %35, i32 0)
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = call i32 @reg_w(%struct.sd* %37, i32 34, i32 29)
  br label %45

39:                                               ; preds = %14
  %40 = load %struct.sd*, %struct.sd** %2, align 8
  %41 = call i32 @reg_w_mask(%struct.sd* %40, i32 15, i32 2, i32 2)
  br label %45

42:                                               ; preds = %14
  %43 = load %struct.sd*, %struct.sd** %2, align 8
  %44 = call i32 @reg_w(%struct.sd* %43, i32 60, i32 35333)
  br label %45

45:                                               ; preds = %13, %14, %42, %39, %30, %24, %20
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
