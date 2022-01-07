; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_rx_max_frame_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_rx_max_frame_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@MAC_RX = common dso_local global i32 0, align 4
@MAC_RX_RXEN_ = common dso_local global i32 0, align 4
@MAC_RX_MAX_SIZE_MASK_ = common dso_local global i32 0, align 4
@MAC_RX_MAX_SIZE_SHIFT_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32)* @lan78xx_set_rx_max_frame_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_set_rx_max_frame_length(%struct.lan78xx_net* %0, i32 %1) #0 {
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %9 = load i32, i32* @MAC_RX, align 4
  %10 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %8, i32 %9, i32* %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAC_RX_RXEN_, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @MAC_RX_RXEN_, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %24 = load i32, i32* @MAC_RX, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %2
  %28 = load i32, i32* @MAC_RX_MAX_SIZE_MASK_, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 4
  %34 = load i32, i32* @MAC_RX_MAX_SIZE_SHIFT_, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @MAC_RX_MAX_SIZE_MASK_, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %41 = load i32, i32* @MAC_RX, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %27
  %47 = load i32, i32* @MAC_RX_RXEN_, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %51 = load i32, i32* @MAC_RX, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %27
  ret i32 0
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
