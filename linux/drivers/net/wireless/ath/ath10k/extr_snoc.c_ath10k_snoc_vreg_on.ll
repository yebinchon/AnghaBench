; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_vreg_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_vreg_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_vreg_info* }
%struct.ath10k_vreg_info = type { i32 }

@vreg_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_snoc_vreg_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_vreg_on(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_snoc*, align 8
  %5 = alloca %struct.ath10k_vreg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %8)
  store %struct.ath10k_snoc* %9, %struct.ath10k_snoc** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @vreg_cfg, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %16, i32 0, i32 0
  %18 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %18, i64 %20
  store %struct.ath10k_vreg_info* %21, %struct.ath10k_vreg_info** %5, align 8
  %22 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %35

27:                                               ; preds = %15
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %30 = call i32 @__ath10k_snoc_vreg_on(%struct.ath10k* %28, %struct.ath10k_vreg_info* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %39

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %10

38:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %66

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %61, %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %46, i32 0, i32 0
  %48 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %48, i64 %50
  store %struct.ath10k_vreg_info* %51, %struct.ath10k_vreg_info** %5, align 8
  %52 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %53 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %60 = call i32 @__ath10k_snoc_vreg_off(%struct.ath10k* %58, %struct.ath10k_vreg_info* %59)
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  br label %42

64:                                               ; preds = %42
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %38
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__ath10k_snoc_vreg_on(%struct.ath10k*, %struct.ath10k_vreg_info*) #1

declare dso_local i32 @__ath10k_snoc_vreg_off(%struct.ath10k*, %struct.ath10k_vreg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
