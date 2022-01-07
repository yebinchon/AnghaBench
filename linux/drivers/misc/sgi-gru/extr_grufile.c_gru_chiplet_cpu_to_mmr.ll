; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_chiplet_cpu_to_mmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_chiplet_cpu_to_mmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_MAX_INT_CORES = common dso_local global i32 0, align 4
@GRU_NUM_TFM = common dso_local global i32 0, align 4
@UVH_GR0_TLB_INT0_CONFIG = common dso_local global i32 0, align 4
@UVH_GR0_TLB_INT1_CONFIG = common dso_local global i32 0, align 4
@UVH_GR1_TLB_INT0_CONFIG = common dso_local global i32 0, align 4
@UVH_GR1_TLB_INT1_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*)* @gru_chiplet_cpu_to_mmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gru_chiplet_cpu_to_mmr(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @uv_cpu_core_number(i32 %10)
  %12 = load i32, i32* @UV_MAX_INT_CORES, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @uv_cpu_socket_number(i32 %13)
  %15 = mul nsw i32 %12, %14
  %16 = add nsw i32 %11, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GRU_NUM_TFM, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @uv_cpu_ht_number(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %3
  store i64 0, i64* %4, align 8
  br label %56

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* @UVH_GR0_TLB_INT0_CONFIG, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @UVH_GR0_TLB_INT1_CONFIG, align 4
  %32 = load i32, i32* @UVH_GR0_TLB_INT0_CONFIG, align 4
  %33 = sub nsw i32 %31, %32
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 %29, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  br label %52

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* @UVH_GR1_TLB_INT0_CONFIG, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @UVH_GR1_TLB_INT1_CONFIG, align 4
  %44 = load i32, i32* @UVH_GR1_TLB_INT0_CONFIG, align 4
  %45 = sub nsw i32 %43, %44
  %46 = mul nsw i32 %42, %45
  %47 = add nsw i32 %41, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  br label %51

49:                                               ; preds = %37
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %52, %24
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @uv_cpu_core_number(i32) #1

declare dso_local i32 @uv_cpu_socket_number(i32) #1

declare dso_local i64 @uv_cpu_ht_number(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
