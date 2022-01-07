; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @cit_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_set_brightness(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %48 [
    i32 132, label %12
    i32 133, label %12
    i32 131, label %13
    i32 130, label %23
    i32 129, label %31
    i32 128, label %40
  ]

12:                                               ; preds = %2, %2
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %14, i32 49, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %17, i32 50, i32 %18)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %20, i32 51, i32 %21)
  br label %48

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 2254
  %26 = sdiv i32 %25, 1000
  %27 = add nsw i32 96, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %28, i32 26, i32 %29)
  br label %48

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 12
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 12, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %37, i32 54, i32 %38)
  br label %48

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 2794
  %43 = sdiv i32 %42, 1000
  %44 = add nsw i32 4, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cit_model4_BrightnessPacket(%struct.gspca_dev* %45, i32 %46)
  br label %48

48:                                               ; preds = %2, %40, %36, %23, %13, %12
  ret i32 0
}

declare dso_local i32 @cit_Packet_Format1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model2_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model4_BrightnessPacket(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
