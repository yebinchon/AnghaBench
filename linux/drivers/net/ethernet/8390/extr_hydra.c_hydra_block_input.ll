; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_hydra.c_hydra_block_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_hydra.c_hydra_block_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sk_buff = type { i64 }

@HYDRA_NIC_BASE = common dso_local global i64 0, align 8
@NESM_START_PG = common dso_local global i32 0, align 4
@NESM_STOP_PG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.sk_buff*, i32)* @hydra_block_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hydra_block_input(%struct.net_device* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @HYDRA_NIC_BASE, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  %23 = load i32, i32* @NESM_START_PG, align 4
  %24 = shl i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = sub i64 %22, %25
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* @NESM_STOP_PG, align 4
  %40 = shl i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = add i64 %38, %41
  %43 = icmp ugt i64 %37, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %33
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @NESM_STOP_PG, align 4
  %47 = shl i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = add i64 %45, %48
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @z_memcpy_fromio(i64 %55, i64 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @z_memcpy_fromio(i64 %67, i64 %68, i32 %69)
  br label %78

71:                                               ; preds = %33
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @z_memcpy_fromio(i64 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %44
  ret void
}

declare dso_local i32 @z_memcpy_fromio(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
