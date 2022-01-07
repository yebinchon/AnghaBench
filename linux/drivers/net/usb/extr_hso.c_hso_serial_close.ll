; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hso_serial* }
%struct.hso_serial = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Closing serial port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @hso_serial_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_serial_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  store %struct.hso_serial* %9, %struct.hso_serial** %5, align 8
  %10 = call i32 @hso_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %12 = icmp eq %struct.hso_serial* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %16 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %21 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %29 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_autopm_get_interface(i32 %32)
  br label %34

34:                                               ; preds = %27, %14
  %35 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %36 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %34
  %46 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %50 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %49, i32 0, i32 2
  %51 = call i32 @tty_port_tty_set(%struct.TYPE_3__* %50, i32* null)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %56 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @hso_stop_serial_device(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %61 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %60, i32 0, i32 1
  %62 = call i32 @tasklet_kill(i32* %61)
  br label %63

63:                                               ; preds = %59, %34
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %68 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_autopm_put_interface(i32 %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %75 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %73, %13
  ret void
}

declare dso_local i32 @hso_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @hso_stop_serial_device(%struct.TYPE_4__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
