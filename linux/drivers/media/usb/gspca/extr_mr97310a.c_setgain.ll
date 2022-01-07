; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_setgain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32 }

@CAM_TYPE_CIF = common dso_local global i64 0, align 8
@CAM_TYPE_VGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0, i32 %1) #0 {
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
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CAM_TYPE_CIF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.sd*, %struct.sd** %5, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @sensor_write1(%struct.gspca_dev* %20, i32 14, i32 %21)
  br label %59

23:                                               ; preds = %14, %2
  %24 = load %struct.sd*, %struct.sd** %5, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CAM_TYPE_VGA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load %struct.sd*, %struct.sd** %5, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  store i32 10, i32* %6, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 17
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @sensor_write1(%struct.gspca_dev* %39, i32 %40, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @sensor_write1(%struct.gspca_dev* %44, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %6, align 4
  br label %35

53:                                               ; preds = %35
  br label %58

54:                                               ; preds = %29, %23
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @sensor_write1(%struct.gspca_dev* %55, i32 16, i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  br label %59

59:                                               ; preds = %58, %19
  ret void
}

declare dso_local i32 @sensor_write1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
