; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_stat_update48.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_stat_update48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i64 }

@I40E_DEV_ID_QEMU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*, i32, i32, i32, i32*, i32*)* @i40e_stat_update48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_stat_update48(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @I40E_DEV_ID_QEMU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %6
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @rd32(%struct.i40e_hw* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @rd32(%struct.i40e_hw* %23, i32 %24)
  %26 = and i32 %25, 65535
  %27 = shl i32 %26, 32
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %13, align 4
  br label %34

30:                                               ; preds = %6
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @rd64(%struct.i40e_hw* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %30, %19
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  %53 = load i32*, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  br label %62

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @BIT_ULL(i32 48)
  %57 = add nsw i32 %55, %56
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %57, %59
  %61 = load i32*, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %48
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, 281474976710655
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @rd64(%struct.i40e_hw*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
