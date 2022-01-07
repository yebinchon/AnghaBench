; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_hw_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_hw_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i64* }

@REG_MAC_STA_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atl1e_hw_set_mac_addr(%struct.atl1e_hw* %0) #0 {
  %2 = alloca %struct.atl1e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %2, align 8
  %4 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %5 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 2
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 24
  %11 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %12 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 16
  %18 = or i32 %10, %17
  %19 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %20 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 8
  %26 = or i32 %18, %25
  %27 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %28 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 5
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = or i32 %26, %32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %35 = load i32, i32* @REG_MAC_STA_ADDR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @AT_WRITE_REG_ARRAY(%struct.atl1e_hw* %34, i32 %35, i32 0, i32 %36)
  %38 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %39 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 8
  %45 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %46 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = or i32 %44, %50
  store i32 %51, i32* %3, align 4
  %52 = load %struct.atl1e_hw*, %struct.atl1e_hw** %2, align 8
  %53 = load i32, i32* @REG_MAC_STA_ADDR, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @AT_WRITE_REG_ARRAY(%struct.atl1e_hw* %52, i32 %53, i32 1, i32 %54)
  ret void
}

declare dso_local i32 @AT_WRITE_REG_ARRAY(%struct.atl1e_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
