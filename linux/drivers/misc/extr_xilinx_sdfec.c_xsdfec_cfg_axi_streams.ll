; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_cfg_axi_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_cfg_axi_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { %struct.xsdfec_config }
%struct.xsdfec_config = type { i32, i32, i32, i32 }

@XSDFEC_AXIS_DOUT_WORDS_LSB = common dso_local global i32 0, align 4
@XSDFEC_AXIS_DOUT_WIDTH_LSB = common dso_local global i32 0, align 4
@XSDFEC_AXIS_DIN_WORDS_LSB = common dso_local global i32 0, align 4
@XSDFEC_AXIS_DIN_WIDTH_LSB = common dso_local global i32 0, align 4
@XSDFEC_AXIS_WIDTH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*)* @xsdfec_cfg_axi_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_cfg_axi_streams(%struct.xsdfec_dev* %0) #0 {
  %2 = alloca %struct.xsdfec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xsdfec_config*, align 8
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %2, align 8
  %9 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %10 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %9, i32 0, i32 0
  store %struct.xsdfec_config* %10, %struct.xsdfec_config** %8, align 8
  %11 = load %struct.xsdfec_config*, %struct.xsdfec_config** %8, align 8
  %12 = getelementptr inbounds %struct.xsdfec_config, %struct.xsdfec_config* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @xsdfec_translate_axis_words_cfg_val(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.xsdfec_config*, %struct.xsdfec_config** %8, align 8
  %16 = getelementptr inbounds %struct.xsdfec_config, %struct.xsdfec_config* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @xsdfec_translate_axis_width_cfg_val(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.xsdfec_config*, %struct.xsdfec_config** %8, align 8
  %20 = getelementptr inbounds %struct.xsdfec_config, %struct.xsdfec_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xsdfec_translate_axis_words_cfg_val(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.xsdfec_config*, %struct.xsdfec_config** %8, align 8
  %24 = getelementptr inbounds %struct.xsdfec_config, %struct.xsdfec_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xsdfec_translate_axis_width_cfg_val(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XSDFEC_AXIS_DOUT_WORDS_LSB, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @XSDFEC_AXIS_DOUT_WIDTH_LSB, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @XSDFEC_AXIS_DIN_WORDS_LSB, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @XSDFEC_AXIS_DIN_WIDTH_LSB, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %2, align 8
  %46 = load i32, i32* @XSDFEC_AXIS_WIDTH_ADDR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %45, i32 %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @xsdfec_translate_axis_words_cfg_val(i32) #1

declare dso_local i32 @xsdfec_translate_axis_width_cfg_val(i32) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
