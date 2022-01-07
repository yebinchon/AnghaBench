; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_spi_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_spi_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"booting failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SPI not ready: %d\0A\00", align 1
@update_fw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_spi_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_spi_boot(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %9 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %6, align 8
  %10 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %11 = call i32 @s5c73m3_write(%struct.s5c73m3* %10, i32 805306372, i32 65535)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = call i32 @usleep_range(i32 400, i32 500)
  %18 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %19 = call i32 @s5c73m3_system_status_wait(%struct.s5c73m3* %18, i32 12, i32 100, i32 3)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @v4l2_err(%struct.v4l2_subdev* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %99

27:                                               ; preds = %16
  %28 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %29 = call i32 @s5c73m3_write(%struct.s5c73m3* %28, i32 806354964, i32 8518)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %99

34:                                               ; preds = %27
  %35 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %36 = call i32 @s5c73m3_write(%struct.s5c73m3* %35, i32 806354960, i32 8460)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %99

41:                                               ; preds = %34
  %42 = call i32 @usleep_range(i32 200, i32 250)
  %43 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %44 = call i32 @s5c73m3_system_status_wait(%struct.s5c73m3* %43, i32 8461, i32 100, i32 300)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @v4l2_err(%struct.v4l2_subdev* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %56 = call i32 @s5c73m3_load_fw(%struct.v4l2_subdev* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %59 = call i32 @s5c73m3_write(%struct.s5c73m3* %58, i32 805306372, i32 65533)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %57
  %65 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %66 = call i32 @s5c73m3_write(%struct.s5c73m3* %65, i32 806355108, i32 387)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %99

71:                                               ; preds = %64
  %72 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %73 = call i32 @s5c73m3_write(%struct.s5c73m3* %72, i32 805306372, i32 65535)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %99

81:                                               ; preds = %76
  %82 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %83 = call i32 @s5c73m3_read_fw_version(%struct.s5c73m3* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %99

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* @update_fw, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %96 = call i32 @s5c73m3_fw_update_from(%struct.s5c73m3* %95)
  store i32 %96, i32* %7, align 4
  store i64 0, i64* @update_fw, align 8
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %86, %79, %69, %62, %39, %32, %22, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @s5c73m3_write(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @s5c73m3_system_status_wait(%struct.s5c73m3*, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @s5c73m3_load_fw(%struct.v4l2_subdev*) #1

declare dso_local i32 @s5c73m3_read_fw_version(%struct.s5c73m3*) #1

declare dso_local i32 @s5c73m3_fw_update_from(%struct.s5c73m3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
