; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_ivar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_IVAR_ALLOC_VAL = common dso_local global i32 0, align 4
@IXGBE_VTIVAR_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, i32, i32, i32)* @ixgbevf_set_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_set_ivar(%struct.ixgbevf_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbevf_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 0
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load i32, i32* @IXGBE_IVAR_ALLOC_VAL, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %21 = load i32, i32* @IXGBE_VTIVAR_MISC, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, -256
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %29 = load i32, i32* @IXGBE_VTIVAR_MISC, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  br label %63

32:                                               ; preds = %4
  %33 = load i32, i32* @IXGBE_IVAR_ALLOC_VAL, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = mul nsw i32 16, %37
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 8, %39
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 1
  %45 = call i32 @IXGBE_VTIVAR(i32 %44)
  %46 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 255, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 1
  %60 = call i32 @IXGBE_VTIVAR(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %32, %16
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VTIVAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
