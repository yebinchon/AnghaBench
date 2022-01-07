; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i32)* }
%struct.ath_common = type { i32* }

@ath9k_hw_init_macaddr.EEP_MAC = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@.str = private unnamed_addr constant [42 x i8] c"eeprom contains invalid mac address: %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"random mac address will be used: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_macaddr(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %3, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @is_valid_ether_addr(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %74

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %49, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %22, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* @ath9k_hw_init_macaddr.EEP_MAC, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %23(%struct.ath_hw* %24, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %33 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %42 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 %40, i32* %48, align 4
  br label %49

49:                                               ; preds = %18
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %54 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @is_valid_ether_addr(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %74

59:                                               ; preds = %52
  %60 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %61 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %62 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ath_err(%struct.ath_common* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %63)
  %65 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %66 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @eth_random_addr(i32* %67)
  %69 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %70 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %71 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ath_err(%struct.ath_common* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %72)
  br label %74

74:                                               ; preds = %59, %58, %13
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
