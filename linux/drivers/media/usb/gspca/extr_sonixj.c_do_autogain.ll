; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_do_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_do_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32, i32, i32 }

@AG_CNT_START = common dso_local global i64 0, align 8
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mean lum %d\0A\00", align 1
@SENSOR_PO2030N = common dso_local global i32 0, align 4
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
  store i32 130, i32* %6, align 4
  store i32 20, i32* %7, align 4
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %147

15:                                               ; preds = %1
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %147

22:                                               ; preds = %15
  %23 = load i64, i64* @AG_CNT_START, align 8
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 3
  %28 = call i32 @atomic_read(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = load i32, i32* @D_FRAM, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @gspca_dbg(%struct.gspca_dev* %29, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SENSOR_PO2030N, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %22
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @gspca_expo_autogain(%struct.gspca_dev* %39, i32 %40, i32 %41, i32 %42, i32 15, i32 1024)
  br label %147

44:                                               ; preds = %22
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %147

56:                                               ; preds = %50, %44
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %124 [
    i32 131, label %60
    i32 130, label %80
    i32 128, label %102
    i32 129, label %102
  ]

60:                                               ; preds = %56
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  %67 = ashr i32 %66, 6
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i8* @expo_adjust(%struct.gspca_dev* %74, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.sd*, %struct.sd** %3, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %146

80:                                               ; preds = %56
  %81 = load %struct.sd*, %struct.sd** %3, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %85, %86
  %88 = ashr i32 %87, 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 %96, 8
  %98 = call i8* @expo_adjust(%struct.gspca_dev* %95, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %146

102:                                              ; preds = %56, %56
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %106, %107
  %109 = ashr i32 %108, 2
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %102
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i8* @expo_adjust(%struct.gspca_dev* %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.sd*, %struct.sd** %3, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = call i32 @setredblue(%struct.gspca_dev* %122)
  br label %146

124:                                              ; preds = %56
  %125 = load %struct.sd*, %struct.sd** %3, align 8
  %126 = getelementptr inbounds %struct.sd, %struct.sd* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %4, align 4
  %130 = sub nsw i32 %128, %129
  %131 = ashr i32 %130, 6
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %124
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i8* @expo_adjust(%struct.gspca_dev* %138, i32 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.sd*, %struct.sd** %3, align 8
  %143 = getelementptr inbounds %struct.sd, %struct.sd* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = call i32 @setredblue(%struct.gspca_dev* %144)
  br label %146

146:                                              ; preds = %137, %115, %94, %73
  br label %147

147:                                              ; preds = %14, %21, %38, %146, %50
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @gspca_expo_autogain(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @expo_adjust(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setredblue(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
