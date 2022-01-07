; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_clear_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_clear_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i64* }

@HW_MCAST_SIZE = common dso_local global i64 0, align 8
@KS_MAHTR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*)* @ks_clear_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_clear_mcast(%struct.ks_net* %0) #0 {
  %2 = alloca %struct.ks_net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ks_net* %0, %struct.ks_net** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @HW_MCAST_SIZE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %11 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %5

18:                                               ; preds = %5
  %19 = load i64, i64* @HW_MCAST_SIZE, align 8
  %20 = lshr i64 %19, 2
  store i64 %20, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %32, %18
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %27 = load i64, i64* @KS_MAHTR0, align 8
  %28 = load i64, i64* %3, align 8
  %29 = mul i64 2, %28
  %30 = add i64 %27, %29
  %31 = call i32 @ks_wrreg16(%struct.ks_net* %26, i64 %30, i32 0)
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %21

35:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
