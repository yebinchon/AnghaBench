; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Dumping sensor registers:\0A\00", align 1
@HDCS_IDENT = common dso_local global i64 0, align 8
@HDCS_ROWEXPH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"reg 0x%02x = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @hdcs_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_dump(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @HDCS_IDENT, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @HDCS_ROWEXPH, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @stv06xx_read_sensor(%struct.sd* %12, i64 %13, i64* %4)
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %7

21:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @stv06xx_read_sensor(%struct.sd*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
