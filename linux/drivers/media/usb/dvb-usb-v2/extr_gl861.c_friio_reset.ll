; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@friio_reset.friio_init_cmds = internal constant [10 x [2 x i32]] [[2 x i32] [i32 51, i32 8], [2 x i32] [i32 55, i32 64], [2 x i32] [i32 58, i32 31], [2 x i32] [i32 59, i32 255], [2 x i32] [i32 60, i32 31], [2 x i32] [i32 61, i32 255], [2 x i32] [i32 56, i32 0], [2 x i32] [i32 53, i32 0], [2 x i32] [i32 57, i32 0], [2 x i32] [i32 54, i32 0]], align 16
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @friio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_reset(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @usb_set_interface(i32 %10, i32 0, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %148

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 17, i32* %17, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 2, i32* %18, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %21 = call i32 @gl861_i2c_msg(%struct.dvb_usb_device* %19, i32 0, i32* %20, i32 2, i32* null, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %148

26:                                               ; preds = %16
  %27 = call i32 @usleep_range(i32 2000, i32 3000)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 17, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %32 = call i32 @gl861_i2c_msg(%struct.dvb_usb_device* %30, i32 0, i32* %31, i32 2, i32* null, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %148

37:                                               ; preds = %26
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 3, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 128, i32* %40, align 4
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %43 = call i32 @gl861_i2c_write_ex(%struct.dvb_usb_device* %41, i32 9, i32* %42, i32 2)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %148

48:                                               ; preds = %37
  %49 = call i32 @usleep_range(i32 2000, i32 3000)
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %52 = call i32 @gl861_i2c_read_ex(%struct.dvb_usb_device* %50, i32 9, i32* %51, i32 2)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %148

57:                                               ; preds = %48
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 255
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 255
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %148

68:                                               ; preds = %61
  %69 = call i32 @usleep_range(i32 1000, i32 2000)
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %72 = call i32 @gl861_i2c_write_ex(%struct.dvb_usb_device* %70, i32 72, i32* %71, i32 2)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %148

77:                                               ; preds = %68
  %78 = call i32 @usleep_range(i32 2000, i32 3000)
  %79 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = call i32 @gl861_i2c_read_ex(%struct.dvb_usb_device* %79, i32 72, i32* %80, i32 2)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %148

86:                                               ; preds = %77
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 255
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 255
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %148

97:                                               ; preds = %90
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 48, i32* %98, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 4, i32* %99, align 4
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %102 = call i32 @gl861_i2c_msg(%struct.dvb_usb_device* %100, i32 0, i32* %101, i32 2, i32* null, i32 0)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %148

107:                                              ; preds = %97
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %112 = call i32 @gl861_i2c_msg(%struct.dvb_usb_device* %110, i32 0, i32* %111, i32 2, i32* null, i32 0)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %148

117:                                              ; preds = %107
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 6, i32* %118, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 15, i32* %119, align 4
  %120 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %122 = call i32 @gl861_i2c_msg(%struct.dvb_usb_device* %120, i32 0, i32* %121, i32 2, i32* null, i32 0)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %148

127:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %144, %127
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @ARRAY_SIZE(i32** bitcast ([10 x [2 x i32]]* @friio_reset.friio_init_cmds to i32**))
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %128
  %133 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* @friio_reset.friio_init_cmds, i64 0, i64 %135
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %136, i64 0, i64 0
  %138 = call i32 @gl861_i2c_msg(%struct.dvb_usb_device* %133, i32 0, i32* %137, i32 2, i32* null, i32 0)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %148

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %128

147:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %141, %125, %115, %105, %94, %84, %75, %65, %55, %46, %35, %24, %14
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @gl861_i2c_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gl861_i2c_write_ex(%struct.dvb_usb_device*, i32, i32*, i32) #1

declare dso_local i32 @gl861_i2c_read_ex(%struct.dvb_usb_device*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
