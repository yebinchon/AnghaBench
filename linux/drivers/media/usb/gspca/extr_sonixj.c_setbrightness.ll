; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 128
  %16 = ashr i32 %15, 2
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %81 [
    i32 135, label %20
    i32 133, label %25
    i32 132, label %42
    i32 130, label %42
    i32 131, label %50
    i32 134, label %58
    i32 129, label %65
    i32 128, label %73
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 31
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %81

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 12
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ugt i32 %28, 3000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 3000000, i32* %4, align 4
  br label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %32, 672
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 672, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i8* @expo_adjust(%struct.gspca_dev* %37, i32 %38)
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %81

42:                                               ; preds = %1, %1
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 4
  store i32 %44, i32* %4, align 4
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @expo_adjust(%struct.gspca_dev* %45, i32 %46)
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %81

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %51, 2
  store i32 %52, i32* %4, align 4
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i8* @expo_adjust(%struct.gspca_dev* %53, i32 %54)
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %81

58:                                               ; preds = %1
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %4, align 4
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i8* @expo_adjust(%struct.gspca_dev* %60, i32 %61)
  %63 = load %struct.sd*, %struct.sd** %3, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %85

65:                                               ; preds = %1
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 2
  store i32 %67, i32* %4, align 4
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i8* @expo_adjust(%struct.gspca_dev* %68, i32 %69)
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %85

73:                                               ; preds = %1
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, 2
  store i32 %75, i32* %4, align 4
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i8* @expo_adjust(%struct.gspca_dev* %76, i32 %77)
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %85

81:                                               ; preds = %1, %50, %42, %36, %24
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @reg_w1(%struct.gspca_dev* %82, i32 150, i32 %83)
  br label %85

85:                                               ; preds = %81, %73, %65, %58
  ret void
}

declare dso_local i8* @expo_adjust(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
