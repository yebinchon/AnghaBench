; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_ddr_ram_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_ddr_ram_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Ram Test: completed %d of %d: pass %d, fail %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7842_ddr_ram_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_ddr_ram_test(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call i32 @io_write(%struct.v4l2_subdev* %9, i32 0, i32 1)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call i32 @io_write(%struct.v4l2_subdev* %11, i32 1, i32 0)
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = call i32 @afe_write(%struct.v4l2_subdev* %13, i32 128, i32 146)
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = call i32 @afe_write(%struct.v4l2_subdev* %15, i32 155, i32 1)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = call i32 @afe_write(%struct.v4l2_subdev* %17, i32 156, i32 96)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = call i32 @afe_write(%struct.v4l2_subdev* %19, i32 158, i32 2)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = call i32 @afe_write(%struct.v4l2_subdev* %21, i32 160, i32 11)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = call i32 @afe_write(%struct.v4l2_subdev* %23, i32 195, i32 2)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = call i32 @io_write(%struct.v4l2_subdev* %25, i32 12, i32 64)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = call i32 @io_write(%struct.v4l2_subdev* %27, i32 21, i32 186)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %30 = call i32 @sdp_write(%struct.v4l2_subdev* %29, i32 18, i32 0)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = call i32 @io_write(%struct.v4l2_subdev* %31, i32 255, i32 4)
  %33 = call i32 @usleep_range(i32 5000, i32 6000)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = call i32 @sdp_write(%struct.v4l2_subdev* %34, i32 18, i32 0)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = call i32 @sdp_io_write(%struct.v4l2_subdev* %36, i32 42, i32 1)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = call i32 @sdp_io_write(%struct.v4l2_subdev* %38, i32 124, i32 25)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %41 = call i32 @sdp_io_write(%struct.v4l2_subdev* %40, i32 128, i32 135)
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %43 = call i32 @sdp_io_write(%struct.v4l2_subdev* %42, i32 129, i32 74)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = call i32 @sdp_io_write(%struct.v4l2_subdev* %44, i32 130, i32 44)
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %47 = call i32 @sdp_io_write(%struct.v4l2_subdev* %46, i32 131, i32 14)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %49 = call i32 @sdp_io_write(%struct.v4l2_subdev* %48, i32 132, i32 148)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %51 = call i32 @sdp_io_write(%struct.v4l2_subdev* %50, i32 133, i32 98)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = call i32 @sdp_io_write(%struct.v4l2_subdev* %52, i32 125, i32 0)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %55 = call i32 @sdp_io_write(%struct.v4l2_subdev* %54, i32 126, i32 26)
  %56 = call i32 @usleep_range(i32 5000, i32 6000)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = call i32 @sdp_io_write(%struct.v4l2_subdev* %57, i32 217, i32 213)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = call i32 @sdp_write(%struct.v4l2_subdev* %59, i32 18, i32 5)
  %61 = call i32 @msleep(i32 20)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %86, %1
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %67 = call i32 @sdp_io_read(%struct.v4l2_subdev* %66, i32 219)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 16
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %65
  %85 = call i32 @msleep(i32 20)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i32, i32* @debug, align 4
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @v4l2_dbg(i32 1, i32 %90, %struct.v4l2_subdev* %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99, %89
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @afe_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @sdp_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @sdp_io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sdp_io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
