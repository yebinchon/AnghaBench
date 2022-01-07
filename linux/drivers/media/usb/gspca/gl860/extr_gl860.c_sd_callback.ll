; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_sd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_sd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 (%struct.gspca_dev.0*)* }
%struct.gspca_dev.0 = type opaque

@_OV9655_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_callback(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load i32, i32* @_OV9655_, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %1
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = bitcast i32* %4 to i8*
  %13 = call i32 @ctrl_in(%struct.gspca_dev* %11, i32 192, i32 2, i32 0, i32 0, i32 1, i8* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 200
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 64
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i1 [ true, %10 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, -4
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, -3
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %24, %19
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.sd*, %struct.sd** %3, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.sd*, %struct.sd** %3, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %55, %52
  br label %84

84:                                               ; preds = %83, %1
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 3
  %92 = load i32 (%struct.gspca_dev.0*)*, i32 (%struct.gspca_dev.0*)** %91, align 8
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = bitcast %struct.gspca_dev* %93 to %struct.gspca_dev.0*
  %95 = call i32 %92(%struct.gspca_dev.0* %94)
  br label %96

96:                                               ; preds = %89, %84
  ret void
}

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
