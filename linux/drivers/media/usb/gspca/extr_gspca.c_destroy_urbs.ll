; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_destroy_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_destroy_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.urb** }
%struct.urb = type { i32, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kill transfer\0A\00", align 1
@MAX_NURBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"releasing urbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @destroy_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_urbs(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = load i32, i32* @D_STREAM, align 4
  %7 = call i32 @gspca_dbg(%struct.gspca_dev* %5, i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_NURBS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 1
  %15 = load %struct.urb**, %struct.urb*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.urb*, %struct.urb** %15, i64 %17
  %19 = load %struct.urb*, %struct.urb** %18, align 8
  %20 = call i32 @usb_kill_urb(%struct.urb* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = load i32, i32* @D_STREAM, align 4
  %27 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %65, %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAX_NURBS, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  %35 = load %struct.urb**, %struct.urb*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.urb*, %struct.urb** %35, i64 %37
  %39 = load %struct.urb*, %struct.urb** %38, align 8
  store %struct.urb* %39, %struct.urb** %3, align 8
  %40 = load %struct.urb*, %struct.urb** %3, align 8
  %41 = icmp ne %struct.urb* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  br label %65

43:                                               ; preds = %32
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = load %struct.urb**, %struct.urb*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.urb*, %struct.urb** %46, i64 %48
  store %struct.urb* null, %struct.urb** %49, align 8
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.urb*, %struct.urb** %3, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.urb*, %struct.urb** %3, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.urb*, %struct.urb** %3, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_free_coherent(i32 %52, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.urb*, %struct.urb** %3, align 8
  %64 = call i32 @usb_free_urb(%struct.urb* %63)
  br label %65

65:                                               ; preds = %43, %42
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %28

68:                                               ; preds = %28
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
