; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %5, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %11 = load %struct.sd*, %struct.sd** %5, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds i32, i32* %10, i64 1
  %15 = load %struct.sd*, %struct.sd** %5, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 16, i32* %23, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 30, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load %struct.sd*, %struct.sd** %5, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %95 [
    i32 131, label %34
    i32 130, label %34
    i32 128, label %34
    i32 129, label %34
    i32 134, label %73
    i32 132, label %73
    i32 133, label %73
    i32 135, label %83
  ]

34:                                               ; preds = %30, %30, %30, %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 547
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 547, i32* %7, align 4
  br label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = or i32 %42, 32
  store i32 %43, i32* %41, align 16
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 16, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 2
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 16, i32* %48, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %51 = call i32 @i2c_w(%struct.gspca_dev* %49, i32* %50)
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 4, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 3
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 16, i32* %56, align 4
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %59 = call i32 @i2c_w(%struct.gspca_dev* %57, i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 30, i32* %63, align 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = or i32 %65, 48
  store i32 %66, i32* %64, align 16
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 45, i32* %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 8
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %71, i32* %72, align 16
  br label %96

73:                                               ; preds = %30, %30, %30
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = or i32 %75, 48
  store i32 %76, i32* %74, align 16
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 9, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 8
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %81, i32* %82, align 16
  br label %96

83:                                               ; preds = %30
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = or i32 %85, 64
  store i32 %86, i32* %84, align 16
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 37, i32* %87, align 8
  %88 = load i32, i32* %4, align 4
  %89 = ashr i32 %88, 5
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 %91, 3
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %92, i32* %93, align 16
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  store i32 0, i32* %94, align 4
  br label %96

95:                                               ; preds = %30
  br label %100

96:                                               ; preds = %83, %73, %40
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %99 = call i32 @i2c_w(%struct.gspca_dev* %97, i32* %98)
  br label %100

100:                                              ; preds = %96, %95
  ret void
}

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
