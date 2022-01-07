; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Start streaming at %dx%d\0A\00", align 1
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
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jpeg_define(i32 %8, i32 %12, i32 %16, i32 33)
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jpeg_set_qual(i32 %20, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = load i32, i32* @D_STREAM, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @jlj_start(%struct.gspca_dev* %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @jlj_start(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
