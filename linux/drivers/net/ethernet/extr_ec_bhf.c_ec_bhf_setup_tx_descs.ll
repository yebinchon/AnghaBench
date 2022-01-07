; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_setup_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_setup_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_bhf_priv = type { i32, %struct.tx_desc*, i64, %struct.TYPE_4__ }
%struct.tx_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@TX_HDR_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_bhf_priv*)* @ec_bhf_setup_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ec_bhf_setup_tx_descs(%struct.ec_bhf_priv* %0) #0 {
  %2 = alloca %struct.ec_bhf_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ec_bhf_priv* %0, %struct.ec_bhf_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.tx_desc*
  %18 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %18, i32 0, i32 1
  store %struct.tx_desc* %17, %struct.tx_desc** %19, align 8
  %20 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %39, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i32, i32* @TX_HDR_SENT, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %2, align 8
  %32 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %31, i32 0, i32 1
  %33 = load %struct.tx_desc*, %struct.tx_desc** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %33, i64 %35
  %37 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %30, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %22

42:                                               ; preds = %22
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
