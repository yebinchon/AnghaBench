; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-i2c.c_go7007_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-i2c.c_go7007_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i64, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GO7007_BOARDID_ADLINK_MPG24 = common dso_local global i64 0, align 8
@adlink_mpg24_i2c_lock = common dso_local global i32 0, align 4
@STATUS_REG_ADDR = common dso_local global i32 0, align 4
@I2C_STATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"go7007-i2c: I2C adapter is hung\0A\00", align 1
@I2C_CTRL_REG_ADDR = common dso_local global i32 0, align 4
@I2C_LO_ADDR_REG_ADDR = common dso_local global i32 0, align 4
@I2C_DATA_REG_ADDR = common dso_local global i32 0, align 4
@I2C_DEV_UP_ADDR_REG_ADDR = common dso_local global i32 0, align 4
@I2C_READ_READY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32, i32, i32, i32, i32*)* @go7007_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_i2c_xfer(%struct.go7007* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.go7007*, %struct.go7007** %8, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATUS_SHUTDOWN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %162

27:                                               ; preds = %6
  %28 = load %struct.go7007*, %struct.go7007** %8, align 8
  %29 = getelementptr inbounds %struct.go7007, %struct.go7007* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.go7007*, %struct.go7007** %8, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GO7007_BOARDID_ADLINK_MPG24, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 @mutex_lock(i32* @adlink_mpg24_i2c_lock)
  %38 = load %struct.go7007*, %struct.go7007** %8, align 8
  %39 = call i32 @go7007_write_addr(%struct.go7007* %38, i32 15490, i32 32)
  br label %40

40:                                               ; preds = %36, %27
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.go7007*, %struct.go7007** %8, align 8
  %46 = load i32, i32* @STATUS_REG_ADDR, align 4
  %47 = call i64 @go7007_read_addr(%struct.go7007* %45, i32 %46, i32* %16)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %147

50:                                               ; preds = %44
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @I2C_STATE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %61

56:                                               ; preds = %50
  %57 = call i32 @msleep(i32 100)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %41

61:                                               ; preds = %55, %41
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.go7007*, %struct.go7007** %8, align 8
  %66 = getelementptr inbounds %struct.go7007, %struct.go7007* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %147

69:                                               ; preds = %61
  %70 = load %struct.go7007*, %struct.go7007** %8, align 8
  %71 = load i32, i32* @I2C_CTRL_REG_ADDR, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @go7007_write_addr(%struct.go7007* %70, i32 %71, i32 %72)
  %74 = load %struct.go7007*, %struct.go7007** %8, align 8
  %75 = load i32, i32* @I2C_LO_ADDR_REG_ADDR, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @go7007_write_addr(%struct.go7007* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %69
  %81 = load %struct.go7007*, %struct.go7007** %8, align 8
  %82 = load i32, i32* @I2C_DATA_REG_ADDR, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @go7007_write_addr(%struct.go7007* %81, i32 %82, i32 %84)
  %86 = load %struct.go7007*, %struct.go7007** %8, align 8
  %87 = load i32, i32* @I2C_DEV_UP_ADDR_REG_ADDR, align 4
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 %88, 9
  %90 = load i32, i32* %11, align 4
  %91 = ashr i32 %90, 8
  %92 = or i32 %89, %91
  %93 = call i32 @go7007_write_addr(%struct.go7007* %86, i32 %87, i32 %92)
  store i32 0, i32* %15, align 4
  br label %147

94:                                               ; preds = %69
  %95 = load %struct.go7007*, %struct.go7007** %8, align 8
  %96 = load i32, i32* @I2C_DATA_REG_ADDR, align 4
  %97 = call i64 @go7007_read_addr(%struct.go7007* %95, i32 %96, i32* %16)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %147

100:                                              ; preds = %94
  %101 = load %struct.go7007*, %struct.go7007** %8, align 8
  %102 = load i32, i32* @I2C_DEV_UP_ADDR_REG_ADDR, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 9
  %105 = or i32 %104, 256
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 8
  %108 = or i32 %105, %107
  %109 = call i32 @go7007_write_addr(%struct.go7007* %101, i32 %102, i32 %108)
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %127, %100
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 10
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load %struct.go7007*, %struct.go7007** %8, align 8
  %115 = load i32, i32* @STATUS_REG_ADDR, align 4
  %116 = call i64 @go7007_read_addr(%struct.go7007* %114, i32 %115, i32* %16)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %147

119:                                              ; preds = %113
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @I2C_READ_READY_MASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %130

125:                                              ; preds = %119
  %126 = call i32 @msleep(i32 100)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %110

130:                                              ; preds = %124, %110
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.go7007*, %struct.go7007** %8, align 8
  %135 = getelementptr inbounds %struct.go7007, %struct.go7007* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %147

138:                                              ; preds = %130
  %139 = load %struct.go7007*, %struct.go7007** %8, align 8
  %140 = load i32, i32* @I2C_DATA_REG_ADDR, align 4
  %141 = call i64 @go7007_read_addr(%struct.go7007* %139, i32 %140, i32* %16)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %16, align 4
  %146 = load i32*, i32** %13, align 8
  store i32 %145, i32* %146, align 4
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %144, %143, %133, %118, %99, %80, %64, %49
  %148 = load %struct.go7007*, %struct.go7007** %8, align 8
  %149 = getelementptr inbounds %struct.go7007, %struct.go7007* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @GO7007_BOARDID_ADLINK_MPG24, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.go7007*, %struct.go7007** %8, align 8
  %155 = call i32 @go7007_write_addr(%struct.go7007* %154, i32 15490, i32 0)
  %156 = call i32 @mutex_unlock(i32* @adlink_mpg24_i2c_lock)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.go7007*, %struct.go7007** %8, align 8
  %159 = getelementptr inbounds %struct.go7007, %struct.go7007* %158, i32 0, i32 2
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %157, %24
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @go7007_write_addr(%struct.go7007*, i32, i32) #1

declare dso_local i64 @go7007_read_addr(%struct.go7007*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
