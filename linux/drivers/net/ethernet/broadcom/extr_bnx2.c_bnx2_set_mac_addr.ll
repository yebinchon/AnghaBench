; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_EMAC_MAC_MATCH0 = common dso_local global i64 0, align 8
@BNX2_EMAC_MAC_MATCH1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i32*, i32)* @bnx2_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_set_mac_addr(%struct.bnx2* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %17 = load i64, i64* @BNX2_EMAC_MAC_MATCH0, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BNX2_WR(%struct.bnx2* %16, i64 %21, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 24
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %43 = load i64, i64* @BNX2_EMAC_MAC_MATCH1, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BNX2_WR(%struct.bnx2* %42, i64 %47, i32 %48)
  ret void
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
