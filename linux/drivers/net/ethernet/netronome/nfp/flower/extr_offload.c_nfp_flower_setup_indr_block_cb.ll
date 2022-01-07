; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_setup_indr_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_setup_indr_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_indr_block_cb_priv = type { i32, i32 }
%struct.flow_cls_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @nfp_flower_setup_indr_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_setup_indr_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfp_flower_indr_block_cb_priv*, align 8
  %9 = alloca %struct.flow_cls_offload*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.nfp_flower_indr_block_cb_priv*
  store %struct.nfp_flower_indr_block_cb_priv* %11, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.flow_cls_offload*
  store %struct.flow_cls_offload* %13, %struct.flow_cls_offload** %9, align 8
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %9, align 8
  %15 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %33 [
    i32 128, label %24
  ]

24:                                               ; preds = %22
  %25 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, %struct.nfp_flower_indr_block_cb_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfp_flower_indr_block_cb_priv*, %struct.nfp_flower_indr_block_cb_priv** %8, align 8
  %29 = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, %struct.nfp_flower_indr_block_cb_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @nfp_flower_repr_offload(i32 %27, i32 %30, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %24, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @nfp_flower_repr_offload(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
