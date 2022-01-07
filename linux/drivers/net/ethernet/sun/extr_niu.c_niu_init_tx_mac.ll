; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_tx_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_tx_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETH_DATA_LEN = common dso_local global i64 0, align 8
@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_tx_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_tx_mac(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  store i32 64, i32* %3, align 4
  %5 = load %struct.niu*, %struct.niu** %2, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ETH_DATA_LEN, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 9216, i32* %4, align 4
  br label %14

13:                                               ; preds = %1
  store i32 1522, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 7
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.niu*, %struct.niu** %2, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.niu*, %struct.niu** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @niu_init_tx_xmac(%struct.niu* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.niu*, %struct.niu** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @niu_init_tx_bmac(%struct.niu* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @niu_init_tx_xmac(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_init_tx_bmac(%struct.niu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
