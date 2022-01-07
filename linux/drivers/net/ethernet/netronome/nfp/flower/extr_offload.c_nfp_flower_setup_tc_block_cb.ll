; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_setup_tc_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_setup_tc_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_repr = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @nfp_flower_setup_tc_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_setup_tc_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfp_repr*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.nfp_repr*
  store %struct.nfp_repr* %10, %struct.nfp_repr** %8, align 8
  %11 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %12 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @tc_cls_can_offload_and_chain0(i32 %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %40 [
    i32 129, label %22
    i32 128, label %31
  ]

22:                                               ; preds = %20
  %23 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @nfp_flower_repr_offload(i32 %25, i32 %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %36 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @nfp_flower_setup_qos_offload(i32 %34, i32 %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %20
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %31, %22, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, i8*) #1

declare dso_local i32 @nfp_flower_repr_offload(i32, i32, i8*) #1

declare dso_local i32 @nfp_flower_setup_qos_offload(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
