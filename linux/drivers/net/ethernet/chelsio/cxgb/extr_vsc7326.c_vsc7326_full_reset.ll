; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_vsc7326.c_vsc7326_full_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_vsc7326.c_vsc7326_full_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_ELMER0_GPO = common dso_local global i32 0, align 4
@REG_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vsc7326_full_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc7326_full_reset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 65535, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @A_ELMER0_GPO, align 4
  %7 = call i32 @t1_tpi_read(i32* %5, i32 %6, i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, -2
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @A_ELMER0_GPO, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @t1_tpi_write(i32* %10, i32 %11, i32 %12)
  %14 = call i32 @udelay(i32 2)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 2048
  store i32 %18, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @A_ELMER0_GPO, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @t1_tpi_write(i32* %19, i32 %20, i32 %21)
  %23 = call i32 @mdelay(i32 1)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @REG_SW_RESET, align 4
  %26 = call i32 @vsc_write(i32* %24, i32 %25, i32 -2147483647)
  br label %27

27:                                               ; preds = %32, %1
  %28 = call i32 @mdelay(i32 1)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @REG_SW_RESET, align 4
  %31 = call i32 @vsc_read(i32* %29, i32 %30, i32* %4)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %27, label %35

35:                                               ; preds = %32
  ret void
}

declare dso_local i32 @t1_tpi_read(i32*, i32, i32*) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vsc_write(i32*, i32, i32) #1

declare dso_local i32 @vsc_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
