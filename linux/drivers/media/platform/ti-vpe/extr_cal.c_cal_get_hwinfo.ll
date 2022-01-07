; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_get_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_get_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_dev = type { i32 }

@CAL_HL_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"CAL_HL_REVISION = 0x%08x (expecting 0x40000200)\0A\00", align 1
@CAL_HL_HWINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"CAL_HL_HWINFO = 0x%08x (expecting 0xA3C90469)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_dev*)* @cal_get_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cal_get_hwinfo(%struct.cal_dev* %0) #0 {
  %2 = alloca %struct.cal_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cal_dev* %0, %struct.cal_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.cal_dev*, %struct.cal_dev** %2, align 8
  %6 = load i32, i32* @CAL_HL_REVISION, align 4
  %7 = call i32 @reg_read(%struct.cal_dev* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.cal_dev*, %struct.cal_dev** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @cal_dbg(i32 3, %struct.cal_dev* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.cal_dev*, %struct.cal_dev** %2, align 8
  %12 = load i32, i32* @CAL_HL_HWINFO, align 4
  %13 = call i32 @reg_read(%struct.cal_dev* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.cal_dev*, %struct.cal_dev** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cal_dbg(i32 3, %struct.cal_dev* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  ret void
}

declare dso_local i32 @reg_read(%struct.cal_dev*, i32) #1

declare dso_local i32 @cal_dbg(i32, %struct.cal_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
