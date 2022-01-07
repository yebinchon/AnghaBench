; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_as102_firmware_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_as102_firmware_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as10x_bus_adapter_t = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.as10x_bus_adapter_t*, i32*, i32, i32)* }
%struct.firmware = type { i32, i64 }
%struct.as10x_fw_pkt_t = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as10x_bus_adapter_t*, i8*, %struct.firmware*)* @as102_firmware_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_firmware_upload(%struct.as10x_bus_adapter_t* %0, i8* %1, %struct.firmware* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.as10x_bus_adapter_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.as10x_fw_pkt_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.as10x_bus_adapter_t* %0, %struct.as10x_bus_adapter_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8 0, i8* %11, align 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.as10x_fw_pkt_t* @kmalloc(i32 16, i32 %14)
  store %struct.as10x_fw_pkt_t* %15, %struct.as10x_fw_pkt_t** %8, align 8
  %16 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %17 = icmp ne %struct.as10x_fw_pkt_t* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %131

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %118, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.firmware*, %struct.firmware** %7, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %119

28:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.firmware*, %struct.firmware** %7, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %37 = getelementptr inbounds %struct.as10x_fw_pkt_t, %struct.as10x_fw_pkt_t* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %41 = getelementptr inbounds %struct.as10x_fw_pkt_t, %struct.as10x_fw_pkt_t* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @parse_hex_line(i32* %35, i32 %39, i32 %43, i32* %13, i8* %11)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %120

48:                                               ; preds = %28
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.firmware*, %struct.firmware** %7, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %48
  %58 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %59 = getelementptr inbounds %struct.as10x_fw_pkt_t, %struct.as10x_fw_pkt_t* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %64 = getelementptr inbounds %struct.as10x_fw_pkt_t, %struct.as10x_fw_pkt_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 3, i32* %67, align 4
  %68 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %5, align 8
  %69 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.as10x_bus_adapter_t*, i32*, i32, i32)*, i32 (%struct.as10x_bus_adapter_t*, i32*, i32, i32)** %71, align 8
  %73 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %5, align 8
  %74 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %75 = bitcast %struct.as10x_fw_pkt_t* %74 to i32*
  %76 = call i32 %72(%struct.as10x_bus_adapter_t* %73, i32* %75, i32 2, i32 0)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %57
  br label %120

80:                                               ; preds = %57
  br label %118

81:                                               ; preds = %48
  %82 = load i8, i8* %11, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %117, label %84

84:                                               ; preds = %81
  %85 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %86 = getelementptr inbounds %struct.as10x_fw_pkt_t, %struct.as10x_fw_pkt_t* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 0, i32* %89, align 4
  %90 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %91 = getelementptr inbounds %struct.as10x_fw_pkt_t, %struct.as10x_fw_pkt_t* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %5, align 8
  %104 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32 (%struct.as10x_bus_adapter_t*, i32*, i32, i32)*, i32 (%struct.as10x_bus_adapter_t*, i32*, i32, i32)** %106, align 8
  %108 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %5, align 8
  %109 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %110 = bitcast %struct.as10x_fw_pkt_t* %109 to i32*
  %111 = load i32, i32* %13, align 4
  %112 = call i32 %107(%struct.as10x_bus_adapter_t* %108, i32* %110, i32 %111, i32 0)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %84
  br label %120

116:                                              ; preds = %84
  br label %117

117:                                              ; preds = %116, %81
  br label %118

118:                                              ; preds = %117, %80
  br label %22

119:                                              ; preds = %22
  br label %120

120:                                              ; preds = %119, %115, %79, %47
  %121 = load %struct.as10x_fw_pkt_t*, %struct.as10x_fw_pkt_t** %8, align 8
  %122 = call i32 @kfree(%struct.as10x_fw_pkt_t* %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %10, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %18
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.as10x_fw_pkt_t* @kmalloc(i32, i32) #1

declare dso_local i32 @parse_hex_line(i32*, i32, i32, i32*, i8*) #1

declare dso_local i32 @kfree(%struct.as10x_fw_pkt_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
