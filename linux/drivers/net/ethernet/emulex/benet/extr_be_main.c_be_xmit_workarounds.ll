; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.sk_buff = type { i32 }
%struct.be_wrb_params = type { i32 }

@BE_MAX_GSO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*)* @be_xmit_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @be_xmit_workarounds(%struct.be_adapter* %0, %struct.sk_buff* %1, %struct.be_wrb_params* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.be_wrb_params*, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.be_wrb_params* %2, %struct.be_wrb_params** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 32
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i64 @skb_put_padto(%struct.sk_buff* %14, i32 36)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %50

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %21 = call i64 @BEx_chip(%struct.be_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %25 = call i64 @lancer_chip(%struct.be_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23, %19
  %28 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %31 = call %struct.sk_buff* @be_lancer_xmit_workarounds(%struct.be_adapter* %28, %struct.sk_buff* %29, %struct.be_wrb_params* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %50

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BE_MAX_GSO_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON_ONCE(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load i32, i32* @BE_MAX_GSO_SIZE, align 4
  %46 = call i32 @pskb_trim(%struct.sk_buff* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %4, align 8
  br label %50

50:                                               ; preds = %36, %34, %17
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %51
}

declare dso_local i64 @skb_put_padto(%struct.sk_buff*, i32) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local %struct.sk_buff* @be_lancer_xmit_workarounds(%struct.be_adapter*, %struct.sk_buff*, %struct.be_wrb_params*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
