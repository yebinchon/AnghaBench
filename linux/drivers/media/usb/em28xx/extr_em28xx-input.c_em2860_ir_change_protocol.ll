; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em2860_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em2860_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.em28xx_IR* }
%struct.em28xx_IR = type { i32, i32, %struct.em28xx* }
%struct.em28xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@EM28XX_XCLK_IR_RC5_MODE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*)* @em2860_ir_change_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2860_ir_change_protocol(%struct.rc_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.em28xx_IR*, align 8
  %7 = alloca %struct.em28xx*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.em28xx_IR*, %struct.em28xx_IR** %9, align 8
  store %struct.em28xx_IR* %10, %struct.em28xx_IR** %6, align 8
  %11 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %12 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %11, i32 0, i32 2
  %13 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  store %struct.em28xx* %13, %struct.em28xx** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %21 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %27 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %66

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %40 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %45 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %65

48:                                               ; preds = %30
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %64

57:                                               ; preds = %48
  %58 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %59 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %36
  br label %66

66:                                               ; preds = %65, %19
  %67 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %68 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %69 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %74 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %67, i32 %68, i32 %72, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %78 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %66, %57
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
