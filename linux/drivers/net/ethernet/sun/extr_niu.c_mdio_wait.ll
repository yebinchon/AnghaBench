; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_mdio_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_mdio_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@MIF_FRAME_OUTPUT = common dso_local global i32 0, align 4
@MIF_FRAME_OUTPUT_TA_SHIFT = common dso_local global i32 0, align 4
@MIF_FRAME_OUTPUT_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @mdio_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_wait(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load i32, i32* @MIF_FRAME_OUTPUT, align 4
  %12 = call i32 @nr64(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MIF_FRAME_OUTPUT_TA_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MIF_FRAME_OUTPUT_DATA, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %10
  %23 = call i32 @udelay(i32 10)
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
