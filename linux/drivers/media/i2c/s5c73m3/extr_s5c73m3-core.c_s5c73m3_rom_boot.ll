; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_rom_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_rom_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@s5c73m3_rom_boot.boot_regs = internal constant [8 x [2 x i32]] [[2 x i32] [i32 822083852, i32 68], [2 x i32] [i32 822083848, i32 13], [2 x i32] [i32 822084356, i32 1], [2 x i32] [i32 65536, i32 22528], [2 x i32] [i32 65538, i32 2], [2 x i32] [i32 822083584, i32 1], [2 x i32] [i32 806354964, i32 7045], [2 x i32] [i32 806354960, i32 8972]], align 16
@.str = private unnamed_addr constant [20 x i8] c"Booting failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Binary read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_rom_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_rom_boot(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %10 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %9, i32 0, i32 1
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %6, align 8
  %11 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %12 = call i32 @s5c73m3_write(%struct.s5c73m3* %11, i32 805306372, i32 65535)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = call i32 @usleep_range(i32 400, i32 450)
  %19 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %20 = call i32 @s5c73m3_system_status_wait(%struct.s5c73m3* %19, i32 12, i32 100, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @v4l2_err(%struct.v4l2_subdev* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %91

28:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ARRAY_SIZE(i32** bitcast ([8 x [2 x i32]]* @s5c73m3_rom_boot.boot_regs to i32**))
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @s5c73m3_rom_boot.boot_regs, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @s5c73m3_rom_boot.boot_regs, i64 0, i64 %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @s5c73m3_write(%struct.s5c73m3* %34, i32 %39, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %29

54:                                               ; preds = %29
  %55 = call i32 @msleep(i32 200)
  %56 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %57 = call i32 @s5c73m3_system_status_wait(%struct.s5c73m3* %56, i32 8974, i32 1000, i32 150)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @v4l2_err(%struct.v4l2_subdev* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %91

65:                                               ; preds = %54
  %66 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %67 = call i32 @s5c73m3_write(%struct.s5c73m3* %66, i32 805306372, i32 65533)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %91

72:                                               ; preds = %65
  %73 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %74 = call i32 @s5c73m3_write(%struct.s5c73m3* %73, i32 806355108, i32 387)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %91

79:                                               ; preds = %72
  %80 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %81 = call i32 @s5c73m3_write(%struct.s5c73m3* %80, i32 805306372, i32 65535)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %91

86:                                               ; preds = %79
  %87 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %88 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %90 = call i32 @s5c73m3_read_fw_version(%struct.s5c73m3* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %84, %77, %70, %60, %48, %23, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @s5c73m3_write(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @s5c73m3_system_status_wait(%struct.s5c73m3*, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5c73m3_read_fw_version(%struct.s5c73m3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
