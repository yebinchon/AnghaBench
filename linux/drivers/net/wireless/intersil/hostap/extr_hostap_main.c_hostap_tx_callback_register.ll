; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_hostap_tx_callback_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_hostap_tx_callback_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.hostap_tx_callback_info* }
%struct.hostap_tx_callback_info = type { void (%struct.sk_buff*, i32, i8*)*, i32, %struct.hostap_tx_callback_info*, i8* }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_tx_callback_register(%struct.TYPE_3__* %0, void (%struct.sk_buff.0*, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca void (%struct.sk_buff.0*, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hostap_tx_callback_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store void (%struct.sk_buff.0*, i32, i8*)* %1, void (%struct.sk_buff.0*, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hostap_tx_callback_info* @kmalloc(i32 32, i32 %10)
  store %struct.hostap_tx_callback_info* %11, %struct.hostap_tx_callback_info** %9, align 8
  %12 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %13 = icmp eq %struct.hostap_tx_callback_info* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

15:                                               ; preds = %3
  %16 = load void (%struct.sk_buff.0*, i32, i8*)*, void (%struct.sk_buff.0*, i32, i8*)** %6, align 8
  %17 = bitcast void (%struct.sk_buff.0*, i32, i8*)* %16 to void (%struct.sk_buff*, i32, i8*)*
  %18 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %19 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %18, i32 0, i32 0
  store void (%struct.sk_buff*, i32, i8*)* %17, void (%struct.sk_buff*, i32, i8*)** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %22 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %28, align 8
  %30 = icmp ne %struct.hostap_tx_callback_info* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %33, align 8
  %35 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  br label %39

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi i32 [ %37, %31 ], [ 1, %38 ]
  %41 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %42 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %44, align 8
  %46 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %47 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %46, i32 0, i32 2
  store %struct.hostap_tx_callback_info* %45, %struct.hostap_tx_callback_info** %47, align 8
  %48 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store %struct.hostap_tx_callback_info* %48, %struct.hostap_tx_callback_info** %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %9, align 8
  %56 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %39, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.hostap_tx_callback_info* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
