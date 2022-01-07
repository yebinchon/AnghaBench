; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_get_regpair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_get_regpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_dmn_pair_mapping = type { i64 }

@NO_ENUMRD = common dso_local global i64 0, align 8
@regDomainPairs = common dso_local global %struct.reg_dmn_pair_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_dmn_pair_mapping* (i64)* @ath6kl_get_regpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_dmn_pair_mapping* @ath6kl_get_regpair(i64 %0) #0 {
  %2 = alloca %struct.reg_dmn_pair_mapping*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NO_ENUMRD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.reg_dmn_pair_mapping* null, %struct.reg_dmn_pair_mapping** %2, align 8
  br label %34

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** @regDomainPairs, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.reg_dmn_pair_mapping* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** @regDomainPairs, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %16, i64 %18
  %20 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** @regDomainPairs, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %25, i64 %27
  store %struct.reg_dmn_pair_mapping* %28, %struct.reg_dmn_pair_mapping** %2, align 8
  br label %34

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %10

33:                                               ; preds = %10
  store %struct.reg_dmn_pair_mapping* null, %struct.reg_dmn_pair_mapping** %2, align 8
  br label %34

34:                                               ; preds = %33, %24, %8
  %35 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %2, align 8
  ret %struct.reg_dmn_pair_mapping* %35
}

declare dso_local i32 @ARRAY_SIZE(%struct.reg_dmn_pair_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
