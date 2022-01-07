; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_meta_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_meta_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }

@NFP_NET_META_PORTID = common dso_local global i64 0, align 8
@NFP_META_PORT_ID_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, i8*, i32)* @nfp_ctrl_meta_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_ctrl_meta_ok(%struct.nfp_net* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nfp_app_ctrl_has_meta(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %40

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @get_unaligned_be32(i8* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr i8, i8* %27, i64 4
  %29 = call i64 @get_unaligned_be32(i8* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @NFP_NET_META_PORTID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @NFP_META_PORT_ID_CTRL, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %23, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @nfp_app_ctrl_has_meta(i32) #1

declare dso_local i64 @get_unaligned_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
