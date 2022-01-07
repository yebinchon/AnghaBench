; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_recv_bytes_with_saddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_recv_bytes_with_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32*, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@TUNER_XC5000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"i2c_read: addr 0x%x, len %d, saddr 0x%x, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, %struct.i2c_msg*)* @cx231xx_i2c_recv_bytes_with_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_i2c_recv_bytes_with_saddr(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, %struct.i2c_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca %struct.cx231xx_i2c*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %2, %struct.i2c_msg** %7, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 0
  %16 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %15, align 8
  store %struct.cx231xx_i2c* %16, %struct.cx231xx_i2c** %8, align 8
  %17 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %18 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %17, i32 0, i32 0
  %19 = load %struct.cx231xx*, %struct.cx231xx** %18, align 8
  store %struct.cx231xx* %19, %struct.cx231xx** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %30, %35
  store i32 %36, i32* %12, align 4
  br label %49

37:                                               ; preds = %3
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %51 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %53 = load i32, i32* @TUNER_XC5000, align 4
  %54 = call i64 @is_tuner(%struct.cx231xx* %50, %struct.cx231xx_i2c* %51, %struct.i2c_msg* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %49
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %110

61:                                               ; preds = %56
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dprintk1(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i32 %68, i32 %71)
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %76 [
    i32 8, label %74
    i32 4, label %75
  ]

74:                                               ; preds = %61
  store i32 1, i32* %13, align 4
  br label %76

75:                                               ; preds = %61
  store i32 1, i32* %13, align 4
  br label %76

76:                                               ; preds = %61, %75, %74
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 0
  %82 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %81, align 8
  %83 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %82(%struct.cx231xx* %83, i32 %86, i32* %89, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 1
  %96 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %95, align 8
  %97 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %96(%struct.cx231xx* %97, i32 %100, i32* %103, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %146

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109, %56
  br label %111

111:                                              ; preds = %110, %49
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 5
  store i32 %114, i32* %115, align 4
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 4
  store i32 %118, i32* %119, align 8
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load i32, i32* %12, align 4
  %125 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 2
  store i32 %128, i32* %129, align 8
  %130 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %10, i32 0, i32 3
  store i32* %132, i32** %133, align 8
  %134 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %135 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %134, i32 0, i32 2
  %136 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %135, align 8
  %137 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %8, align 8
  %138 = call i32 %136(%struct.cx231xx_i2c* %137, %struct.cx231xx_i2c_xfer_data* %10)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %111
  %142 = load i32, i32* %11, align 4
  br label %144

143:                                              ; preds = %111
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ]
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %79
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @is_tuner(%struct.cx231xx*, %struct.cx231xx_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk1(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
