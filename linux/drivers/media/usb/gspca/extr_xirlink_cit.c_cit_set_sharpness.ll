; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_set_sharpness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_set_sharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, i16, i16, i16 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@cit_set_sharpness.sa = internal constant [7 x i16] [i16 17, i16 19, i16 22, i16 24, i16 26, i16 8, i16 10], align 2
@cit_model1_ntries = common dso_local global i32 0, align 4
@cit_set_sharpness.sv = internal constant [7 x %struct.anon] [%struct.anon { i16 0, i16 0, i16 5, i16 20 }, %struct.anon { i16 1, i16 4, i16 5, i16 20 }, %struct.anon { i16 2, i16 4, i16 5, i16 20 }, %struct.anon { i16 3, i16 4, i16 5, i16 20 }, %struct.anon { i16 3, i16 5, i16 5, i16 20 }, %struct.anon { i16 3, i16 6, i16 5, i16 20 }, %struct.anon { i16 3, i16 7, i16 5, i16 20 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i64)* @cit_set_sharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_set_sharpness(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %53 [
    i32 132, label %12
    i32 130, label %12
    i32 128, label %12
    i32 133, label %12
    i32 131, label %13
    i32 129, label %28
  ]

12:                                               ; preds = %2, %2, %2, %2
  br label %53

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @cit_model1_ntries, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [7 x i16], [7 x i16]* @cit_set_sharpness.sa, i64 0, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %19, i32 19, i16 zeroext %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %14

27:                                               ; preds = %14
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 8
  %34 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %29, i32 96, i16 zeroext %33)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 2
  %40 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %35, i32 97, i16 zeroext %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  %45 = load i16, i16* %44, align 4
  %46 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %41, i32 98, i16 zeroext %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_sharpness.sv, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 3
  %51 = load i16, i16* %50, align 2
  %52 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %47, i32 99, i16 zeroext %51)
  br label %53

53:                                               ; preds = %2, %28, %27, %12
  ret i32 0
}

declare dso_local i32 @cit_PacketFormat2(%struct.gspca_dev*, i32, i16 zeroext) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
