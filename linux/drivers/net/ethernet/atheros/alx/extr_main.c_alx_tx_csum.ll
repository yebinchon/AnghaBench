; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.alx_txd = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TPD_CXSUMSTART_SHIFT = common dso_local global i32 0, align 4
@TPD_CXSUMOFFSET_SHIFT = common dso_local global i32 0, align 4
@TPD_CXSUM_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.alx_txd*)* @alx_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_tx_csum(%struct.sk_buff* %0, %struct.alx_txd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.alx_txd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.alx_txd* %1, %struct.alx_txd** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 1
  %31 = load i32, i32* @TPD_CXSUMSTART_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load %struct.alx_txd*, %struct.alx_txd** %5, align 8
  %35 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 1
  %40 = load i32, i32* @TPD_CXSUMOFFSET_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %struct.alx_txd*, %struct.alx_txd** %5, align 8
  %44 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @TPD_CXSUM_EN_SHIFT, align 4
  %48 = shl i32 1, %47
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.alx_txd*, %struct.alx_txd** %5, align 8
  %51 = getelementptr inbounds %struct.alx_txd, %struct.alx_txd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %23, %20, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
