; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_dev = type { i32 }

@MUX_MODE_CTRL = common dso_local global i32 0, align 4
@rbPaMSMask = common dso_local global i32 0, align 4
@rbPaMSDtvNoGpio = common dso_local global i32 0, align 4
@rbPbMSMask = common dso_local global i32 0, align 4
@rbPbMSDtvNoGpio = common dso_local global i32 0, align 4
@VIDEO_CTRL_STATUS_A = common dso_local global i32 0, align 4
@MPEG2_CTRL_A = common dso_local global i32 0, align 4
@VIDEO_CTRL_STATUS_B = common dso_local global i32 0, align 4
@MPEG2_CTRL_B = common dso_local global i32 0, align 4
@MSI_INT_ENA_CLR = common dso_local global i32 0, align 4
@ALL_INT = common dso_local global i32 0, align 4
@MSI_INT_STATUS = common dso_local global i32 0, align 4
@MSI_INT_STATUS_CLR = common dso_local global i32 0, align 4
@PERIPHERAL_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_dev*)* @smi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_hw_init(%struct.smi_dev* %0) #0 {
  %2 = alloca %struct.smi_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smi_dev* %0, %struct.smi_dev** %2, align 8
  %6 = load i32, i32* @MUX_MODE_CTRL, align 4
  %7 = call i32 @smi_read(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @rbPaMSMask, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @rbPaMSDtvNoGpio, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @rbPbMSMask, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @rbPbMSDtvNoGpio, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, -983041
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 327680
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @MUX_MODE_CTRL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @smi_write(i32 %26, i32 %27)
  %29 = load i32, i32* @VIDEO_CTRL_STATUS_A, align 4
  %30 = call i32 @smi_read(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @VIDEO_CTRL_STATUS_A, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @smi_write(i32 %33, i32 %34)
  %36 = load i32, i32* @MPEG2_CTRL_A, align 4
  %37 = call i32 @smi_read(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -65
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 128
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @MPEG2_CTRL_A, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @smi_write(i32 %42, i32 %43)
  %45 = load i32, i32* @VIDEO_CTRL_STATUS_B, align 4
  %46 = call i32 @smi_read(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, -2
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @VIDEO_CTRL_STATUS_B, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @smi_write(i32 %49, i32 %50)
  %52 = load i32, i32* @MPEG2_CTRL_B, align 4
  %53 = call i32 @smi_read(i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, -65
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, 128
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @MPEG2_CTRL_B, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @smi_write(i32 %58, i32 %59)
  %61 = load i32, i32* @MSI_INT_ENA_CLR, align 4
  %62 = load i32, i32* @ALL_INT, align 4
  %63 = call i32 @smi_write(i32 %61, i32 %62)
  %64 = load i32, i32* @MSI_INT_STATUS, align 4
  %65 = call i32 @smi_read(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @MSI_INT_STATUS_CLR, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @smi_write(i32 %66, i32 %67)
  %69 = load i32, i32* @PERIPHERAL_CTRL, align 4
  %70 = call i32 @smi_clear(i32 %69, i32 771)
  %71 = call i32 @msleep(i32 50)
  %72 = load i32, i32* @PERIPHERAL_CTRL, align 4
  %73 = call i32 @smi_set(i32 %72, i32 257)
  ret i32 0
}

declare dso_local i32 @smi_read(i32) #1

declare dso_local i32 @smi_write(i32, i32) #1

declare dso_local i32 @smi_clear(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smi_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
