; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_wait_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_wait_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, %struct.hso_tiocmget* }
%struct.hso_tiocmget = type { i32, i32 }
%struct.uart_icount = type { i64, i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_serial*, i64)* @hso_wait_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_wait_modem_status(%struct.hso_serial* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hso_serial*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uart_icount, align 8
  %7 = alloca %struct.uart_icount, align 8
  %8 = alloca %struct.hso_tiocmget*, align 8
  %9 = alloca i32, align 4
  store %struct.hso_serial* %0, %struct.hso_serial** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, i32 %11)
  %13 = load %struct.hso_serial*, %struct.hso_serial** %4, align 8
  %14 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %13, i32 0, i32 1
  %15 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %14, align 8
  store %struct.hso_tiocmget* %15, %struct.hso_tiocmget** %8, align 8
  %16 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %17 = icmp ne %struct.hso_tiocmget* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %97

21:                                               ; preds = %2
  %22 = load %struct.hso_serial*, %struct.hso_serial** %4, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %26 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %25, i32 0, i32 1
  %27 = call i32 @memcpy(%struct.uart_icount* %6, i32* %26, i32 24)
  %28 = load %struct.hso_serial*, %struct.hso_serial** %4, align 8
  %29 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %32 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %31, i32 0, i32 0
  %33 = call i32 @add_wait_queue(i32* %32, i32* @wait)
  br label %34

34:                                               ; preds = %87, %21
  %35 = load %struct.hso_serial*, %struct.hso_serial** %4, align 8
  %36 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %39 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %38, i32 0, i32 1
  %40 = call i32 @memcpy(%struct.uart_icount* %7, i32* %39, i32 24)
  %41 = load %struct.hso_serial*, %struct.hso_serial** %4, align 8
  %42 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %45 = call i32 @set_current_state(i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @TIOCM_RNG, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %78, label %56

56:                                               ; preds = %50, %34
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @TIOCM_DSR, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %78, label %67

67:                                               ; preds = %61, %56
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @TIOCM_CD, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %6, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %61, %50
  store i32 0, i32* %9, align 4
  br label %90

79:                                               ; preds = %72, %67
  %80 = call i32 (...) @schedule()
  %81 = load i32, i32* @current, align 4
  %82 = call i64 @signal_pending(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ERESTARTSYS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %90

87:                                               ; preds = %79
  %88 = bitcast %struct.uart_icount* %6 to i8*
  %89 = bitcast %struct.uart_icount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  br label %34

90:                                               ; preds = %84, %78
  %91 = load i32, i32* @TASK_RUNNING, align 4
  %92 = call i32 @__set_current_state(i32 %91)
  %93 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %94 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %93, i32 0, i32 0
  %95 = call i32 @remove_wait_queue(i32* %94, i32* @wait)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(%struct.uart_icount*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
