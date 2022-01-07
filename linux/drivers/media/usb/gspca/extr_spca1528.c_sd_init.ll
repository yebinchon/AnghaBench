; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca1528.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca1528.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32* }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @reg_w(%struct.gspca_dev* %3, i32 0, i32 1, i32 8295)
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = call i32 @reg_w(%struct.gspca_dev* %5, i32 0, i32 208, i32 8299)
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @reg_w(%struct.gspca_dev* %7, i32 0, i32 0, i32 8300)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @reg_w(%struct.gspca_dev* %9, i32 0, i32 1, i32 8297)
  %11 = call i32 @msleep(i32 8)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 0, i32 192, i32 8299)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w(%struct.gspca_dev* %14, i32 0, i32 0, i32 8300)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @reg_w(%struct.gspca_dev* %16, i32 0, i32 1, i32 8297)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_r(%struct.gspca_dev* %18, i32 32, i32 0, i32 1)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @reg_r(%struct.gspca_dev* %20, i32 32, i32 0, i32 5)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @reg_r(%struct.gspca_dev* %22, i32 35, i32 0, i32 64)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32, i32* @D_PROBE, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 28
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 48
  %34 = call i32 @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %29, i32* %33)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @reg_r(%struct.gspca_dev* %35, i32 35, i32 1, i32 64)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  ret i32 %39
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
