; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sethvflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sethvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.gspca_dev, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sethvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethvflip(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %77 [
    i32 131, label %10
    i32 130, label %24
    i32 129, label %38
    i32 128, label %52
  ]

10:                                               ; preds = %1
  store i32 24, i32* %4, align 4
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @i2c_w1(%struct.gspca_dev* %21, i32 1, i32 %22)
  br label %77

24:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  %25 = load %struct.sd*, %struct.sd** %3, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 128
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @i2c_w1(%struct.gspca_dev* %35, i32 117, i32 %36)
  br label %77

38:                                               ; preds = %1
  store i32 6, i32* %4, align 4
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 128
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @i2c_w1(%struct.gspca_dev* %49, i32 117, i32 %50)
  br label %77

52:                                               ; preds = %1
  store i32 10, i32* %4, align 4
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, 128
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.sd*, %struct.sd** %3, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, 64
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 1
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @i2c_w1(%struct.gspca_dev* %74, i32 30, i32 %75)
  br label %77

77:                                               ; preds = %1, %72, %48, %34, %20
  ret void
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
