; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-cec.c_stm32_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.stm32_cec* }
%struct.stm32_cec = type { i64, %struct.cec_msg, i32 }
%struct.cec_msg = type { i32, i32* }

@CEC_CR = common dso_local global i32 0, align 4
@TXEOM = common dso_local global i32 0, align 4
@TXSOM = common dso_local global i32 0, align 4
@CEC_TXDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @stm32_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.stm32_cec*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %10 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %10, i32 0, i32 0
  %12 = load %struct.stm32_cec*, %struct.stm32_cec** %11, align 8
  store %struct.stm32_cec* %12, %struct.stm32_cec** %9, align 8
  %13 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %14 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %13, i32 0, i32 1
  %15 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %16 = bitcast %struct.cec_msg* %14 to i8*
  %17 = bitcast %struct.cec_msg* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %19 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %21 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %27 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CEC_CR, align 4
  %30 = load i32, i32* @TXEOM, align 4
  %31 = load i32, i32* @TXEOM, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %4
  %34 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %35 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CEC_CR, align 4
  %38 = load i32, i32* @TXSOM, align 4
  %39 = load i32, i32* @TXSOM, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %42 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CEC_TXDR, align 4
  %45 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %46 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_write(i32 %43, i32 %44, i32 %50)
  %52 = load %struct.stm32_cec*, %struct.stm32_cec** %9, align 8
  %53 = getelementptr inbounds %struct.stm32_cec, %struct.stm32_cec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
