; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_alloc_rx_buffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_alloc_rx_buffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_rx_q = type { i32, i32, i32, %struct.gfar_rx_buff*, %struct.rxbd8* }
%struct.gfar_rx_buff = type { i64, i64, i32 }
%struct.rxbd8 = type { i32 }

@RXBUF_ALIGNMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_priv_rx_q*, i32)* @gfar_alloc_rx_buffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_alloc_rx_buffs(%struct.gfar_priv_rx_q* %0, i32 %1) #0 {
  %3 = alloca %struct.gfar_priv_rx_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxbd8*, align 8
  %6 = alloca %struct.gfar_rx_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.gfar_priv_rx_q* %0, %struct.gfar_priv_rx_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %9 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %12 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %11, i32 0, i32 4
  %13 = load %struct.rxbd8*, %struct.rxbd8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %13, i64 %15
  store %struct.rxbd8* %16, %struct.rxbd8** %5, align 8
  %17 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %18 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %17, i32 0, i32 3
  %19 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %19, i64 %21
  store %struct.gfar_rx_buff* %22, %struct.gfar_rx_buff** %6, align 8
  br label %23

23:                                               ; preds = %82, %2
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %23
  %28 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %29 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %38 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %39 = call i32 @gfar_new_page(%struct.gfar_priv_rx_q* %37, %struct.gfar_rx_buff* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %47 = call i32 @gfar_rx_alloc_err(%struct.gfar_priv_rx_q* %46)
  br label %83

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %51 = load %struct.rxbd8*, %struct.rxbd8** %5, align 8
  %52 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %53 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %56 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i64, i64* @RXBUF_ALIGNMENT, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @gfar_init_rxbdp(%struct.gfar_priv_rx_q* %50, %struct.rxbd8* %51, i64 %60)
  %62 = load %struct.rxbd8*, %struct.rxbd8** %5, align 8
  %63 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %62, i32 1
  store %struct.rxbd8* %63, %struct.rxbd8** %5, align 8
  %64 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %6, align 8
  %65 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %64, i32 1
  store %struct.gfar_rx_buff* %65, %struct.gfar_rx_buff** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %69 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  %76 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %77 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %76, i32 0, i32 4
  %78 = load %struct.rxbd8*, %struct.rxbd8** %77, align 8
  store %struct.rxbd8* %78, %struct.rxbd8** %5, align 8
  %79 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %80 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %79, i32 0, i32 3
  %81 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %80, align 8
  store %struct.gfar_rx_buff* %81, %struct.gfar_rx_buff** %6, align 8
  br label %82

82:                                               ; preds = %75, %49
  br label %23

83:                                               ; preds = %45, %23
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %86 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %89 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfar_new_page(%struct.gfar_priv_rx_q*, %struct.gfar_rx_buff*) #1

declare dso_local i32 @gfar_rx_alloc_err(%struct.gfar_priv_rx_q*) #1

declare dso_local i32 @gfar_init_rxbdp(%struct.gfar_priv_rx_q*, %struct.rxbd8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
