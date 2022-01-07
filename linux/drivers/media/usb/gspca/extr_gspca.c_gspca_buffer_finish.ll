; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_gspca_buffer_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_gspca_buffer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.gspca_dev = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.gspca_dev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @gspca_buffer_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gspca_buffer_finish(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %4 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.gspca_dev* @vb2_get_drv_priv(i32 %6)
  store %struct.gspca_dev* %7, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %11, align 8
  %13 = icmp ne i32 (%struct.gspca_dev*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %26, align 8
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 %27(%struct.gspca_dev* %28)
  br label %30

30:                                               ; preds = %14, %22, %15
  ret void
}

declare dso_local %struct.gspca_dev* @vb2_get_drv_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
