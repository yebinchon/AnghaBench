; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_set_special_mcast_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_set_special_mcast_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }

@MVNETA_DA_FILT_SPEC_MCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, i8, i32)* @mvneta_set_special_mcast_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_set_special_mcast_addr(%struct.mvneta_port* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.mvneta_port*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = sdiv i32 %11, 4
  store i32 %12, i32* %8, align 4
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = srem i32 %14, 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %17 = load i64, i64* @MVNETA_DA_FILT_SPEC_MCAST, align 8
  %18 = load i32, i32* %8, align 4
  %19 = mul i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @mvreg_read(%struct.mvneta_port* %16, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = mul i32 8, %26
  %28 = shl i32 255, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 8, %33
  %35 = shl i32 255, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 1
  %41 = or i32 1, %40
  %42 = load i32, i32* %9, align 4
  %43 = mul i32 8, %42
  %44 = shl i32 %41, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %32, %25
  %48 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %49 = load i64, i64* @MVNETA_DA_FILT_SPEC_MCAST, align 8
  %50 = load i32, i32* %8, align 4
  %51 = mul i32 %50, 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mvreg_write(%struct.mvneta_port* %48, i64 %53, i32 %54)
  ret void
}

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i64) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
