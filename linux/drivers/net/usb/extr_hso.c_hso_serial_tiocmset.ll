; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hso_serial* }
%struct.hso_serial = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.usb_interface* }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no tty structures\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@HSO_PORT_MODEM = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @hso_serial_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hso_serial*, align 8
  %12 = alloca %struct.usb_interface*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.hso_serial*, %struct.hso_serial** %14, align 8
  store %struct.hso_serial* %15, %struct.hso_serial** %11, align 8
  %16 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %17 = icmp ne %struct.hso_serial* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @hso_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %118

22:                                               ; preds = %3
  %23 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %24 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HSO_PORT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @HSO_PORT_MODEM, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %118

35:                                               ; preds = %22
  %36 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %37 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.usb_interface*, %struct.usb_interface** %39, align 8
  store %struct.usb_interface* %40, %struct.usb_interface** %12, align 8
  %41 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %48 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %47, i32 0, i32 3
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @TIOCM_RTS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %57 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %35
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @TIOCM_DTR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %65 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TIOCM_RTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %73 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @TIOCM_DTR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %81 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %84 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %92 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, 2
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %100 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %99, i32 0, i32 3
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %104 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hso_serial*, %struct.hso_serial** %11, align 8
  %109 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @usb_rcvctrlpipe(i32 %112, i32 0)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %117 = call i32 @usb_control_msg(i32 %107, i32 %113, i32 34, i32 33, i32 %114, i32 %115, i32* null, i32 0, i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %98, %32, %18
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @hso_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
