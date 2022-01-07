; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_cls.c_nfp_abm_setup_tc_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_cls.c_nfp_abm_setup_tc_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_cls_u32_offload = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nfp_repr = type { i32, %struct.nfp_abm_link* }
%struct.nfp_abm_link = type { i32 }

@TC_SETUP_CLSU32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"only offload of u32 classifier supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"only IP and IPv6 supported as filter protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @nfp_abm_setup_tc_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_setup_tc_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_cls_u32_offload*, align 8
  %9 = alloca %struct.nfp_repr*, align 8
  %10 = alloca %struct.nfp_abm_link*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tc_cls_u32_offload*
  store %struct.tc_cls_u32_offload* %12, %struct.tc_cls_u32_offload** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.nfp_repr*
  store %struct.nfp_repr* %14, %struct.nfp_repr** %9, align 8
  %15 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %16 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %15, i32 0, i32 1
  %17 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %16, align 8
  store %struct.nfp_abm_link* %17, %struct.nfp_abm_link** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TC_SETUP_CLSU32, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %23 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %89

29:                                               ; preds = %3
  %30 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %31 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %34 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %33, i32 0, i32 2
  %35 = call i32 @tc_cls_can_offload_and_chain0(i32 %32, %struct.TYPE_2__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %89

40:                                               ; preds = %29
  %41 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %42 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @ETH_P_IP, align 4
  %46 = call i64 @htons(i32 %45)
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %50 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @ETH_P_IPV6, align 4
  %54 = call i64 @htons(i32 %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %58 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @NL_SET_ERR_MSG_MOD(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %89

64:                                               ; preds = %48, %40
  %65 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %66 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %86 [
    i32 129, label %68
    i32 128, label %68
    i32 130, label %81
  ]

68:                                               ; preds = %64, %64
  %69 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %70 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %71 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %70, i32 0, i32 1
  %72 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %73 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %77 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @nfp_abm_u32_knode_replace(%struct.nfp_abm_link* %69, i32* %71, i64 %75, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %83 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %8, align 8
  %84 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %83, i32 0, i32 1
  %85 = call i32 @nfp_abm_u32_knode_delete(%struct.nfp_abm_link* %82, i32* %84)
  store i32 0, i32* %4, align 4
  br label %89

86:                                               ; preds = %64
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %81, %68, %56, %37, %21
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @nfp_abm_u32_knode_replace(%struct.nfp_abm_link*, i32*, i64, i32) #1

declare dso_local i32 @nfp_abm_u32_knode_delete(%struct.nfp_abm_link*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
