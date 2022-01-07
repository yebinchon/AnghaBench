; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_i2c.c_mantis_i2c_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_i2c.c_mantis_i2c_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Disabling I2C interrupt\00", align 1
@MANTIS_INT_I2CDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Removing I2C adapter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_i2c_exit(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %3 = load i32, i32* @MANTIS_DEBUG, align 4
  %4 = call i32 @dprintk(i32 %3, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %6 = load i32, i32* @MANTIS_INT_I2CDONE, align 4
  %7 = call i32 @mantis_mask_ints(%struct.mantis_pci* %5, i32 %6)
  %8 = load i32, i32* @MANTIS_DEBUG, align 4
  %9 = call i32 @dprintk(i32 %8, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %11 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %10, i32 0, i32 0
  %12 = call i32 @i2c_del_adapter(i32* %11)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @mantis_mask_ints(%struct.mantis_pci*, i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
