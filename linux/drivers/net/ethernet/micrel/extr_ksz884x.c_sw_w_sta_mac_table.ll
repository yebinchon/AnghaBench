; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_w_sta_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_w_sta_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@STATIC_MAC_FWD_PORTS_SHIFT = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_OVERRIDE = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_USE_FID = common dso_local global i32 0, align 4
@STATIC_MAC_FID_SHIFT = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_VALID = common dso_local global i32 0, align 4
@TABLE_STATIC_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32*, i32, i32, i32, i32, i32)* @sw_w_sta_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_w_sta_mac_table(%struct.ksz_hw* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ksz_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 24
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %27, %31
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  store i32 %36, i32* %18, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @STATIC_MAC_FWD_PORTS_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %17, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %8
  %53 = load i32, i32* @STATIC_MAC_TABLE_OVERRIDE, align 4
  %54 = load i32, i32* %17, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %52, %8
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* @STATIC_MAC_TABLE_USE_FID, align 4
  %61 = load i32, i32* %17, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @STATIC_MAC_FID_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %17, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @STATIC_MAC_TABLE_VALID, align 4
  %73 = load i32, i32* %17, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %77 = load i32, i32* @TABLE_STATIC_MAC, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @sw_w_table_64(%struct.ksz_hw* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @sw_w_table_64(%struct.ksz_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
