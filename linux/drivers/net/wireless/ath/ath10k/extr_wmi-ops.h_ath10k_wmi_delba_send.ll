; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_delba_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_delba_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)* }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32*, i32, i32, i32)* @ath10k_wmi_delba_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_delba_send(%struct.ath10k* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)*, %struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)** %19, align 8
  %21 = icmp ne %struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %55

25:                                               ; preds = %6
  %26 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %27 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)*, %struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)** %30, align 8
  %32 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.sk_buff* %31(%struct.ath10k* %32, i32 %33, i32* %34, i32 %35, i32 %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %14, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %40 = call i64 @IS_ERR(%struct.sk_buff* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %44 = call i32 @PTR_ERR(%struct.sk_buff* %43)
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %25
  %46 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %48 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %49 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %46, %struct.sk_buff* %47, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %45, %42, %22
  %56 = load i32, i32* %7, align 4
  ret i32 %56
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
