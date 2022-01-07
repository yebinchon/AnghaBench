; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em2874_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em2874_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.em28xx_IR* }
%struct.em28xx_IR = type { i32, i32, %struct.em28xx* }
%struct.em28xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EM2874_IR_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@EM28XX_XCLK_IR_RC5_MODE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC = common dso_local global i32 0, align 4
@EM2874_IR_NEC = common dso_local global i32 0, align 4
@EM2874_IR_NEC_NO_PARITY = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_0 = common dso_local global i32 0, align 4
@EM2874_IR_RC6_MODE_0 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EM2874_R50_IR_CONFIG = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*)* @em2874_ir_change_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2874_ir_change_protocol(%struct.rc_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.em28xx_IR*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.em28xx_IR*, %struct.em28xx_IR** %10, align 8
  store %struct.em28xx_IR* %11, %struct.em28xx_IR** %6, align 8
  %12 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %13 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %12, i32 0, i32 2
  %14 = load %struct.em28xx*, %struct.em28xx** %13, align 8
  store %struct.em28xx* %14, %struct.em28xx** %7, align 8
  %15 = load i32, i32* @EM2874_IR_RC5, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %23 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %29 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %90

32:                                               ; preds = %2
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %42 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @EM2874_IR_NEC, align 4
  %47 = load i32, i32* @EM2874_IR_NEC_NO_PARITY, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %50 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %89

53:                                               ; preds = %32
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RC_PROTO_BIT_RC6_0, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %61 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @EM2874_IR_RC6_MODE_0, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %68 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @RC_PROTO_BIT_RC6_0, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %88

71:                                               ; preds = %53
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  br label %87

80:                                               ; preds = %71
  %81 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %82 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %106

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %38
  br label %90

90:                                               ; preds = %89, %21
  %91 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %92 = load i32, i32* @EM2874_R50_IR_CONFIG, align 4
  %93 = call i32 @em28xx_write_regs(%struct.em28xx* %91, i32 %92, i32* %8, i32 1)
  %94 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %95 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %96 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %97 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %101 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %94, i32 %95, i32 %99, i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %105 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %90, %80
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
