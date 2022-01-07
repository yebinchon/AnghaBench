; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_transfer_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_transfer_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sd = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DISCARD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*)* @transfer_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_check(%struct.gspca_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 6
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @DISCARD_PACKET, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  store i32 -5, i32* %6, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.sd*, %struct.sd** %5, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 100
  %25 = load %struct.sd*, %struct.sd** %5, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %27, %37
  %39 = sdiv i32 %24, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 85
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i32 -3, i32* %6, align 4
  br label %48

43:                                               ; preds = %20
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 75
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 2, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %123

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.sd*, %struct.sd** %5, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.sd*, %struct.sd** %5, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, -6
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load %struct.sd*, %struct.sd** %5, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 12
  br i1 %66, label %67, label %122

67:                                               ; preds = %62, %52
  %68 = load %struct.sd*, %struct.sd** %5, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.sd*, %struct.sd** %5, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.sd*, %struct.sd** %5, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %79, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %67
  %87 = load %struct.sd*, %struct.sd** %5, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  br label %107

92:                                               ; preds = %67
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.sd*, %struct.sd** %5, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %93, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.sd*, %struct.sd** %5, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %100, %92
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.sd*, %struct.sd** %5, align 8
  %114 = getelementptr inbounds %struct.sd, %struct.sd* %113, i32 0, i32 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load %struct.sd*, %struct.sd** %5, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 3
  %120 = call i32 @schedule_work(i32* %119)
  br label %121

121:                                              ; preds = %111, %107
  br label %122

122:                                              ; preds = %121, %62
  br label %126

123:                                              ; preds = %49
  %124 = load %struct.sd*, %struct.sd** %5, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 2
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %122
  %127 = load %struct.sd*, %struct.sd** %5, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.sd*, %struct.sd** %5, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
