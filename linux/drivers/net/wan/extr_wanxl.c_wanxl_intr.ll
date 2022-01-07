; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card = type { i32, i32*, i64 }

@PLX_DOORBELL_FROM_CARD = common dso_local global i64 0, align 8
@DOORBELL_FROM_CARD_TX_0 = common dso_local global i32 0, align 4
@DOORBELL_FROM_CARD_CABLE_0 = common dso_local global i32 0, align 4
@DOORBELL_FROM_CARD_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wanxl_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wanxl_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.card*
  store %struct.card* %10, %struct.card** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %78, %2
  %12 = load %struct.card*, %struct.card** %5, align 8
  %13 = getelementptr inbounds %struct.card, %struct.card* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PLX_DOORBELL_FROM_CARD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %11
  store i32 1, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.card*, %struct.card** %5, align 8
  %22 = getelementptr inbounds %struct.card, %struct.card* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PLX_DOORBELL_FROM_CARD, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %66, %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.card*, %struct.card** %5, align 8
  %30 = getelementptr inbounds %struct.card, %struct.card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DOORBELL_FROM_CARD_TX_0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = shl i32 1, %37
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.card*, %struct.card** %5, align 8
  %43 = getelementptr inbounds %struct.card, %struct.card* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @wanxl_tx_intr(i32* %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @DOORBELL_FROM_CARD_CABLE_0, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = shl i32 1, %53
  %55 = and i32 %50, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.card*, %struct.card** %5, align 8
  %59 = getelementptr inbounds %struct.card, %struct.card* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @wanxl_cable_intr(i32* %63)
  br label %65

65:                                               ; preds = %57, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %27

69:                                               ; preds = %27
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DOORBELL_FROM_CARD_RX, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.card*, %struct.card** %5, align 8
  %77 = call i32 @wanxl_rx_intr(%struct.card* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %11

79:                                               ; preds = %11
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @IRQ_RETVAL(i32 %80)
  ret i32 %81
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wanxl_tx_intr(i32*) #1

declare dso_local i32 @wanxl_cable_intr(i32*) #1

declare dso_local i32 @wanxl_rx_intr(%struct.card*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
