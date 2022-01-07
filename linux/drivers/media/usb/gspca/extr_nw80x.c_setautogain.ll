; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_setautogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_setautogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32, i32 }

@AG_CNT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setautogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setautogain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.sd*, %struct.sd** %5, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  br label %115

15:                                               ; preds = %2
  %16 = load i32, i32* @AG_CNT_START, align 4
  %17 = load %struct.sd*, %struct.sd** %5, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = call i32 @reg_r(%struct.gspca_dev* %19, i32 4100, i32 1)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = load %struct.sd*, %struct.sd** %5, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %115

40:                                               ; preds = %15
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = call i32 @reg_r(%struct.gspca_dev* %41, i32 4113, i32 8)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %48, %53
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = sub nsw i32 %54, %60
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %61, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %69 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %73, %78
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = sub nsw i32 %79, %85
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %88 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %86, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.sd*, %struct.sd** %5, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sd*, %struct.sd** %5, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %40
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %108 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %106, %110
  %112 = load %struct.sd*, %struct.sd** %5, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %102, %40
  br label %115

115:                                              ; preds = %12, %114, %28
  ret void
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
