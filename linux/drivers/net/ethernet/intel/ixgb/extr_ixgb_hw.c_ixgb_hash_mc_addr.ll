; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_hash_mc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_hash_mc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"MC filter type param set incorrectly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*, i32*)* @ixgb_hash_mc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_hash_mc_addr(%struct.ixgb_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @ENTER()
  %7 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %49 [
    i32 0, label %10
    i32 1, label %20
    i32 2, label %30
    i32 3, label %40
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 4
  %19 = or i32 %14, %18
  store i32 %19, i32* %5, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 3
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 5
  %29 = or i32 %24, %28
  store i32 %29, i32* %5, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 2
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 6
  %39 = or i32 %34, %38
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %2
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @ASSERT(i32 0)
  br label %52

52:                                               ; preds = %49, %40, %30, %20, %10
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 4095
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
