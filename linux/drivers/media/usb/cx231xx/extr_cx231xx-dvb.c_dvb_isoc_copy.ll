; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_dvb_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_dvb_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @dvb_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_isoc_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %9 = icmp ne %struct.cx231xx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %104

11:                                               ; preds = %2
  %12 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DEV_DISCONNECTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %104

19:                                               ; preds = %11
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @print_err_status(%struct.cx231xx* %25, i32 -1, i32 %28)
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %104

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %19
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %100, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %39
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %45
  %57 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @print_err_status(%struct.cx231xx* %57, i32 %58, i32 %59)
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EPROTO, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %100

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.urb*, %struct.urb** %5, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.urb*, %struct.urb** %5, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %81, %89
  %91 = load %struct.urb*, %struct.urb** %5, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dvb_dmx_swfilter(i32* %78, i64 %90, i32 %98)
  br label %100

100:                                              ; preds = %74, %72
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %39

103:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %36, %18, %10
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
