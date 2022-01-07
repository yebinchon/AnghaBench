; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_write_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@REG_SW_ALU_VAL_A = common dso_local global i32 0, align 4
@REG_SW_ALU_VAL_B = common dso_local global i32 0, align 4
@REG_SW_ALU_VAL_C = common dso_local global i32 0, align 4
@REG_SW_ALU_VAL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32*)* @ksz9477_write_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_write_table(%struct.ksz_device* %0, i32* %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %6 = load i32, i32* @REG_SW_ALU_VAL_A, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ksz_write32(%struct.ksz_device* %5, i32 %6, i32 %9)
  %11 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %12 = load i32, i32* @REG_SW_ALU_VAL_B, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ksz_write32(%struct.ksz_device* %11, i32 %12, i32 %15)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %18 = load i32, i32* @REG_SW_ALU_VAL_C, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ksz_write32(%struct.ksz_device* %17, i32 %18, i32 %21)
  %23 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %24 = load i32, i32* @REG_SW_ALU_VAL_D, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ksz_write32(%struct.ksz_device* %23, i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @ksz_write32(%struct.ksz_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
