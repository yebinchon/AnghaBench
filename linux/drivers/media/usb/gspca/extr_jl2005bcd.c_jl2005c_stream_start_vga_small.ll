; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_jl2005c_stream_start_vga_small.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_jl2005c_stream_start_vga_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@jl2005c_stream_start_vga_small.instruction = internal global [6 x [2 x %struct.TYPE_4__]] [[2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 124, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 125, i32 26 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 2, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 1, i32 0 }, %struct.TYPE_4__ zeroinitializer], [2 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 4, i32 82 }, %struct.TYPE_4__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @jl2005c_stream_start_vga_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jl2005c_stream_start_vga_small(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_4__** bitcast ([6 x [2 x %struct.TYPE_4__]]* @jl2005c_stream_start_vga_small.instruction to %struct.TYPE_4__**))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = call i32 @msleep(i32 60)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x [2 x %struct.TYPE_4__]], [6 x [2 x %struct.TYPE_4__]]* @jl2005c_stream_start_vga_small.instruction, i64 0, i64 %14
  %16 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %17 = call i32 @jl2005c_write2(%struct.gspca_dev* %12, %struct.TYPE_4__* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

26:                                               ; preds = %6
  %27 = call i32 @msleep(i32 60)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__**) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jl2005c_write2(%struct.gspca_dev*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
