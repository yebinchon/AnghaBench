; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_check_usb_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_check_usb_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type { i64 }
%struct.usb_interface = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"error: skipping audio endpoint 0x83, because it uses bulk transfers !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.usb_device*, %struct.usb_interface*, i32, i32, i32*, i32*, i32*)* @em28xx_check_usb_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_check_usb_descriptor(%struct.em28xx* %0, %struct.usb_device* %1, %struct.usb_interface* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.usb_endpoint_descriptor*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %9, align 8
  store %struct.usb_device* %1, %struct.usb_device** %10, align 8
  store %struct.usb_interface* %2, %struct.usb_interface** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %31, %struct.usb_endpoint_descriptor** %17, align 8
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %33 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %8
  br label %175

36:                                               ; preds = %8
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %38 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = and i32 %41, 2047
  store i32 %42, i32* %19, align 4
  %43 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_SPEED_HIGH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @hb_mult(i32 %50)
  %52 = mul nsw i32 %49, %51
  store i32 %52, i32* %19, align 4
  br label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %175 [
    i32 130, label %57
    i32 131, label %87
    i32 132, label %98
    i32 133, label %145
  ]

57:                                               ; preds = %53
  %58 = load i32*, i32** %15, align 8
  store i32 1, i32* %58, align 4
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %60 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %64 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %86

75:                                               ; preds = %57
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %77 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %81 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85, %62
  br label %175

87:                                               ; preds = %53
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %89 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32*, i32** %14, align 8
  store i32 1, i32* %92, align 4
  br label %97

93:                                               ; preds = %87
  %94 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %95 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %94, i32 0, i32 0
  %96 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %91
  br label %175

98:                                               ; preds = %53
  %99 = load i32*, i32** %15, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %104 = call i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %108 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %111 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %144

112:                                              ; preds = %102, %98
  %113 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %114 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %112
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %119 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load i32*, i32** %16, align 8
  store i32 1, i32* %123, align 4
  %124 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %125 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %128 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %19, align 4
  %130 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %131 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %134 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %122, %116
  br label %143

136:                                              ; preds = %112
  %137 = load i32*, i32** %16, align 8
  store i32 1, i32* %137, align 4
  %138 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %139 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %142 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %136, %135
  br label %144

144:                                              ; preds = %143, %106
  br label %175

145:                                              ; preds = %53
  %146 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %147 = call i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  %150 = load i32, i32* %19, align 4
  %151 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %152 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %157 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %160 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %19, align 4
  %162 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %163 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %166 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %155, %149
  br label %174

168:                                              ; preds = %145
  %169 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %17, align 8
  %170 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %173 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %172, i32 0, i32 9
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %167
  br label %175

175:                                              ; preds = %35, %86, %97, %144, %174, %53
  ret void
}

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hb_mult(i32) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
