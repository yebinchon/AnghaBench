; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_get_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_get_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.usb_host_endpoint*, i32, i32, i32, %struct.TYPE_5__* }
%struct.usb_host_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__, %struct.usb_host_endpoint* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FLAG_NO_SETINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_get_endpoints(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_host_endpoint*, align 8
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %7, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %10, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %101, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %104

20:                                               ; preds = %14
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %10, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %8, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i64 %25
  store %struct.usb_host_interface* %26, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %90, %20
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %35, i32 0, i32 1
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %37, i64 %39
  store %struct.usb_host_endpoint* %40, %struct.usb_host_endpoint** %12, align 8
  %41 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %42 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %41, i32 0, i32 0
  %43 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %90

46:                                               ; preds = %34
  %47 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %48 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %59 [
    i32 128, label %51
    i32 129, label %58
  ]

51:                                               ; preds = %46
  %52 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %53 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %52, i32 0, i32 0
  %54 = call i64 @usb_endpoint_dir_in(%struct.TYPE_7__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %90

57:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %58

58:                                               ; preds = %46, %57
  br label %60

59:                                               ; preds = %46
  br label %90

60:                                               ; preds = %58
  %61 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %62 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %61, i32 0, i32 0
  %63 = call i64 @usb_endpoint_dir_in(%struct.TYPE_7__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %70 = icmp ne %struct.usb_host_endpoint* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  store %struct.usb_host_endpoint* %72, %struct.usb_host_endpoint** %8, align 8
  br label %82

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %78 = icmp ne %struct.usb_host_endpoint* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  store %struct.usb_host_endpoint* %80, %struct.usb_host_endpoint** %10, align 8
  br label %81

81:                                               ; preds = %79, %76, %73
  br label %82

82:                                               ; preds = %81, %71
  br label %89

83:                                               ; preds = %60
  %84 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %85 = icmp ne %struct.usb_host_endpoint* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  store %struct.usb_host_endpoint* %87, %struct.usb_host_endpoint** %9, align 8
  br label %88

88:                                               ; preds = %86, %83
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %59, %56, %45
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %27

93:                                               ; preds = %27
  %94 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %95 = icmp ne %struct.usb_host_endpoint* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %98 = icmp ne %struct.usb_host_endpoint* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %104

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %14

104:                                              ; preds = %99, %14
  %105 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %106 = icmp ne %struct.usb_host_interface* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %109 = icmp ne %struct.usb_host_endpoint* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %112 = icmp ne %struct.usb_host_endpoint* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110, %107, %104
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %177

116:                                              ; preds = %110
  %117 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %118 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %124 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FLAG_NO_SETINT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %149, label %131

131:                                              ; preds = %122, %116
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %136 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %140 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @usb_set_interface(i32 %134, i32 %138, i64 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %131
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %177

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %122
  %150 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %151 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %154 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %158 = and i32 %156, %157
  %159 = call i32 @usb_rcvbulkpipe(i32 %152, i32 %158)
  %160 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %161 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %163 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %166 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %170 = and i32 %168, %169
  %171 = call i32 @usb_sndbulkpipe(i32 %164, i32 %170)
  %172 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %173 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %175 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %176 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %175, i32 0, i32 0
  store %struct.usb_host_endpoint* %174, %struct.usb_host_endpoint** %176, align 8
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %149, %146, %113
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i64) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
