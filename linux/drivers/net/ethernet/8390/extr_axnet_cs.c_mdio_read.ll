; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_ENB_IN = common dso_local global i32 0, align 4
@MDIO_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 5
  %13 = or i32 251904, %12
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @mdio_sync(i32 %16)
  store i32 14, i32* %8, align 4
  br label %18

18:                                               ; preds = %41, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @outb_p(i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @outb_p(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %18

44:                                               ; preds = %18
  store i32 19, i32* %8, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load i32, i32* @MDIO_ENB_IN, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @outb_p(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @inb_p(i32 %54)
  %56 = load i32, i32* @MDIO_DATA_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = or i32 %53, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @MDIO_ENB_IN, align 4
  %62 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @outb_p(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %8, align 4
  br label %45

69:                                               ; preds = %45
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 1
  %72 = and i32 %71, 65535
  ret i32 %72
}

declare dso_local i32 @mdio_sync(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
