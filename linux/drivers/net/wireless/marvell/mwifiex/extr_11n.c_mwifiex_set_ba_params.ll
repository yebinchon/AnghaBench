; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_set_ba_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_set_ba_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MWIFIEX_DEFAULT_BLOCK_ACK_TIMEOUT = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@MWIFIEX_UAP_AMPDU_DEF_TXWINSIZE = common dso_local global i32 0, align 4
@MWIFIEX_UAP_AMPDU_DEF_RXWINSIZE = common dso_local global i32 0, align 4
@MWIFIEX_STA_AMPDU_DEF_TXWINSIZE = common dso_local global i32 0, align 4
@MWIFIEX_STA_AMPDU_DEF_RXWINSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_set_ba_params(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %3 = load i32, i32* @MWIFIEX_DEFAULT_BLOCK_ACK_TIMEOUT, align 4
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i32 %3, i32* %6, align 4
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %8 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %7)
  %9 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @MWIFIEX_UAP_AMPDU_DEF_TXWINSIZE, align 4
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @MWIFIEX_UAP_AMPDU_DEF_RXWINSIZE, align 4
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @MWIFIEX_STA_AMPDU_DEF_TXWINSIZE, align 4
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @MWIFIEX_STA_AMPDU_DEF_RXWINSIZE, align 4
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %11
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  ret void
}

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
