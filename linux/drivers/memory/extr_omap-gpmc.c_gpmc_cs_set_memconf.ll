; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_set_memconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_set_memconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@GPMC_CHUNK_SHIFT = common dso_local global i32 0, align 4
@GPMC_SECTION_SHIFT = common dso_local global i32 0, align 4
@GPMC_CONFIG7_MASKADDRESS_OFFSET = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG7 = common dso_local global i32 0, align 4
@GPMC_CONFIG7_MASK = common dso_local global i32 0, align 4
@GPMC_CONFIG7_BASEADDRESS_MASK = common dso_local global i32 0, align 4
@GPMC_CONFIG7_MASKADDRESS_MASK = common dso_local global i32 0, align 4
@GPMC_CONFIG7_CSVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gpmc_cs_set_memconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_cs_set_memconf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load i32, i32* @GPMC_CHUNK_SHIFT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @GPMC_SECTION_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @GPMC_CHUNK_SHIFT, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @GPMC_CONFIG7_MASKADDRESS_OFFSET, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GPMC_CS_CONFIG7, align 4
  %34 = call i32 @gpmc_cs_read_reg(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @GPMC_CONFIG7_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @GPMC_CONFIG7_BASEADDRESS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GPMC_CONFIG7_MASKADDRESS_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @GPMC_CONFIG7_CSVALID, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @GPMC_CS_CONFIG7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @gpmc_cs_write_reg(i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %18, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @gpmc_cs_read_reg(i32, i32) #1

declare dso_local i32 @gpmc_cs_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
