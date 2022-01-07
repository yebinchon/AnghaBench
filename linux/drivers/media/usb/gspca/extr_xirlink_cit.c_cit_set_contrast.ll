; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_set_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, i16, i16 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@cit_model1_ntries = common dso_local global i32 0, align 4
@cit_set_contrast.cv = internal constant [7 x %struct.anon] [%struct.anon { i16 5, i16 5, i16 15 }, %struct.anon { i16 4, i16 4, i16 22 }, %struct.anon { i16 2, i16 3, i16 22 }, %struct.anon { i16 2, i16 8, i16 22 }, %struct.anon { i16 1, i16 12, i16 22 }, %struct.anon { i16 1, i16 14, i16 22 }, %struct.anon { i16 1, i16 16, i16 22 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @cit_set_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_set_contrast(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %5, align 8
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %90 [
    i32 132, label %15
    i32 130, label %40
    i32 128, label %40
    i32 131, label %41
    i32 129, label %60
    i32 133, label %84
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = sdiv i32 %17, 1333
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i32 %20, i32 1058)
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 2000
  %24 = sdiv i32 %23, 1333
  store i32 %24, i32* %6, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cit_write_reg(%struct.gspca_dev* %25, i32 %26, i32 1059)
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 4000
  %30 = sdiv i32 %29, 1333
  store i32 %30, i32* %6, align 4
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %31, i32 %32, i32 1060)
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, 8000
  %36 = sdiv i32 %35, 1333
  store i32 %36, i32* %6, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cit_write_reg(%struct.gspca_dev* %37, i32 %38, i32 1061)
  br label %90

40:                                               ; preds = %2, %2
  br label %90

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 20, %42
  %44 = mul nsw i32 %43, 1000
  %45 = sdiv i32 %44, 1333
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %56, %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @cit_model1_ntries, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %51, i32 20, i32 %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = call i32 @cit_send_FF_04_02(%struct.gspca_dev* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %46

59:                                               ; preds = %46
  br label %90

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = sdiv i32 %61, 3
  store i32 %62, i32* %9, align 4
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_contrast.cv, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %68 = load i16, i16* %67, align 2
  %69 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %63, i32 103, i16 zeroext %68)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_contrast.cv, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  %75 = load i16, i16* %74, align 2
  %76 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %70, i32 91, i16 zeroext %75)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @cit_set_contrast.cv, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 2
  %82 = load i16, i16* %81, align 2
  %83 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %77, i32 92, i16 zeroext %82)
  br label %90

84:                                               ; preds = %2
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  %88 = trunc i32 %87 to i16
  %89 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %85, i32 91, i16 zeroext %88)
  br label %90

90:                                               ; preds = %2, %84, %60, %59, %40, %15
  ret i32 0
}

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_Packet_Format1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_send_FF_04_02(%struct.gspca_dev*) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
