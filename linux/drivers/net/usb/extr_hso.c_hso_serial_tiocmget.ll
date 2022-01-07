; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_serial_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hso_serial* }
%struct.hso_serial = type { i32, %struct.hso_tiocmget*, i64, i64 }
%struct.hso_tiocmget = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"no tty structures\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@B_RING_SIGNAL = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@B_RX_CARRIER = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@B_TX_CARRIER = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @hso_serial_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca %struct.hso_tiocmget*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  store %struct.hso_serial* %10, %struct.hso_serial** %5, align 8
  %11 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %12 = icmp ne %struct.hso_serial* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @hso_dbg(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %19 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %22 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @TIOCM_RTS, align 4
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %31 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @TIOCM_DTR, align 4
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %29, %38
  store i32 %39, i32* %4, align 4
  %40 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 1
  %42 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %41, align 8
  store %struct.hso_tiocmget* %42, %struct.hso_tiocmget** %6, align 8
  %43 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %44 = icmp ne %struct.hso_tiocmget* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %37
  %46 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %6, align 8
  %47 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @B_RING_SIGNAL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @TIOCM_RNG, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @B_RX_CARRIER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @TIOCM_CD, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @B_TX_CARRIER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @TIOCM_DSR, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %79 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_irq(i32* %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @hso_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
