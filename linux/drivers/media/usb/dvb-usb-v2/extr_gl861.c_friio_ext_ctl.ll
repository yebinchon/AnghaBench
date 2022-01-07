; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_ext_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_ext_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@FRIIO_CTL_LNB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FRIIO_CTL_LED = common dso_local global i32 0, align 4
@FRIIO_CTL_STROBE = common dso_local global i32 0, align 4
@FRIIO_CTL_CLK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32)* @friio_ext_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_ext_ctl(%struct.dvb_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FRIIO_CTL_LNB, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kmalloc(i32 2, i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %145

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32 2, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @FRIIO_CTL_LED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FRIIO_CTL_STROBE, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %43, i32 0, i32 0
  %45 = call i32 @i2c_transfer(i32* %44, %struct.i2c_msg* %10, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 0
  %53 = call i32 @i2c_transfer(i32* %52, %struct.i2c_msg* %10, i32 1)
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @FRIIO_CTL_STROBE, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 0
  %63 = call i32 @i2c_transfer(i32* %62, %struct.i2c_msg* %10, i32 1)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %71, i32 0, i32 0
  %73 = call i32 @i2c_transfer(i32* %72, %struct.i2c_msg* %10, i32 1)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  store i32 -2147483648, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %113, %28
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 32
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @FRIIO_CTL_STROBE, align 4
  %82 = or i32 %80, %81
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load i32, i32* @FRIIO_CTL_LED, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %79
  %96 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %97 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %96, i32 0, i32 0
  %98 = call i32 @i2c_transfer(i32* %97, %struct.i2c_msg* %10, i32 1)
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %106, i32 0, i32 0
  %108 = call i32 @i2c_transfer(i32* %107, %struct.i2c_msg* %10, i32 1)
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %12, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %95
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %76

116:                                              ; preds = %76
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %121 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %120, i32 0, i32 0
  %122 = call i32 @i2c_transfer(i32* %121, %struct.i2c_msg* %10, i32 1)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %131 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %130, i32 0, i32 0
  %132 = call i32 @i2c_transfer(i32* %131, %struct.i2c_msg* %10, i32 1)
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 70
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  br label %143

140:                                              ; preds = %116
  %141 = load i32, i32* @EREMOTEIO, align 4
  %142 = sub nsw i32 0, %141
  br label %143

143:                                              ; preds = %140, %139
  %144 = phi i32 [ 0, %139 ], [ %142, %140 ]
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %25
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
