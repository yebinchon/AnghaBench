; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_send_pulse_irdeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_send_pulse_irdeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@serial_ir = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UART_TX = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @send_pulse_irdeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_pulse_irdeo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul i32 %10, 1152
  %12 = udiv i32 %11, 10000
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serial_ir, i32 0, i32 0), align 4
  %15 = icmp sgt i32 %14, 50
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8 3, i8* %8, align 1
  br label %18

17:                                               ; preds = %2
  store i8 1, i8* %8, align 1
  br label %18

18:                                               ; preds = %17, %16
  store i32 0, i32* %6, align 4
  store i8 127, i8* %7, align 1
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %25, 3
  %27 = shl i32 %24, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %30, 1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, -1
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %7, align 1
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %57

44:                                               ; preds = %22
  %45 = load i32, i32* @UART_TX, align 4
  %46 = load i8, i8* %7, align 1
  %47 = call i32 @soutp(i32 %45, i8 zeroext %46)
  br label %48

48:                                               ; preds = %55, %44
  %49 = load i32, i32* @UART_LSR, align 4
  %50 = call i32 @sinp(i32 %49)
  %51 = load i32, i32* @UART_LSR_THRE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %48

56:                                               ; preds = %48
  store i8 127, i8* %7, align 1
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %22
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = sub nsw i64 %59, 3
  store i64 %60, i64* %5, align 8
  br label %19

61:                                               ; preds = %19
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32, i32* @UART_TX, align 4
  %66 = load i8, i8* %7, align 1
  %67 = call i32 @soutp(i32 %65, i8 zeroext %66)
  br label %68

68:                                               ; preds = %75, %64
  %69 = load i32, i32* @UART_LSR, align 4
  %70 = call i32 @sinp(i32 %69)
  %71 = load i32, i32* @UART_LSR_TEMT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %68

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %61
  ret void
}

declare dso_local i32 @soutp(i32, i8 zeroext) #1

declare dso_local i32 @sinp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
