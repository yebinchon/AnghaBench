; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rx_ret_rcbs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rx_ret_rcbs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, %struct.tg3_napi* }
%struct.tg3_napi = type { i32, i32 }

@NIC_SRAM_RCV_RET_RCB = common dso_local global i32 0, align 4
@ENABLE_RSS = common dso_local global i32 0, align 4
@BDINFO_FLAGS_MAXLEN_SHIFT = common dso_local global i32 0, align 4
@TG3_BDINFO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_rx_ret_rcbs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_rx_ret_rcbs_init(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @NIC_SRAM_RCV_RET_RCB, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = load i32, i32* @ENABLE_RSS, align 4
  %9 = call i64 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.tg3*, %struct.tg3** %2, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 2
  %24 = load %struct.tg3_napi*, %struct.tg3_napi** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %24, i64 %26
  store %struct.tg3_napi* %27, %struct.tg3_napi** %5, align 8
  %28 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %29 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %46

33:                                               ; preds = %21
  %34 = load %struct.tg3*, %struct.tg3** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %37 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tg3*, %struct.tg3** %2, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @BDINFO_FLAGS_MAXLEN_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @tg3_set_bdinfo(%struct.tg3* %34, i32 %35, i32 %38, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %33, %32
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  %49 = load i64, i64* @TG3_BDINFO_SIZE, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %15

54:                                               ; preds = %15
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_set_bdinfo(%struct.tg3*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
