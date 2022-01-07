; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { %struct.usb_host_endpoint*, i32, i32, i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, %struct.usb_interface*)* @lan78xx_get_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_get_endpoints(%struct.lan78xx_net* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan78xx_net*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_host_endpoint*, align 8
  %13 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %7, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %10, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %95, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %14
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %9, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %10, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i64 %25
  store %struct.usb_host_interface* %26, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %84, %20
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %35, i32 0, i32 0
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %37, i64 %39
  store %struct.usb_host_endpoint* %40, %struct.usb_host_endpoint** %12, align 8
  %41 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %42 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %53 [
    i32 128, label %45
    i32 129, label %52
  ]

45:                                               ; preds = %34
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %47 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %46, i32 0, i32 0
  %48 = call i64 @usb_endpoint_dir_in(%struct.TYPE_4__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %84

51:                                               ; preds = %45
  store i32 1, i32* %13, align 4
  br label %52

52:                                               ; preds = %34, %51
  br label %54

53:                                               ; preds = %34
  br label %84

54:                                               ; preds = %52
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  %56 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %55, i32 0, i32 0
  %57 = call i64 @usb_endpoint_dir_in(%struct.TYPE_4__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %64 = icmp ne %struct.usb_host_endpoint* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  store %struct.usb_host_endpoint* %66, %struct.usb_host_endpoint** %8, align 8
  br label %76

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %72 = icmp ne %struct.usb_host_endpoint* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  store %struct.usb_host_endpoint* %74, %struct.usb_host_endpoint** %10, align 8
  br label %75

75:                                               ; preds = %73, %70, %67
  br label %76

76:                                               ; preds = %75, %65
  br label %83

77:                                               ; preds = %54
  %78 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %79 = icmp ne %struct.usb_host_endpoint* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %12, align 8
  store %struct.usb_host_endpoint* %81, %struct.usb_host_endpoint** %9, align 8
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %83, %53, %50
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %27

87:                                               ; preds = %27
  %88 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %89 = icmp ne %struct.usb_host_endpoint* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %92 = icmp ne %struct.usb_host_endpoint* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %98

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %14

98:                                               ; preds = %93, %14
  %99 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %100 = icmp ne %struct.usb_host_interface* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %103 = icmp ne %struct.usb_host_endpoint* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %106 = icmp ne %struct.usb_host_endpoint* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104, %101, %98
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %138

110:                                              ; preds = %104
  %111 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %112 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %115 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @usb_rcvbulkpipe(i32 %113, i32 %119)
  %121 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %122 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %124 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %127 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %131 = and i32 %129, %130
  %132 = call i32 @usb_sndbulkpipe(i32 %125, i32 %131)
  %133 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %134 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %136 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %137 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %136, i32 0, i32 0
  store %struct.usb_host_endpoint* %135, %struct.usb_host_endpoint** %137, align 8
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %110, %107
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @usb_endpoint_dir_in(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
