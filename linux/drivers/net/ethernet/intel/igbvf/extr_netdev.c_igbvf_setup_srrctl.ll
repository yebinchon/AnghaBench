; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_setup_srrctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_setup_srrctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@E1000_SRRCTL_DESCTYPE_MASK = common dso_local global i32 0, align 4
@E1000_SRRCTL_BSIZEHDR_MASK = common dso_local global i32 0, align 4
@E1000_SRRCTL_BSIZEPKT_MASK = common dso_local global i32 0, align 4
@E1000_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@E1000_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@E1000_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@E1000_SRRCTL_BSIZEHDRSIZE_SHIFT = common dso_local global i32 0, align 4
@E1000_SRRCTL_DESCTYPE_HDR_SPLIT_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_setup_srrctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_setup_srrctl(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %5 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %5, i32 0, i32 2
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @E1000_SRRCTL_DESCTYPE_MASK, align 4
  %8 = load i32, i32* @E1000_SRRCTL_BSIZEHDR_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @E1000_SRRCTL_DROP_EN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 1024)
  %22 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 2048
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @E1000_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %37, i32 0, i32 1
  store i32 128, i32* %38, align 4
  %39 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @E1000_SRRCTL_BSIZEHDRSIZE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @E1000_SRRCTL_DESCTYPE_HDR_SPLIT_ALWAYS, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %36, %30
  %50 = call i32 @SRRCTL(i32 0)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ew32(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @SRRCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
