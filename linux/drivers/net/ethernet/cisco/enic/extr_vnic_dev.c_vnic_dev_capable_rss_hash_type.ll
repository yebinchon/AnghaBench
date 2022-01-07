; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_capable_rss_hash_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_capable_rss_hash_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }

@CMD_NIC_CFG = common dso_local global i32 0, align 4
@CMD_CAPABILITY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_SHIFT = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_MASK_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_capable_rss_hash_type(%struct.vnic_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnic_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i32, i32* @CMD_NIC_CFG, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  %11 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %12 = load i32, i32* @CMD_CAPABILITY, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %11, i32 %12, i32* %6, i32* %7, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_MASK_FIELD, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @vnic_dev_cmd(%struct.vnic_dev*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
