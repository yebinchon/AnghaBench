; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_write_vfta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_write_vfta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

@e1000_82544 = common dso_local global i64 0, align 8
@VFTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_write_vfta(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_82544, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = load i32, i32* @VFTA, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %18, i32 %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = load i32, i32* @VFTA, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %23, i32 %24, i32 %25, i32 %26)
  %28 = call i32 (...) @E1000_WRITE_FLUSH()
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = load i32, i32* @VFTA, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %29, i32 %30, i32 %32, i32 %33)
  %35 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %43

36:                                               ; preds = %13, %3
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = load i32, i32* @VFTA, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %37, i32 %38, i32 %39, i32 %40)
  %42 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %43

43:                                               ; preds = %36, %17
  ret void
}

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
