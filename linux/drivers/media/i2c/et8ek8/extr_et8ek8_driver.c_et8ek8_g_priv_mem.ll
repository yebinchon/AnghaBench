; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_g_priv_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_g_priv_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.et8ek8_sensor = type { i64* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i64*, i64, i32 }

@ET8EK8_PRIV_MEM_SIZE = common dso_local global i32 0, align 4
@PRIV_MEM_WIN_SIZE = common dso_local global i32 0, align 4
@ET8EK8_REG_8BIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PRIV_MEM_START_REG = common dso_local global i64 0, align 8
@ET8EK8_I2C_DELAY = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @et8ek8_g_priv_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_g_priv_mem(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.et8ek8_sensor*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_msg, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = call %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev* %18)
  store %struct.et8ek8_sensor* %19, %struct.et8ek8_sensor** %4, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %5, align 8
  %22 = load i32, i32* @ET8EK8_PRIV_MEM_SIZE, align 4
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %23 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %24 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %152, %1
  %27 = load i32, i32* @PRIV_MEM_WIN_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %33 = load i32, i32* %7, align 4
  %34 = lshr i32 %33, 3
  %35 = or i32 224, %34
  %36 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %31, i32 %32, i32 1, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %148

41:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 1000
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %48 = call i32 @et8ek8_i2c_read_reg(%struct.i2c_client* %46, i32 %47, i32 3, i32* %17)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %148

53:                                               ; preds = %45
  %54 = load i32, i32* %17, align 4
  %55 = and i32 %54, 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %63

58:                                               ; preds = %53
  %59 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %42

63:                                               ; preds = %57, %42
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 1000
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %148

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 7
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %72, %73
  %75 = icmp ugt i32 %74, 8
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %15, align 4
  %78 = sub nsw i32 8, %77
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %78, %76 ], [ %80, %79 ]
  store i32 %82, i32* %13, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i32 2, i32* %88, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i64* %30, i64** %89, align 8
  %90 = load i64, i64* @PRIV_MEM_START_REG, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = ashr i32 %95, 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %97, i64* %98, align 16
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %99, 255
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %101, i64* %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @i2c_transfer(i32 %105, %struct.i2c_msg* %12, i32 1)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %81
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %148

111:                                              ; preds = %81
  %112 = load i32, i32* @ET8EK8_I2C_DELAY, align 4
  %113 = call i32 @mdelay(i32 %112)
  %114 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* %13, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = load i64, i64* @I2C_M_RD, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i64 %120, i64* %121, align 8
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i64* %30, i64** %122, align 8
  %123 = mul nuw i64 8, %28
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memset(i64* %30, i32 0, i32 %124)
  %126 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @i2c_transfer(i32 %128, %struct.i2c_msg* %12, i32 1)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %111
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %148

134:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  %135 = load i64*, i64** %8, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @memcpy(i64* %135, i64* %30, i32 %136)
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %7, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i64*, i64** %8, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  store i64* %147, i64** %8, align 8
  store i32 0, i32* %16, align 4
  br label %148

148:                                              ; preds = %134, %132, %109, %66, %51, %39
  %149 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %16, align 4
  switch i32 %150, label %159 [
    i32 0, label %151
    i32 1, label %157
  ]

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = icmp ugt i32 %153, 0
  br i1 %154, label %26, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %148
  %158 = load i32, i32* %2, align 4
  ret i32 %158

159:                                              ; preds = %148
  unreachable
}

declare dso_local %struct.et8ek8_sensor* @to_et8ek8_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @et8ek8_i2c_write_reg(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @et8ek8_i2c_read_reg(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
