; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_plc_send_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_plc_send_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.s_smc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.s_phy = type { i32, i32*, i32 }

@PL_STATUS_B = common dso_local global i32 0, align 4
@PL_PCM_SIGNAL = common dso_local global i32 0, align 4
@PL_VECTOR_LEN = common dso_local global i32 0, align 4
@PL_XMIT_VECTOR = common dso_local global i32 0, align 4
@debug = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, %struct.s_phy*, i32)* @plc_send_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plc_send_bits(%struct.s_smc* %0, %struct.s_phy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca %struct.s_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store %struct.s_phy* %1, %struct.s_phy** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %12 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %15 = call i32 @SK_UNUSED(%struct.s_smc* %14)
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %36, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 1
  %24 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %25 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %28 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %23, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %10, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PL_STATUS_B, align 4
  %42 = call i32 @PLC(i32 %40, i32 %41)
  %43 = call i32 @inpw(i32 %42)
  %44 = load i32, i32* @PL_PCM_SIGNAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %60

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PL_VECTOR_LEN, align 4
  %51 = call i32 @PLC(i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @outpw(i32 %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PL_XMIT_VECTOR, align 4
  %57 = call i32 @PLC(i32 %55, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @outpw(i32 %57, i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %48, %47
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @SK_UNUSED(%struct.s_smc*) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @outpw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
