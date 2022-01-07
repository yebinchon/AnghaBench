; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_dflt_rss_hash_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_dflt_rss_hash_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32 }

@BNXT_FLAG_UDP_RSS_CAP = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_set_dflt_rss_hash_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_set_dflt_rss_hash_type(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %3 = load i32, i32* @BNXT_FLAG_UDP_RSS_CAP, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4, align 4
  %10 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = call i64 @BNXT_CHIP_P4(%struct.bnxt* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 66817
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* @BNXT_FLAG_UDP_RSS_CAP, align 4
  %28 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4, align 4
  %33 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %26, %21, %1
  ret void
}

declare dso_local i64 @BNXT_CHIP_P4(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
