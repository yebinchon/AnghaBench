; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_mii_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_mii_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mii_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mii_rd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 @SelectPage(i32 2)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %17, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mii_putbit(i32 %15, i32 1)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %11

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mii_wbits(i32 %21, i32 6, i32 4)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mii_wbits(i32 %23, i32 %24, i32 5)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mii_wbits(i32 %26, i32 %27, i32 5)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @mii_idle(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @mii_getbit(i32 %31)
  store i32 32768, i32* %9, align 4
  br label %33

33:                                               ; preds = %45, %20
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @mii_getbit(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = lshr i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %33

48:                                               ; preds = %33
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @mii_idle(i32 %49)
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @mii_putbit(i32, i32) #1

declare dso_local i32 @mii_wbits(i32, i32, i32) #1

declare dso_local i32 @mii_idle(i32) #1

declare dso_local i64 @mii_getbit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
