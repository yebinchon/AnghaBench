; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_reg_set_and_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_reg_set_and_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32*, i32, i32, i32)* @reg_set_and_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_set_and_check(%struct.ixgbe_adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ixgbe_removed(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  store i32 1, i32* %21, align 4
  store i32 1, i32* %6, align 4
  br label %68

22:                                               ; preds = %5
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ixgbe_read_reg(%struct.TYPE_3__* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @ixgbe_write_reg(%struct.TYPE_3__* %28, i32 %29, i32 %32)
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ixgbe_read_reg(%struct.TYPE_3__* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %22
  %46 = load i32, i32* @drv, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @e_err(i32 %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ixgbe_write_reg(%struct.TYPE_3__* %58, i32 %59, i32 %60)
  store i32 1, i32* %6, align 4
  br label %68

62:                                               ; preds = %22
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @ixgbe_write_reg(%struct.TYPE_3__* %64, i32 %65, i32 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %45, %20
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @ixgbe_read_reg(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ixgbe_write_reg(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
