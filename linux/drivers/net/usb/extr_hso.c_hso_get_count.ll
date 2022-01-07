; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hso_serial* }
%struct.hso_serial = type { i32, %struct.hso_tiocmget* }
%struct.hso_tiocmget = type { i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @hso_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_get_count(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_icounter_struct*, align 8
  %6 = alloca %struct.uart_icount, align 4
  %7 = alloca %struct.hso_serial*, align 8
  %8 = alloca %struct.hso_tiocmget*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.hso_serial*, %struct.hso_serial** %10, align 8
  store %struct.hso_serial* %11, %struct.hso_serial** %7, align 8
  %12 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %13 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %12, i32 0, i32 1
  %14 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %13, align 8
  store %struct.hso_tiocmget* %14, %struct.hso_tiocmget** %8, align 8
  %15 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %16 = call i32 @memset(%struct.serial_icounter_struct* %15, i32 0, i32 44)
  %17 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %18 = icmp ne %struct.hso_tiocmget* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %24 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %27 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %26, i32 0, i32 0
  %28 = call i32 @memcpy(%struct.uart_icount* %6, i32* %27, i32 44)
  %29 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %30 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %35 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %39 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %43 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %47 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %51 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %55 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %59 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %63 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %67 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %71 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %5, align 8
  %75 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %22, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @memset(%struct.serial_icounter_struct*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(%struct.uart_icount*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
