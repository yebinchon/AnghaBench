; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_2__, %struct.sdio_uart_port* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_uart_port = type { i32 }
%struct.ktermios = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @sdio_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.sdio_uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %9, align 8
  store %struct.sdio_uart_port* %10, %struct.sdio_uart_port** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %16 = call i64 @sdio_uart_claim_func(%struct.sdio_uart_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %116

19:                                               ; preds = %2
  %20 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 1
  %23 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %24 = call i32 @sdio_uart_change_speed(%struct.sdio_uart_port* %20, %struct.TYPE_2__* %22, %struct.ktermios* %23)
  %25 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CBAUD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @CBAUD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %38 = load i32, i32* @TIOCM_RTS, align 4
  %39 = load i32, i32* @TIOCM_DTR, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %31, %19
  %43 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CBAUD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CBAUD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load i32, i32* @TIOCM_DTR, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CRTSCTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %62 = call i32 @tty_throttled(%struct.tty_struct* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* @TIOCM_RTS, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @sdio_uart_set_mctrl(%struct.sdio_uart_port* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %49, %42
  %73 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %74 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CRTSCTS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @CRTSCTS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %88 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %87)
  br label %89

89:                                               ; preds = %84, %79, %72
  %90 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %91 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CRTSCTS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @CRTSCTS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %103 = call i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port* %102)
  %104 = load i32, i32* @TIOCM_CTS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %109 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %111 = call i32 @sdio_uart_stop_tx(%struct.sdio_uart_port* %110)
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %96, %89
  %114 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %115 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %114)
  br label %116

116:                                              ; preds = %113, %18
  ret void
}

declare dso_local i64 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_change_speed(%struct.sdio_uart_port*, %struct.TYPE_2__*, %struct.ktermios*) #1

declare dso_local i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @sdio_uart_set_mctrl(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_stop_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
