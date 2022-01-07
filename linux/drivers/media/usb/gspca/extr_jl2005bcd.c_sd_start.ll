; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Start streaming at vga resolution\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Start streaming at qvga resolution\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Start streaming at cif resolution\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Start streaming at qcif resolution\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unknown resolution specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %41 [
    i32 640, label %17
    i32 320, label %23
    i32 352, label %29
    i32 176, label %35
  ]

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = load i32, i32* @D_STREAM, align 4
  %20 = call i32 @gspca_dbg(%struct.gspca_dev* %18, i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = call i32 @jl2005c_stream_start_vga_lg(%struct.gspca_dev* %21)
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load i32, i32* @D_STREAM, align 4
  %26 = call i32 @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @jl2005c_stream_start_vga_small(%struct.gspca_dev* %27)
  br label %43

29:                                               ; preds = %1
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = load i32, i32* @D_STREAM, align 4
  %32 = call i32 @gspca_dbg(%struct.gspca_dev* %30, i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = call i32 @jl2005c_stream_start_cif_lg(%struct.gspca_dev* %33)
  br label %43

35:                                               ; preds = %1
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = load i32, i32* @D_STREAM, align 4
  %38 = call i32 @gspca_dbg(%struct.gspca_dev* %36, i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = call i32 @jl2005c_stream_start_cif_small(%struct.gspca_dev* %39)
  br label %43

41:                                               ; preds = %1
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %47

43:                                               ; preds = %35, %29, %23, %17
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = call i32 @schedule_work(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @jl2005c_stream_start_vga_lg(%struct.gspca_dev*) #1

declare dso_local i32 @jl2005c_stream_start_vga_small(%struct.gspca_dev*) #1

declare dso_local i32 @jl2005c_stream_start_cif_lg(%struct.gspca_dev*) #1

declare dso_local i32 @jl2005c_stream_start_cif_small(%struct.gspca_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
