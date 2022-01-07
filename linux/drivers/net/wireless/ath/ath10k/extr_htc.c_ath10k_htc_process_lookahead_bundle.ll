; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_lookahead_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_lookahead_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_htc_lookahead_bundle = type { i32 }

@HTC_HOST_MAX_MSG_PER_RX_BUNDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid lookahead bundle count: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htc*, %struct.ath10k_htc_lookahead_bundle*, i32, i32, i8*, i32*)* @ath10k_htc_process_lookahead_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htc_process_lookahead_bundle(%struct.ath10k_htc* %0, %struct.ath10k_htc_lookahead_bundle* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_htc*, align 8
  %9 = alloca %struct.ath10k_htc_lookahead_bundle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ath10k*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %8, align 8
  store %struct.ath10k_htc_lookahead_bundle* %1, %struct.ath10k_htc_lookahead_bundle** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.ath10k_htc*, %struct.ath10k_htc** %8, align 8
  %18 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %17, i32 0, i32 0
  %19 = load %struct.ath10k*, %struct.ath10k** %18, align 8
  store %struct.ath10k* %19, %struct.ath10k** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @HTC_HOST_MAX_MSG_PER_RX_BUNDLE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %6
  %31 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @ath10k_warn(%struct.ath10k* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %67

36:                                               ; preds = %26
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i8*, i8** %12, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %16, align 4
  %51 = mul nsw i32 4, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load %struct.ath10k_htc_lookahead_bundle*, %struct.ath10k_htc_lookahead_bundle** %9, align 8
  %55 = getelementptr inbounds %struct.ath10k_htc_lookahead_bundle, %struct.ath10k_htc_lookahead_bundle* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32* %53, i32 %56, i32 4)
  %58 = load %struct.ath10k_htc_lookahead_bundle*, %struct.ath10k_htc_lookahead_bundle** %9, align 8
  %59 = getelementptr inbounds %struct.ath10k_htc_lookahead_bundle, %struct.ath10k_htc_lookahead_bundle* %58, i32 1
  store %struct.ath10k_htc_lookahead_bundle* %59, %struct.ath10k_htc_lookahead_bundle** %9, align 8
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %39, %36
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %30
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
