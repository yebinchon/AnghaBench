; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i16, i64 }
%struct.nps_enet_priv = type { i64 }

@NPS_ENET_REG_TX_BUF = common dso_local global i64 0, align 8
@TX_CTL_NT_SHIFT = common dso_local global i16 0, align 2
@NPS_ENET_ENABLE = common dso_local global i64 0, align 8
@TX_CTL_CT_SHIFT = common dso_local global i64 0, align 8
@NPS_ENET_REG_TX_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @nps_enet_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_send_frame(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nps_enet_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.nps_enet_priv* %13, %struct.nps_enet_priv** %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  store i16 %16, i16* %7, align 2
  %17 = load i16, i16* %7, align 2
  %18 = call i64 @DIV_ROUND_UP(i16 signext %17, i32 8)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %10, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = ptrtoint i64* %24 to i64
  %26 = call i32 @IS_ALIGNED(i64 %25, i32 8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %5, align 8
  %31 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NPS_ENET_REG_TX_BUF, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @iowrite32_rep(i64 %34, i64* %35, i64 %36)
  br label %55

38:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %5, align 8
  %45 = load i64, i64* @NPS_ENET_REG_TX_BUF, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = call i64 @get_unaligned_be32(i64* %46)
  %48 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %44, i64 %45, i64 %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %10, align 8
  br label %39

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i16, i16* %7, align 2
  %57 = sext i16 %56 to i32
  %58 = load i16, i16* @TX_CTL_NT_SHIFT, align 2
  %59 = sext i16 %58 to i32
  %60 = shl i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %6, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* @NPS_ENET_ENABLE, align 8
  %65 = load i64, i64* @TX_CTL_CT_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* %6, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %5, align 8
  %70 = load i64, i64* @NPS_ENET_REG_TX_CTL, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %69, i64 %70, i64 %71)
  ret void
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @DIV_ROUND_UP(i16 signext, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i64*, i64) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i64, i64) #1

declare dso_local i64 @get_unaligned_be32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
