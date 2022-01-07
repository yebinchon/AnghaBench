; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stih_cec = type { i32, i64 }
%struct.cec_msg = type { i32, i32* }

@CEC_RX_ERROR_MIN = common dso_local global i32 0, align 4
@CEC_RX_ERROR_MAX = common dso_local global i32 0, align 4
@CEC_DATA_ARRAY_STATUS = common dso_local global i64 0, align 8
@CEC_RX_DATA_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stih_cec*, i32)* @stih_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stih_rx_done(%struct.stih_cec* %0, i32 %1) #0 {
  %3 = alloca %struct.stih_cec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_msg, align 8
  %6 = alloca i64, align 8
  store %struct.stih_cec* %0, %struct.stih_cec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.cec_msg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CEC_RX_ERROR_MIN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CEC_RX_ERROR_MAX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %66

19:                                               ; preds = %13
  %20 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %21 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CEC_DATA_ARRAY_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = and i32 %25, 31
  %27 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %66

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 16
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  store i32 16, i32* %37, align 8
  br label %38

38:                                               ; preds = %36, %32
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %47 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CEC_RX_DATA_BASE, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %5, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %39

61:                                               ; preds = %39
  %62 = load %struct.stih_cec*, %struct.stih_cec** %3, align 8
  %63 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cec_received_msg(i32 %64, %struct.cec_msg* %5)
  br label %66

66:                                               ; preds = %61, %31, %18, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @readl(i64) #2

declare dso_local i32 @cec_received_msg(i32, %struct.cec_msg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
