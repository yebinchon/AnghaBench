; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@MGMT = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MGMT, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 23
  %20 = or i32 1342177280, %19
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 18
  %23 = or i32 %20, %22
  %24 = or i32 %23, 131072
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @mdio_sync(i32 %27)
  store i32 31, i32* %11, align 4
  br label %29

29:                                               ; preds = %52, %4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @outb(i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @outb(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  br label %29

55:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %65, %55
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @outb(i32 0, i32 %60)
  %62 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @outb(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %56

68:                                               ; preds = %56
  ret void
}

declare dso_local i32 @mdio_sync(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
