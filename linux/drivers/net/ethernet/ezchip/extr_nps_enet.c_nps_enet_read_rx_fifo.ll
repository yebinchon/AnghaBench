; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_read_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_read_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i64 }

@NPS_ENET_REG_RX_BUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i32)* @nps_enet_read_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_read_rx_fifo(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nps_enet_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.nps_enet_priv* %16, %struct.nps_enet_priv** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 3
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = call i32 @IS_ALIGNED(i64 %28, i32 4)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %7, align 8
  %34 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NPS_ENET_REG_RX_BUF, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ioread32_rep(i64 %37, i32* %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %10, align 8
  br label %63

45:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %7, align 8
  %52 = load i64, i64* @NPS_ENET_REG_RX_BUF, align 8
  %53 = call i32 @nps_enet_reg_get(%struct.nps_enet_priv* %51, i64 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @put_unaligned_be32(i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %10, align 8
  br label %46

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %7, align 8
  %68 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NPS_ENET_REG_RX_BUF, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @ioread32_rep(i64 %71, i32* %14, i32 1)
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @memcpy(i32* %73, i32* %14, i32 %74)
  br label %76

76:                                               ; preds = %66, %63
  ret void
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i32) #1

declare dso_local i32 @nps_enet_reg_get(%struct.nps_enet_priv*, i64) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
