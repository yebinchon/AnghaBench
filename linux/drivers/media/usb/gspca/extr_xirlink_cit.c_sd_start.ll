; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = call i32 @cit_get_packet_size(%struct.gspca_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %36 [
    i32 132, label %18
    i32 131, label %21
    i32 130, label %24
    i32 129, label %27
    i32 128, label %30
    i32 133, label %33
  ]

18:                                               ; preds = %14
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = call i32 @cit_start_model0(%struct.gspca_dev* %19)
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @cit_start_model1(%struct.gspca_dev* %22)
  br label %36

24:                                               ; preds = %14
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @cit_start_model2(%struct.gspca_dev* %25)
  br label %36

27:                                               ; preds = %14
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @cit_start_model3(%struct.gspca_dev* %28)
  br label %36

30:                                               ; preds = %14
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = call i32 @cit_start_model4(%struct.gspca_dev* %31)
  br label %36

33:                                               ; preds = %14
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @cit_start_ibm_netcam_pro(%struct.gspca_dev* %34)
  br label %36

36:                                               ; preds = %14, %33, %30, %27, %24, %21, %18
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 8
  %40 = call i32 @cit_write_reg(%struct.gspca_dev* %37, i32 %39, i32 262)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @cit_write_reg(%struct.gspca_dev* %41, i32 %43, i32 263)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = call i32 @cit_restart_stream(%struct.gspca_dev* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @cit_get_packet_size(%struct.gspca_dev*) #1

declare dso_local i32 @cit_start_model0(%struct.gspca_dev*) #1

declare dso_local i32 @cit_start_model1(%struct.gspca_dev*) #1

declare dso_local i32 @cit_start_model2(%struct.gspca_dev*) #1

declare dso_local i32 @cit_start_model3(%struct.gspca_dev*) #1

declare dso_local i32 @cit_start_model4(%struct.gspca_dev*) #1

declare dso_local i32 @cit_start_ibm_netcam_pro(%struct.gspca_dev*) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_restart_stream(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
