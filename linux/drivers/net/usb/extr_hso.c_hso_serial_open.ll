; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hso_serial*, i32 }
%struct.hso_serial = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }

@HSO_SERIAL_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Failed to open port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Opening %d\0A\00", align 1
@RX_IDLE = common dso_local global i32 0, align 4
@hso_unthrottle_tasklet = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Port was already open\0A\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @hso_serial_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hso_serial*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.hso_serial* @get_serial_by_index(i32 %10)
  store %struct.hso_serial* %11, %struct.hso_serial** %6, align 8
  %12 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %13 = icmp eq %struct.hso_serial* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %16 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HSO_SERIAL_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14, %2
  %21 = call i32 @WARN_ON(i32 1)
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  store %struct.hso_serial* null, %struct.hso_serial** %23, align 8
  %24 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %126

27:                                               ; preds = %14
  %28 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %29 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %34 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_autopm_get_interface(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %119

42:                                               ; preds = %27
  %43 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %44 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  store %struct.hso_serial* %47, %struct.hso_serial** %49, align 8
  %50 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %51 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %50, i32 0, i32 2
  %52 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %53 = call i32 @tty_port_tty_set(%struct.TYPE_4__* %51, %struct.tty_struct* %52)
  %54 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %55 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %60 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %101

64:                                               ; preds = %42
  %65 = load i32, i32* @RX_IDLE, align 4
  %66 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %67 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %69 = call i32 @_hso_serial_set_termios(%struct.tty_struct* %68, i32* null)
  %70 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %71 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %70, i32 0, i32 3
  %72 = load i64, i64* @hso_unthrottle_tasklet, align 8
  %73 = inttoptr i64 %72 to void (i64)*
  %74 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %75 = ptrtoint %struct.hso_serial* %74 to i64
  %76 = call i32 @tasklet_init(i32* %71, void (i64)* %73, i64 %75)
  %77 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %78 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @hso_start_serial_device(%struct.TYPE_5__* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %64
  %85 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %86 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i32 @hso_stop_serial_device(%struct.TYPE_5__* %87)
  %89 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %90 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  br label %100

94:                                               ; preds = %64
  %95 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %96 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = call i32 @kref_get(i32* %98)
  br label %100

100:                                              ; preds = %94, %84
  br label %103

101:                                              ; preds = %42
  %102 = call i32 (i32, i8*, ...) @hso_dbg(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %100
  %104 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %105 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @usb_autopm_put_interface(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %103
  %113 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %114 = load i32, i32* @TIOCM_RTS, align 4
  %115 = load i32, i32* @TIOCM_DTR, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @hso_serial_tiocmset(%struct.tty_struct* %113, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %112, %103
  br label %119

119:                                              ; preds = %118, %41
  %120 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %121 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %119, %20
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.hso_serial* @get_serial_by_index(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hso_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_4__*, %struct.tty_struct*) #1

declare dso_local i32 @_hso_serial_set_termios(%struct.tty_struct*, i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @hso_start_serial_device(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @hso_stop_serial_device(%struct.TYPE_5__*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @hso_serial_tiocmset(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
