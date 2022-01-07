; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_model0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_model0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model0(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i16 0, i16* %4, align 2
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = call i32 @cit_get_clock_div(%struct.gspca_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = call i32 @cit_write_reg(%struct.gspca_dev* %13, i16 zeroext 0, i32 256)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = call i32 @cit_write_reg(%struct.gspca_dev* %15, i16 zeroext 3, i32 1080)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @cit_write_reg(%struct.gspca_dev* %17, i16 zeroext 30, i32 1067)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i16 zeroext 65, i32 1068)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = call i32 @cit_write_reg(%struct.gspca_dev* %21, i16 zeroext 8, i32 1078)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @cit_write_reg(%struct.gspca_dev* %23, i16 zeroext 36, i32 1027)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @cit_write_reg(%struct.gspca_dev* %25, i16 zeroext 44, i32 1028)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @cit_write_reg(%struct.gspca_dev* %27, i16 zeroext 2, i32 1062)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @cit_write_reg(%struct.gspca_dev* %29, i16 zeroext 20, i32 1063)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %74 [
    i32 160, label %35
    i32 176, label %48
    i32 320, label %61
  ]

35:                                               ; preds = %12
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i32 @cit_write_reg(%struct.gspca_dev* %36, i16 zeroext 4, i32 267)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @cit_write_reg(%struct.gspca_dev* %38, i16 zeroext 1, i32 266)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @cit_write_reg(%struct.gspca_dev* %40, i16 zeroext 16, i32 258)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = call i32 @cit_write_reg(%struct.gspca_dev* %42, i16 zeroext 160, i32 259)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = call i32 @cit_write_reg(%struct.gspca_dev* %44, i16 zeroext 0, i32 260)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @cit_write_reg(%struct.gspca_dev* %46, i16 zeroext 120, i32 261)
  br label %74

48:                                               ; preds = %12
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = call i32 @cit_write_reg(%struct.gspca_dev* %49, i16 zeroext 6, i32 267)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = call i32 @cit_write_reg(%struct.gspca_dev* %51, i16 zeroext 0, i32 266)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = call i32 @cit_write_reg(%struct.gspca_dev* %53, i16 zeroext 5, i32 258)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = call i32 @cit_write_reg(%struct.gspca_dev* %55, i16 zeroext 176, i32 259)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %58 = call i32 @cit_write_reg(%struct.gspca_dev* %57, i16 zeroext 0, i32 260)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = call i32 @cit_write_reg(%struct.gspca_dev* %59, i16 zeroext 144, i32 261)
  br label %74

61:                                               ; preds = %12
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @cit_write_reg(%struct.gspca_dev* %62, i16 zeroext 8, i32 267)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = call i32 @cit_write_reg(%struct.gspca_dev* %64, i16 zeroext 4, i32 266)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = call i32 @cit_write_reg(%struct.gspca_dev* %66, i16 zeroext 5, i32 258)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %69 = call i32 @cit_write_reg(%struct.gspca_dev* %68, i16 zeroext 160, i32 259)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %71 = call i32 @cit_write_reg(%struct.gspca_dev* %70, i16 zeroext 16, i32 260)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = call i32 @cit_write_reg(%struct.gspca_dev* %72, i16 zeroext 120, i32 261)
  br label %74

74:                                               ; preds = %12, %61, %48, %35
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = call i32 @cit_write_reg(%struct.gspca_dev* %75, i16 zeroext 0, i32 265)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = trunc i32 %78 to i16
  %80 = call i32 @cit_write_reg(%struct.gspca_dev* %77, i16 zeroext %79, i32 273)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %74, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @cit_get_clock_div(%struct.gspca_dev*) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
