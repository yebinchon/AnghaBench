; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-platform.c_vsc73xx_make_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-platform.c_vsc73xx_make_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VSC73XX_CMD_PLATFORM_BLOCK_MASK = common dso_local global i32 0, align 4
@VSC73XX_CMD_PLATFORM_BLOCK_SHIFT = common dso_local global i32 0, align 4
@VSC73XX_CMD_PLATFORM_SUBBLOCK_MASK = common dso_local global i32 0, align 4
@VSC73XX_CMD_PLATFORM_SUBBLOCK_SHIFT = common dso_local global i32 0, align 4
@VSC73XX_CMD_PLATFORM_REGISTER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vsc73xx_make_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_make_addr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @VSC73XX_CMD_PLATFORM_BLOCK_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @VSC73XX_CMD_PLATFORM_BLOCK_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @VSC73XX_CMD_PLATFORM_SUBBLOCK_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @VSC73XX_CMD_PLATFORM_SUBBLOCK_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @VSC73XX_CMD_PLATFORM_REGISTER_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
