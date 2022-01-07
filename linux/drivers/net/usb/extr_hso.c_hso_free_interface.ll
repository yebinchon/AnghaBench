; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_free_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_free_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.usb_interface* }
%struct.hso_serial = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.rfkill = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.rfkill* }

@HSO_SERIAL_TTY_MINORS = common dso_local global i32 0, align 4
@serial_table = common dso_local global %struct.TYPE_10__** null, align 8
@hso_serial_ref_free = common dso_local global i32 0, align 4
@HSO_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@network_table = common dso_local global %struct.TYPE_11__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @hso_free_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_interface(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.hso_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfkill*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %78, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @HSO_SERIAL_TTY_MINORS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %81

10:                                               ; preds = %6
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %11, i64 %13
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %77

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 %20
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = icmp eq %struct.usb_interface* %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %28, i64 %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = call %struct.hso_serial* @dev2ser(%struct.TYPE_10__* %32)
  store %struct.hso_serial* %33, %struct.hso_serial** %3, align 8
  %34 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %35 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %34, i32 0, i32 1
  %36 = call i32 @tty_port_tty_hangup(i32* %35, i32 0)
  %37 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %38 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 %53
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = call i32 @cancel_work_sync(i32* %56)
  %58 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %58, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = call i32 @cancel_work_sync(i32* %63)
  %65 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %66 = call i32 @hso_serial_tty_unregister(%struct.hso_serial* %65)
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* @hso_serial_ref_free, align 4
  %74 = call i32 @kref_put(i32* %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @set_serial_by_index(i32 %75, i32* null)
  br label %77

77:                                               ; preds = %27, %17, %10
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %6

81:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %156, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @HSO_MAX_NET_DEVICES, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %159

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %87, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = icmp ne %struct.TYPE_11__* %91, null
  br i1 %92, label %93, label %155

93:                                               ; preds = %86
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load %struct.usb_interface*, %struct.usb_interface** %99, align 8
  %101 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %102 = icmp eq %struct.usb_interface* %100, %101
  br i1 %102, label %103, label %155

103:                                              ; preds = %93
  %104 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %104, i64 %106
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = call %struct.TYPE_12__* @dev2net(%struct.TYPE_11__* %108)
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load %struct.rfkill*, %struct.rfkill** %110, align 8
  store %struct.rfkill* %111, %struct.rfkill** %5, align 8
  %112 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %112, i64 %114
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = call %struct.TYPE_12__* @dev2net(%struct.TYPE_11__* %116)
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @netif_stop_queue(i32 %119)
  %121 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %121, i64 %123
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = call i32 @hso_stop_net_device(%struct.TYPE_11__* %125)
  %127 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %127, i64 %129
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = call i32 @cancel_work_sync(i32* %132)
  %134 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %134, i64 %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = call i32 @cancel_work_sync(i32* %139)
  %141 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %142 = icmp ne %struct.rfkill* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %103
  %144 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %145 = call i32 @rfkill_unregister(%struct.rfkill* %144)
  %146 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %147 = call i32 @rfkill_destroy(%struct.rfkill* %146)
  br label %148

148:                                              ; preds = %143, %103
  %149 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %149, i64 %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = call i32 @hso_free_net_device(%struct.TYPE_11__* %153)
  br label %155

155:                                              ; preds = %148, %93, %86
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %82

159:                                              ; preds = %82
  ret void
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.TYPE_10__*) #1

declare dso_local i32 @tty_port_tty_hangup(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @hso_serial_tty_unregister(%struct.hso_serial*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @set_serial_by_index(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @dev2net(%struct.TYPE_11__*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @hso_stop_net_device(%struct.TYPE_11__*) #1

declare dso_local i32 @rfkill_unregister(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i32 @hso_free_net_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
