; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_sd_stopN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_sd_stopN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@sd_stopN.stop_commands = internal global [4 x [2 x i32]] [[2 x i32] [i32 113, i32 0], [2 x i32] [i32 112, i32 9], [2 x i32] [i32 113, i32 128], [2 x i32] [i32 112, i32 5]], align 16
@JEILINJ_MAX_TRANSFER = common dso_local global i32 0, align 4
@JEILINJ_DATA_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stopN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stopN(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  br label %5

5:                                                ; preds = %66, %1
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %24 = load i32, i32* @JEILINJ_DATA_TIMEOUT, align 4
  %25 = call i32 @usb_bulk_msg(i32 %8, i32 %15, i32* %22, i32 %23, i32* null, i32 %24)
  store i32 0, i32* %3, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %57, %5
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 255
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 217
  br label %53

53:                                               ; preds = %45, %38
  %54 = phi i1 [ true, %38 ], [ %52, %45 ]
  br label %55

55:                                               ; preds = %53, %33
  %56 = phi i1 [ false, %33 ], [ %54, %53 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %33

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @JEILINJ_MAX_TRANSFER, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  br label %5

67:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @ARRAY_SIZE(i32** bitcast ([4 x [2 x i32]]* @sd_stopN.stop_commands to i32**))
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* @sd_stopN.stop_commands, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 0
  %78 = call i32 @jlj_write2(%struct.gspca_dev* %73, i32* %77)
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %68

82:                                               ; preds = %68
  ret void
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @jlj_write2(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
