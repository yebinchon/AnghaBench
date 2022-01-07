; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_wait_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_wait_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Timeout waiting for reg 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*, i32, i32, i32, i32)* @bcma_mdio_wait_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_mdio_wait_value(%struct.bcma_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %31, %5
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = sdiv i32 %16, 10
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @bcma_read32(%struct.bcma_device* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %39

29:                                               ; preds = %19
  %30 = call i32 @udelay(i32 10)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %36 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
