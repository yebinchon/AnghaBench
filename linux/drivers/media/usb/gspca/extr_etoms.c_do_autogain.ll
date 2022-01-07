; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { i64 }

@AG_CNT_START = common dso_local global i64 0, align 8
@ET_LUMA_CENTER = common dso_local global i32 0, align 4
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Etoms luma G %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Etoms Gbright %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @do_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autogain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %3, align 8
  store i32 128, i32* %5, align 4
  store i32 20, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %116

26:                                               ; preds = %19
  %27 = load i64, i64* @AG_CNT_START, align 8
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @Et_getgainG(%struct.gspca_dev* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = load i32, i32* @ET_LUMA_CENTER, align 4
  %34 = call i32 @reg_r(%struct.gspca_dev* %32, i32 %33, i32 4)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 %59, 4
  %61 = sub nsw i32 %58, %60
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 3
  %64 = sub nsw i32 %61, %63
  %65 = ashr i32 %64, 10
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, 7
  %68 = ashr i32 %67, 10
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 %69, 9
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %71, 7
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 %74, 5
  %76 = add nsw i32 %73, %75
  %77 = ashr i32 %76, 10
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @LIMIT(i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = load i32, i32* @D_FRAM, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @gspca_dbg(%struct.gspca_dev* %84, i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %26
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %93, %26
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @BLIMIT(i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = load i32, i32* @D_FRAM, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @gspca_dbg(%struct.gspca_dev* %109, i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @Et_setgainG(%struct.gspca_dev* %113, i32 %114)
  br label %116

116:                                              ; preds = %18, %25, %99, %93
  ret void
}

declare dso_local i32 @Et_getgainG(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @LIMIT(i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @BLIMIT(i32) #1

declare dso_local i32 @Et_setgainG(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
