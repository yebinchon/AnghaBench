; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_set_frame_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_set_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_s = type { i64, i64, i64, i64 }
%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sd = type { i64, i64 }
%struct.rate_s.0 = type opaque

@set_frame_rate.rate_0 = internal constant [5 x %struct.rate_s] [%struct.rate_s { i64 60, i64 1, i64 193, i64 4 }, %struct.rate_s { i64 50, i64 1, i64 65, i64 2 }, %struct.rate_s { i64 40, i64 2, i64 193, i64 4 }, %struct.rate_s { i64 30, i64 4, i64 129, i64 2 }, %struct.rate_s { i64 15, i64 3, i64 65, i64 4 }], align 16
@set_frame_rate.rate_1 = internal constant [10 x %struct.rate_s] [%struct.rate_s { i64 187, i64 1, i64 129, i64 2 }, %struct.rate_s { i64 150, i64 1, i64 193, i64 4 }, %struct.rate_s { i64 137, i64 2, i64 193, i64 2 }, %struct.rate_s { i64 125, i64 2, i64 129, i64 2 }, %struct.rate_s { i64 100, i64 2, i64 193, i64 4 }, %struct.rate_s { i64 75, i64 3, i64 193, i64 4 }, %struct.rate_s { i64 60, i64 4, i64 193, i64 4 }, %struct.rate_s { i64 50, i64 2, i64 65, i64 4 }, %struct.rate_s { i64 37, i64 3, i64 65, i64 4 }, %struct.rate_s { i64 30, i64 4, i64 65, i64 4 }], align 16
@SENSOR_OV772x = common dso_local global i64 0, align 8
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"frame_rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @set_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_frame_rate(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rate_s*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SENSOR_OV772x, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  store %struct.rate_s* getelementptr inbounds ([5 x %struct.rate_s], [5 x %struct.rate_s]* @set_frame_rate.rate_0, i64 0, i64 0), %struct.rate_s** %5, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.rate_s.0* bitcast ([5 x %struct.rate_s]* @set_frame_rate.rate_0 to %struct.rate_s.0*))
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %14
  store %struct.rate_s* getelementptr inbounds ([10 x %struct.rate_s], [10 x %struct.rate_s]* @set_frame_rate.rate_1, i64 0, i64 0), %struct.rate_s** %5, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.rate_s.0* bitcast ([10 x %struct.rate_s]* @set_frame_rate.rate_1 to %struct.rate_s.0*))
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %40 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %47

44:                                               ; preds = %35
  %45 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %46 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %45, i32 1
  store %struct.rate_s* %46, %struct.rate_s** %5, align 8
  br label %31

47:                                               ; preds = %43, %31
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %50 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sccb_reg_write(%struct.gspca_dev* %48, i32 17, i64 %51)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %55 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @sccb_reg_write(%struct.gspca_dev* %53, i32 13, i64 %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %60 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ov534_reg_write(%struct.gspca_dev* %58, i32 229, i64 %61)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = load i32, i32* @D_PROBE, align 4
  %65 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %66 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @gspca_dbg(%struct.gspca_dev* %63, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %47, %13
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.rate_s.0*) #1

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i64) #1

declare dso_local i32 @ov534_reg_write(%struct.gspca_dev*, i32, i64) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
