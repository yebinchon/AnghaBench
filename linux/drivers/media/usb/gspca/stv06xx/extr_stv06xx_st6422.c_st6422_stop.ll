; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.gspca_dev = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Halting stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @st6422_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st6422_stop(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = bitcast %struct.sd* %4 to %struct.gspca_dev*
  store %struct.gspca_dev* %5, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = load i32, i32* @D_STREAM, align 4
  %8 = call i32 @gspca_dbg(%struct.gspca_dev* %6, i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
