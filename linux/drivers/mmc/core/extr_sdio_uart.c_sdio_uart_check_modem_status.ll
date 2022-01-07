; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*)* @sdio_uart_check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_check_modem_status(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %6 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %7 = load i32, i32* @UART_MSR, align 4
  %8 = call i32 @sdio_in(%struct.sdio_uart_port* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %113

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @UART_MSR_TERI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @UART_MSR_DDSR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @UART_MSR_DDCD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @UART_MSR_DCD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @wake_up_interruptible(i32* %54)
  br label %60

56:                                               ; preds = %41
  %57 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %57, i32 0, i32 0
  %59 = call i32 @tty_port_tty_hangup(%struct.TYPE_5__* %58, i32 0)
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @UART_MSR_DCTS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %61
  %67 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %68 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %73 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %72, i32 0, i32 0
  %74 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_5__* %73)
  store %struct.tty_struct* %74, %struct.tty_struct** %4, align 8
  %75 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %76 = icmp ne %struct.tty_struct* %75, null
  br i1 %76, label %77, label %110

77:                                               ; preds = %66
  %78 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %79 = call i64 @C_CRTSCTS(%struct.tty_struct* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @UART_MSR_CTS, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %94 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %96 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %95)
  %97 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %98 = call i32 @tty_wakeup(%struct.tty_struct* %97)
  br label %99

99:                                               ; preds = %92, %89
  br label %109

100:                                              ; preds = %81
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %107 = call i32 @sdio_uart_stop_tx(%struct.sdio_uart_port* %106)
  br label %108

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108, %99
  br label %110

110:                                              ; preds = %109, %77, %66
  %111 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %112 = call i32 @tty_kref_put(%struct.tty_struct* %111)
  br label %113

113:                                              ; preds = %13, %110, %61
  ret void
}

declare dso_local i32 @sdio_in(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_port_tty_hangup(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_5__*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i32 @sdio_uart_stop_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
