; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.gspca_dev = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sd = type { i64, i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@sensor_data = common dso_local global %struct.TYPE_8__* null, align 8
@F_SIF = common dso_local global i32 0, align 4
@AUTOGAIN_IGNORE_FRAMES = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @do_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autogain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 4
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %98

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sensor_data, align 8
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @F_SIF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 500, i32* %4, align 4
  store i32 5000, i32* %5, align 4
  br label %39

38:                                               ; preds = %26
  store i32 1500, i32* %4, align 4
  store i32 13000, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 127
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 500
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @gspca_coarse_grained_expo_autogain(%struct.gspca_dev* %61, i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i8*, i8** @AUTOGAIN_IGNORE_FRAMES, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %60
  br label %98

73:                                               ; preds = %53
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = mul nsw i32 %79, 9
  %81 = sdiv i32 %80, 10
  store i32 %81, i32* %7, align 4
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @gspca_expo_autogain(%struct.gspca_dev* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %73
  %93 = load i8*, i8** @AUTOGAIN_IGNORE_FRAMES, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.sd*, %struct.sd** %3, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %73
  br label %98

98:                                               ; preds = %15, %21, %97, %72
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @gspca_coarse_grained_expo_autogain(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i64 @gspca_expo_autogain(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
