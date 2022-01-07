; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_set_alternate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_set_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32, i32, i32*, i32, i32 }

@STK1160_MIN_PKT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"setting alternate %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"minimum isoc packet size: %u (alt=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"setting alt %d with wMaxPacketSize=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*)* @stk1160_set_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_set_alternate(%struct.stk1160* %0) #0 {
  %2 = alloca %struct.stk1160*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %2, align 8
  %7 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %8 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @STK1160_MIN_PKT_SIZE, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %14 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %19 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %30 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %58

31:                                               ; preds = %17
  %32 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %33 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %40 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %43 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %38, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %52 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %31
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %11

58:                                               ; preds = %27, %11
  %59 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %60 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @stk1160_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %64 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %71 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i32, ...) @stk1160_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %75 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %78 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %81 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, ...) @stk1160_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %85)
  %87 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %88 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %91 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = call i32 @usb_set_interface(i32 %89, i32 0, i64 %93)
  br label %95

95:                                               ; preds = %68, %58
  %96 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %97 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %100 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %103 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %98, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %6, align 4
  %110 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %111 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %114 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %120 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @stk1160_dbg(i8*, i32, ...) #1

declare dso_local i32 @usb_set_interface(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
