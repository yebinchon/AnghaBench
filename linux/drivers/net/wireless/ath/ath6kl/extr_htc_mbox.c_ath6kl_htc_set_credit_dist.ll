; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_set_credit_dist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_set_credit_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint*, %struct.ath6kl_htc_credit_info* }
%struct.htc_endpoint = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath6kl_htc_credit_info = type { i32 }

@ENDPOINT_0 = common dso_local global i64 0, align 8
@ENDPOINT_1 = common dso_local global i32 0, align 4
@ENDPOINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.ath6kl_htc_credit_info*, i64*, i32)* @ath6kl_htc_set_credit_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_set_credit_dist(%struct.htc_target* %0, %struct.ath6kl_htc_credit_info* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.ath6kl_htc_credit_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.htc_endpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.ath6kl_htc_credit_info* %1, %struct.ath6kl_htc_credit_info** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %6, align 8
  %13 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 2
  store %struct.ath6kl_htc_credit_info* %12, %struct.ath6kl_htc_credit_info** %14, align 8
  %15 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %16 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %15, i32 0, i32 1
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %16, align 8
  %18 = load i64, i64* @ENDPOINT_0, align 8
  %19 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %17, i64 %18
  %20 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %23 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %69, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %25
  %30 = load i32, i32* @ENDPOINT_1, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %59, %29
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ENDPOINT_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %37 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %36, i32 0, i32 1
  %38 = load %struct.htc_endpoint*, %struct.htc_endpoint** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %38, i64 %40
  store %struct.htc_endpoint* %41, %struct.htc_endpoint** %9, align 8
  %42 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %43 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %35
  %52 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %53 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %56 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  br label %62

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %31

62:                                               ; preds = %51, %31
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ENDPOINT_MAX, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @WARN_ON(i32 1)
  br label %72

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %25

72:                                               ; preds = %66, %25
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
