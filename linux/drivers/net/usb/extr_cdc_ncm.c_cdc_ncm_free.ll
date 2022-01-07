; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdc_ncm_ctx = type { %struct.cdc_ncm_ctx*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdc_ncm_ctx*)* @cdc_ncm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_free(%struct.cdc_ncm_ctx* %0) #0 {
  %2 = alloca %struct.cdc_ncm_ctx*, align 8
  store %struct.cdc_ncm_ctx* %0, %struct.cdc_ncm_ctx** %2, align 8
  %3 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %4 = icmp eq %struct.cdc_ncm_ctx* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dev_kfree_skb_any(i32* %14)
  %16 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %6
  %19 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dev_kfree_skb_any(i32* %26)
  %28 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %31, i32 0, i32 0
  %33 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %32, align 8
  %34 = call i32 @kfree(%struct.cdc_ncm_ctx* %33)
  %35 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %2, align 8
  %36 = call i32 @kfree(%struct.cdc_ncm_ctx* %35)
  br label %37

37:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @kfree(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
