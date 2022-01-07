; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_r_mib_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_r_mib_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@KS_MIB_PACKET_DROPPED_RX_0 = common dso_local global i32 0, align 4
@TABLE_MIB = common dso_local global i32 0, align 4
@TABLE_SEL_SHIFT = common dso_local global i32 0, align 4
@TABLE_READ = common dso_local global i32 0, align 4
@KS884X_IACR_OFFSET = common dso_local global i64 0, align 8
@KS884X_ACC_DATA_0_OFFSET = common dso_local global i64 0, align 8
@MIB_PACKET_DROPPED = common dso_local global i32 0, align 4
@KS_MIB_PACKET_DROPPED_TX = common dso_local global i32 0, align 4
@KS_MIB_PACKET_DROPPED_TX_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32*, i32*)* @port_r_mib_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_r_mib_pkt(%struct.ksz_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @KS_MIB_PACKET_DROPPED_RX_0, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %86, %4
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %19 = call i32 @hw_block_intr(%struct.ksz_hw* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @TABLE_MIB, align 4
  %22 = load i32, i32* @TABLE_SEL_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @TABLE_READ, align 4
  %25 = or i32 %23, %24
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KS884X_IACR_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 %29, i64 %34)
  %36 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %37 = load i64, i64* @KS884X_IACR_OFFSET, align 8
  %38 = call i32 @HW_DELAY(%struct.ksz_hw* %36, i64 %37)
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KS884X_ACC_DATA_0_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @hw_restore_intr(%struct.ksz_hw* %45, i32 %46)
  %48 = load i32, i32* @MIB_PACKET_DROPPED, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %17
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @MIB_PACKET_DROPPED, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %17
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  %80 = load i32, i32* @KS_MIB_PACKET_DROPPED_TX, align 4
  %81 = load i32, i32* @KS_MIB_PACKET_DROPPED_TX_0, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @KS_MIB_PACKET_DROPPED_TX_0, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %17, label %92

92:                                               ; preds = %86
  ret void
}

declare dso_local i32 @hw_block_intr(%struct.ksz_hw*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @HW_DELAY(%struct.ksz_hw*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hw_restore_intr(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
