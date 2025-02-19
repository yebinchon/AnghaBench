; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-ir.c_smi_ir_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-ir.c_smi_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_rc = type { %struct.smi_dev* }
%struct.smi_dev = type { i32 }

@IR_Idle_Cnt_Low = common dso_local global i32 0, align 4
@SMI_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@SMI_SAMPLE_IDLEMIN = common dso_local global i32 0, align 4
@IR_Init_Reg = common dso_local global i32 0, align 4
@rbIRen = common dso_local global i32 0, align 4
@rbIRhighidle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smi_ir_start(%struct.smi_rc* %0) #0 {
  %2 = alloca %struct.smi_rc*, align 8
  %3 = alloca %struct.smi_dev*, align 8
  store %struct.smi_rc* %0, %struct.smi_rc** %2, align 8
  %4 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %5 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %4, i32 0, i32 0
  %6 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  store %struct.smi_dev* %6, %struct.smi_dev** %3, align 8
  %7 = load i32, i32* @IR_Idle_Cnt_Low, align 4
  %8 = load i32, i32* @SMI_SAMPLE_PERIOD, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %9, 65535
  %11 = shl i32 %10, 16
  %12 = load i32, i32* @SMI_SAMPLE_IDLEMIN, align 4
  %13 = and i32 %12, 65535
  %14 = or i32 %11, %13
  %15 = call i32 @smi_write(i32 %7, i32 %14)
  %16 = call i32 @msleep(i32 20)
  %17 = load i32, i32* @IR_Init_Reg, align 4
  %18 = load i32, i32* @rbIRen, align 4
  %19 = load i32, i32* @rbIRhighidle, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @smi_set(i32 %17, i32 %20)
  %22 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %23 = call i32 @smi_ir_enableInterrupt(%struct.smi_rc* %22)
  ret void
}

declare dso_local i32 @smi_write(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smi_set(i32, i32) #1

declare dso_local i32 @smi_ir_enableInterrupt(%struct.smi_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
