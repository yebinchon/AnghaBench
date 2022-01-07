; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_bcn_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_bcn_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.sk_buff* (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)* }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)* @ath10k_wmi_bcn_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_bcn_tmpl(%struct.ath10k* %0, i32 %1, i32 %2, %struct.sk_buff* %3, i32 %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.sk_buff* (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)*, %struct.sk_buff* (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)** %23, align 8
  %25 = icmp ne %struct.sk_buff* (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %61

29:                                               ; preds = %8
  %30 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.sk_buff* (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)*, %struct.sk_buff* (%struct.ath10k*, i32, i32, %struct.sk_buff*, i32, i32, i8*, i64)** %34, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i8*, i8** %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = call %struct.sk_buff* %35(%struct.ath10k* %36, i32 %37, i32 %38, %struct.sk_buff* %39, i32 %40, i32 %41, i8* %42, i64 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %18, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %46 = call i64 @IS_ERR(%struct.sk_buff* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %50 = call i32 @PTR_ERR(%struct.sk_buff* %49)
  store i32 %50, i32* %9, align 4
  br label %61

51:                                               ; preds = %29
  %52 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %54 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %55 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %52, %struct.sk_buff* %53, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %51, %48, %26
  %62 = load i32, i32* %9, align 4
  ret i32 %62
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
