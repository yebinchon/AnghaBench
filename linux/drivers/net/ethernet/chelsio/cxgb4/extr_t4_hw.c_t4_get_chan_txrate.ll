; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_chan_txrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_chan_txrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TP_TX_TRATE_A = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i64 0, align 8
@TP_TX_ORATE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_get_chan_txrate(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = load i32, i32* @TP_TX_TRATE_A, align 4
  %10 = call i32 @t4_read_reg(%struct.adapter* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @TNLRATE0_G(i32 %12)
  %14 = call i32 @chan_rate(%struct.adapter* %11, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @TNLRATE1_G(i32 %18)
  %20 = call i32 @chan_rate(%struct.adapter* %17, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NCHAN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %3
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TNLRATE2_G(i32 %32)
  %34 = call i32 @chan_rate(%struct.adapter* %31, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TNLRATE3_G(i32 %38)
  %40 = call i32 @chan_rate(%struct.adapter* %37, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %30, %3
  %44 = load %struct.adapter*, %struct.adapter** %4, align 8
  %45 = load i32, i32* @TP_TX_ORATE_A, align 4
  %46 = call i32 @t4_read_reg(%struct.adapter* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @OFDRATE0_G(i32 %48)
  %50 = call i32 @chan_rate(%struct.adapter* %47, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.adapter*, %struct.adapter** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @OFDRATE1_G(i32 %54)
  %56 = call i32 @chan_rate(%struct.adapter* %53, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NCHAN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %43
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @OFDRATE2_G(i32 %68)
  %70 = call i32 @chan_rate(%struct.adapter* %67, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.adapter*, %struct.adapter** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @OFDRATE3_G(i32 %74)
  %76 = call i32 @chan_rate(%struct.adapter* %73, i32 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %66, %43
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @chan_rate(%struct.adapter*, i32) #1

declare dso_local i32 @TNLRATE0_G(i32) #1

declare dso_local i32 @TNLRATE1_G(i32) #1

declare dso_local i32 @TNLRATE2_G(i32) #1

declare dso_local i32 @TNLRATE3_G(i32) #1

declare dso_local i32 @OFDRATE0_G(i32) #1

declare dso_local i32 @OFDRATE1_G(i32) #1

declare dso_local i32 @OFDRATE2_G(i32) #1

declare dso_local i32 @OFDRATE3_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
