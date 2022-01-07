; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*, i32*)* @sdio_uart_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_receive_chars(%struct.sdio_uart_port* %0, i32* %1) #0 {
  %3 = alloca %struct.sdio_uart_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 256, i32* %7, align 4
  br label %8

8:                                                ; preds = %168, %2
  %9 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %10 = load i32, i32* @UART_RX, align 4
  %11 = call i32 @sdio_in(%struct.sdio_uart_port* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UART_LSR_BI, align 4
  %21 = load i32, i32* @UART_LSR_PE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @UART_LSR_FE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @UART_LSR_OE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %19, %26
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %120

30:                                               ; preds = %8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UART_LSR_BI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load i32, i32* @UART_LSR_FE, align 4
  %38 = load i32, i32* @UART_LSR_PE, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %75

49:                                               ; preds = %30
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UART_LSR_PE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %74

61:                                               ; preds = %49
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UART_LSR_FE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %69 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @UART_LSR_OE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %83 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UART_LSR_BI, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i32, i32* @TTY_BREAK, align 4
  store i32 %100, i32* %6, align 4
  br label %119

101:                                              ; preds = %87
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UART_LSR_PE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @TTY_PARITY, align 4
  store i32 %108, i32* %6, align 4
  br label %118

109:                                              ; preds = %101
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UART_LSR_FE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @TTY_FRAME, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %109
  br label %118

118:                                              ; preds = %117, %107
  br label %119

119:                                              ; preds = %118, %99
  br label %120

120:                                              ; preds = %119, %8
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %124 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %122, %125
  %127 = load i32, i32* @UART_LSR_OE, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %133 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %132, i32 0, i32 2
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @tty_insert_flip_char(i32* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %120
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %141 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %139, %143
  %145 = load i32, i32* @UART_LSR_OE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %137
  %149 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %150 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %149, i32 0, i32 2
  %151 = load i32, i32* @TTY_OVERRUN, align 4
  %152 = call i32 @tty_insert_flip_char(i32* %150, i32 0, i32 %151)
  br label %153

153:                                              ; preds = %148, %137
  %154 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %155 = load i32, i32* @UART_LSR, align 4
  %156 = call i32 @sdio_in(%struct.sdio_uart_port* %154, i32 %155)
  %157 = load i32*, i32** %4, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %153
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @UART_LSR_DR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %7, align 4
  %167 = icmp sgt i32 %165, 0
  br label %168

168:                                              ; preds = %164, %158
  %169 = phi i1 [ false, %158 ], [ %167, %164 ]
  br i1 %169, label %8, label %170

170:                                              ; preds = %168
  %171 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %172 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %171, i32 0, i32 2
  %173 = call i32 @tty_flip_buffer_push(i32* %172)
  ret void
}

declare dso_local i32 @sdio_in(%struct.sdio_uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
