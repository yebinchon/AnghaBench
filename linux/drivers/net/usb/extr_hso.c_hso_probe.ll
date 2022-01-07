; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_device_id = type { i64 }
%struct.hso_device = type { i32 }
%struct.hso_shared_int = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Not our interface\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HSO_INTF_MASK = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@HSO_PORT_NETWORK = common dso_local global i32 0, align 4
@disable_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hso_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.hso_device*, align 8
  %12 = alloca %struct.hso_shared_int*, align 8
  %13 = alloca %struct.hso_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.hso_device* null, %struct.hso_device** %11, align 8
  store %struct.hso_device* null, %struct.hso_device** %13, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 3
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %184

27:                                               ; preds = %2
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %179

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %60 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  br label %74

67:                                               ; preds = %27
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = call i32 @hso_get_config_data(%struct.usb_interface* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %179

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %76 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = call i32 @interface_to_usbdev(%struct.usb_interface* %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @usb_set_interface(i32 %81, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %86 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @HSO_INTF_MASK, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %174 [
    i32 128, label %90
    i32 129, label %151
  ]

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @HSO_PORT_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @HSO_PORT_NETWORK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i32, i32* @disable_net, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call %struct.hso_device* @hso_create_net_device(%struct.usb_interface* %100, i32 %101)
  store %struct.hso_device* %102, %struct.hso_device** %11, align 8
  %103 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %104 = icmp ne %struct.hso_device* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %179

106:                                              ; preds = %99
  %107 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  store %struct.hso_device* %107, %struct.hso_device** %13, align 8
  br label %108

108:                                              ; preds = %106, %96
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %111 = call i32 @hso_get_mux_ports(%struct.usb_interface* %110, i8* %10)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %179

114:                                              ; preds = %109
  %115 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %116 = call %struct.hso_shared_int* @hso_create_shared_int(%struct.usb_interface* %115)
  store %struct.hso_shared_int* %116, %struct.hso_shared_int** %12, align 8
  %117 = load %struct.hso_shared_int*, %struct.hso_shared_int** %12, align 8
  %118 = icmp ne %struct.hso_shared_int* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %179

120:                                              ; preds = %114
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %140, %120
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 256
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i8, i8* %10, align 1
  %126 = zext i8 %125 to i32
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.hso_shared_int*, %struct.hso_shared_int** %12, align 8
  %134 = call %struct.hso_device* @hso_create_mux_serial_device(%struct.usb_interface* %131, i32 %132, %struct.hso_shared_int* %133)
  store %struct.hso_device* %134, %struct.hso_device** %11, align 8
  %135 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %136 = icmp ne %struct.hso_device* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  br label %179

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %124
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = shl i32 %141, 1
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %121

145:                                              ; preds = %121
  %146 = load %struct.hso_device*, %struct.hso_device** %13, align 8
  %147 = icmp ne %struct.hso_device* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load %struct.hso_device*, %struct.hso_device** %13, align 8
  store %struct.hso_device* %149, %struct.hso_device** %11, align 8
  br label %150

150:                                              ; preds = %148, %145
  br label %175

151:                                              ; preds = %84
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @HSO_PORT_MASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @HSO_PORT_NETWORK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load i32, i32* @disable_net, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call %struct.hso_device* @hso_create_net_device(%struct.usb_interface* %161, i32 %162)
  store %struct.hso_device* %163, %struct.hso_device** %11, align 8
  br label %164

164:                                              ; preds = %160, %157
  br label %169

165:                                              ; preds = %151
  %166 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call %struct.hso_device* @hso_create_bulk_serial_device(%struct.usb_interface* %166, i32 %167)
  store %struct.hso_device* %168, %struct.hso_device** %11, align 8
  br label %169

169:                                              ; preds = %165, %164
  %170 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %171 = icmp ne %struct.hso_device* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  br label %179

173:                                              ; preds = %169
  br label %175

174:                                              ; preds = %84
  br label %179

175:                                              ; preds = %173, %150
  %176 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %177 = load %struct.hso_device*, %struct.hso_device** %11, align 8
  %178 = call i32 @usb_set_intfdata(%struct.usb_interface* %176, %struct.hso_device* %177)
  store i32 0, i32* %3, align 4
  br label %184

179:                                              ; preds = %174, %172, %137, %119, %113, %105, %72, %53
  %180 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %181 = call i32 @hso_free_interface(%struct.usb_interface* %180)
  %182 = load i32, i32* @ENODEV, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %179, %175, %21
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hso_get_config_data(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.hso_device* @hso_create_net_device(%struct.usb_interface*, i32) #1

declare dso_local i32 @hso_get_mux_ports(%struct.usb_interface*, i8*) #1

declare dso_local %struct.hso_shared_int* @hso_create_shared_int(%struct.usb_interface*) #1

declare dso_local %struct.hso_device* @hso_create_mux_serial_device(%struct.usb_interface*, i32, %struct.hso_shared_int*) #1

declare dso_local %struct.hso_device* @hso_create_bulk_serial_device(%struct.usb_interface*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hso_device*) #1

declare dso_local i32 @hso_free_interface(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
