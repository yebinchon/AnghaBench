; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov6650 = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"v4l2_clk request err: %d\0A\00", align 1
@REG_PIDH = common dso_local global i32 0, align 4
@REG_PIDL = common dso_local global i32 0, align 4
@REG_MIDH = common dso_local global i32 0, align 4
@REG_MIDL = common dso_local global i32 0, align 4
@OV6650_PIDH = common dso_local global i64 0, align 8
@OV6650_PIDL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Product ID error 0x%02x:0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"ov6650 Product ID 0x%02x:0x%02x Manufacturer ID 0x%02x:0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov6650_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_video_probe(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ov6650*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.ov6650* @to_ov6650(%struct.i2c_client* %13)
  store %struct.ov6650* %14, %struct.ov6650** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 @v4l2_clk_get(i32* %16, i32* null)
  %18 = load %struct.ov6650*, %struct.ov6650** %5, align 8
  %19 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ov6650*, %struct.ov6650** %5, align 8
  %21 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.ov6650*, %struct.ov6650** %5, align 8
  %27 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %2, align 4
  br label %123

36:                                               ; preds = %1
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = call i32 @ov6650_s_power(%struct.v4l2_subdev* %37, i32 1)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %117

42:                                               ; preds = %36
  %43 = call i32 @msleep(i32 20)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @REG_PIDH, align 4
  %46 = call i32 @ov6650_reg_read(%struct.i2c_client* %44, i32 %45, i64* %6)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @REG_PIDL, align 4
  %52 = call i32 @ov6650_reg_read(%struct.i2c_client* %50, i32 %51, i64* %7)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* @REG_MIDH, align 4
  %59 = call i32 @ov6650_reg_read(%struct.i2c_client* %57, i32 %58, i64* %8)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* @REG_MIDL, align 4
  %66 = call i32 @ov6650_reg_read(%struct.i2c_client* %64, i32 %65, i64* %9)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %110

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @OV6650_PIDH, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @OV6650_PIDL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75, %71
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %110

87:                                               ; preds = %75
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = call i32 @ov6650_reset(%struct.i2c_client* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %87
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = call i32 @ov6650_prog_dflt(%struct.i2c_client* %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %99, %87
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load %struct.ov6650*, %struct.ov6650** %5, align 8
  %107 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %106, i32 0, i32 1
  %108 = call i32 @v4l2_ctrl_handler_setup(i32* %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %79, %70
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %112 = call i32 @ov6650_s_power(%struct.v4l2_subdev* %111, i32 0)
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %123

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %41
  %118 = load %struct.ov6650*, %struct.ov6650** %5, align 8
  %119 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @v4l2_clk_put(i32 %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %115, %25
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov6650* @to_ov6650(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @ov6650_s_power(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ov6650_reg_read(%struct.i2c_client*, i32, i64*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @ov6650_reset(%struct.i2c_client*) #1

declare dso_local i32 @ov6650_prog_dflt(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
