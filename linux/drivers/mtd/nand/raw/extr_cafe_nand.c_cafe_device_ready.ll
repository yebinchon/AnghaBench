; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_device_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_device_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.cafe_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAND_STATUS = common dso_local global i32 0, align 4
@NAND_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NAND device is%s ready, IRQ %x (%x) (%x,%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@GLOBAL_IRQ = common dso_local global i32 0, align 4
@GLOBAL_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @cafe_device_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_device_ready(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.cafe_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = call %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip* %6)
  store %struct.cafe_priv* %7, %struct.cafe_priv** %3, align 8
  %8 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %9 = load i32, i32* @NAND_STATUS, align 4
  %10 = call i32 @cafe_readl(%struct.cafe_priv* %8, i32 %9)
  %11 = and i32 %10, 1073741824
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %17 = load i32, i32* @NAND_IRQ, align 4
  %18 = call i32 @cafe_readl(%struct.cafe_priv* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NAND_IRQ, align 4
  %22 = call i32 @cafe_writel(%struct.cafe_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %24 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %33 = load i32, i32* @NAND_IRQ, align 4
  %34 = call i32 @cafe_readl(%struct.cafe_priv* %32, i32 %33)
  %35 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %36 = load i32, i32* @GLOBAL_IRQ, align 4
  %37 = call i32 @cafe_readl(%struct.cafe_priv* %35, i32 %36)
  %38 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %39 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %40 = call i32 @cafe_readl(%struct.cafe_priv* %38, i32 %39)
  %41 = call i32 @cafe_dev_dbg(i32* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
