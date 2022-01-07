; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.TYPE_12__ = type { %struct.usb_interface* }
%struct.hso_net = type { i32, i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@HSO_SERIAL_TTY_MINORS = common dso_local global i32 0, align 4
@serial_table = common dso_local global %struct.TYPE_11__** null, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@HSO_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@network_table = common dso_local global %struct.TYPE_12__** null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Transmitting lingering data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hso_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_net*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HSO_SERIAL_TTY_MINORS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %62

10:                                               ; preds = %6
  %11 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @serial_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %11, i64 %13
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %10
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @serial_table, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 %20
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = icmp eq %struct.usb_interface* %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %17
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @serial_table, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = call %struct.TYPE_13__* @dev2ser(%struct.TYPE_11__* %32)
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %27
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @serial_table, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* @GFP_NOIO, align 4
  %45 = call i32 @hso_start_serial_device(%struct.TYPE_11__* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @serial_table, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %46, i64 %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = call %struct.TYPE_13__* @dev2ser(%struct.TYPE_11__* %50)
  %52 = call i32 @hso_kick_transmit(%struct.TYPE_13__* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %132

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56, %27
  br label %58

58:                                               ; preds = %57, %17, %10
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %6

62:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %128, %62
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @HSO_MAX_NET_DEVICES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %131

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @network_table, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %127

74:                                               ; preds = %67
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @network_table, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %75, i64 %77
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.usb_interface*, %struct.usb_interface** %80, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %83 = icmp eq %struct.usb_interface* %81, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %74
  %85 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @network_table, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %85, i64 %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = call %struct.hso_net* @dev2net(%struct.TYPE_12__* %89)
  store %struct.hso_net* %90, %struct.hso_net** %5, align 8
  %91 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %92 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFF_UP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %84
  %98 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %99 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %104 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %103, i32 0, i32 0
  %105 = call i32 @dev_dbg(i32* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %107 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %110 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @hso_net_start_xmit(i32* %108, i32 %111)
  %113 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %114 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %102, %97
  %116 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @network_table, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %116, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = call i32 @hso_start_net_device(%struct.TYPE_12__* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %132

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %84
  br label %127

127:                                              ; preds = %126, %74, %67
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %63

131:                                              ; preds = %63
  br label %132

132:                                              ; preds = %131, %124, %55
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_13__* @dev2ser(%struct.TYPE_11__*) #1

declare dso_local i32 @hso_start_serial_device(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @hso_kick_transmit(%struct.TYPE_13__*) #1

declare dso_local %struct.hso_net* @dev2net(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hso_net_start_xmit(i32*, i32) #1

declare dso_local i32 @hso_start_net_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
