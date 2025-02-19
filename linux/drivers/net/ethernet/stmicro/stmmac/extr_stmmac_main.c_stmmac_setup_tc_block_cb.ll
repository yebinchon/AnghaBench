; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_setup_tc_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_setup_tc_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @stmmac_setup_tc_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_setup_tc_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stmmac_priv*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.stmmac_priv*
  store %struct.stmmac_priv* %11, %struct.stmmac_priv** %8, align 8
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @tc_cls_can_offload_and_chain0(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %24 = call i32 @stmmac_disable_all_queues(%struct.stmmac_priv* %23)
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %36 [
    i32 128, label %26
    i32 129, label %31
  ]

26:                                               ; preds = %22
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @stmmac_tc_setup_cls_u32(%struct.stmmac_priv* %27, %struct.stmmac_priv* %28, i8* %29)
  store i32 %30, i32* %9, align 4
  br label %37

31:                                               ; preds = %22
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @stmmac_tc_setup_cls(%struct.stmmac_priv* %32, %struct.stmmac_priv* %33, i8* %34)
  store i32 %35, i32* %9, align 4
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %31, %26
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %8, align 8
  %39 = call i32 @stmmac_enable_all_queues(%struct.stmmac_priv* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, i8*) #1

declare dso_local i32 @stmmac_disable_all_queues(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_tc_setup_cls_u32(%struct.stmmac_priv*, %struct.stmmac_priv*, i8*) #1

declare dso_local i32 @stmmac_tc_setup_cls(%struct.stmmac_priv*, %struct.stmmac_priv*, i8*) #1

declare dso_local i32 @stmmac_enable_all_queues(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
