; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-fh.h_FH_MEM_CBBC_QUEUE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-fh.h_FH_MEM_CBBC_QUEUE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TFH_TFDQ_CBB_TABLE = common dso_local global i32 0, align 4
@FH_MEM_CBBC_0_15_LOWER_BOUND = common dso_local global i32 0, align 4
@FH_MEM_CBBC_16_19_LOWER_BOUND = common dso_local global i32 0, align 4
@FH_MEM_CBBC_20_31_LOWER_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32)* @FH_MEM_CBBC_QUEUE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FH_MEM_CBBC_QUEUE(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 64
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load i32, i32* @TFH_TFDQ_CBB_TABLE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 8, %18
  %20 = add i32 %17, %19
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @FH_MEM_CBBC_0_15_LOWER_BOUND, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 4, %26
  %28 = add i32 %25, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 20
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @FH_MEM_CBBC_16_19_LOWER_BOUND, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub i32 %34, 16
  %36 = mul i32 4, %35
  %37 = add i32 %33, %36
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = icmp uge i32 %39, 32
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON_ONCE(i32 %41)
  %43 = load i32, i32* @FH_MEM_CBBC_20_31_LOWER_BOUND, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub i32 %44, 20
  %46 = mul i32 4, %45
  %47 = add i32 %43, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38, %32, %24, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
