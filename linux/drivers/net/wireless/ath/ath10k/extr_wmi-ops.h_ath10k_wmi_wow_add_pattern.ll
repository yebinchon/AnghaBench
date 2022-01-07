; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_wow_add_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_wow_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)* }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)* @ath10k_wmi_wow_add_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_wow_add_pattern(%struct.ath10k* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)*, %struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)** %22, align 8
  %24 = icmp ne %struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %60

28:                                               ; preds = %7
  %29 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)*, %struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)** %33, align 8
  %35 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call %struct.sk_buff* %34(%struct.ath10k* %35, i32 %36, i32 %37, i32* %38, i32* %39, i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %16, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %44 = call i64 @IS_ERR(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %28
  %47 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %48 = call i32 @PTR_ERR(%struct.sk_buff* %47)
  store i32 %48, i32* %8, align 4
  br label %60

49:                                               ; preds = %28
  %50 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  %56 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %56, %struct.sk_buff* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %49, %46, %25
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_cmd_send(%struct.ath10k*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
