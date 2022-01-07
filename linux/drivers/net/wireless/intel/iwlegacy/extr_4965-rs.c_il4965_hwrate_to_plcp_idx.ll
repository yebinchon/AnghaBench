; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_hwrate_to_plcp_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_hwrate_to_plcp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@RATE_MIMO2_6M_PLCP = common dso_local global i32 0, align 4
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@RATE_9M_IDX = common dso_local global i32 0, align 4
@IL_LAST_OFDM_RATE = common dso_local global i32 0, align 4
@il_rates = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @il4965_hwrate_to_plcp_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_hwrate_to_plcp_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RATE_MIMO2_6M_PLCP, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RATE_MIMO2_6M_PLCP, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RATE_9M_IDX, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IL_LAST_OFDM_RATE, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %64

39:                                               ; preds = %33, %29
  br label %63

40:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @il_rates, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @il_rates, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %64

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %41

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62, %39
  store i32 -1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %56, %37
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
