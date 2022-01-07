; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.c_cxgb_our_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.c_cxgb_our_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgb4_lld_info = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgb4_lld_info*, %struct.net_device* (%struct.net_device*)*, %struct.net_device*)* @cxgb_our_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_our_interface(%struct.cxgb4_lld_info* %0, %struct.net_device* (%struct.net_device*)* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgb4_lld_info*, align 8
  %6 = alloca %struct.net_device* (%struct.net_device*)*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.cxgb4_lld_info* %0, %struct.cxgb4_lld_info** %5, align 8
  store %struct.net_device* (%struct.net_device*)* %1, %struct.net_device* (%struct.net_device*)** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.net_device* (%struct.net_device*)*, %struct.net_device* (%struct.net_device*)** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %7, align 8
  %11 = call %struct.net_device* %9(%struct.net_device* %10)
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %30, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %15 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %20 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %19, i32 0, i32 1
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 %23
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = icmp eq %struct.net_device* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %34

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
