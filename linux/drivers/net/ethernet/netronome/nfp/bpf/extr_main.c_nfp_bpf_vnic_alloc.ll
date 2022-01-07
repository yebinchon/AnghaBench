; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_pf* }
%struct.nfp_pf = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_net = type { %struct.nfp_bpf_vnic* }
%struct.nfp_bpf_vnic = type { i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"No ETH table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ETH entries don't match vNICs (%d vs %d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_START = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*, i32)* @nfp_bpf_vnic_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_vnic_alloc(%struct.nfp_app* %0, %struct.nfp_net* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_pf*, align 8
  %9 = alloca %struct.nfp_bpf_vnic*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.nfp_pf*, %struct.nfp_pf** %12, align 8
  store %struct.nfp_pf* %13, %struct.nfp_pf** %8, align 8
  %14 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %15 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %20 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @nfp_err(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %86

25:                                               ; preds = %3
  %26 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %30 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %25
  %36 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %37 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %43 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, ...) @nfp_err(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %86

50:                                               ; preds = %25
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.nfp_bpf_vnic* @kzalloc(i32 16, i32 %51)
  store %struct.nfp_bpf_vnic* %52, %struct.nfp_bpf_vnic** %9, align 8
  %53 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %9, align 8
  %54 = icmp ne %struct.nfp_bpf_vnic* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %86

58:                                               ; preds = %50
  %59 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %9, align 8
  %60 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %61 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %60, i32 0, i32 0
  store %struct.nfp_bpf_vnic* %59, %struct.nfp_bpf_vnic** %61, align 8
  %62 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %63 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @nfp_app_nic_vnic_alloc(%struct.nfp_app* %62, %struct.nfp_net* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %80

69:                                               ; preds = %58
  %70 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %71 = load i32, i32* @NFP_NET_CFG_BPF_START, align 4
  %72 = call i8* @nn_readw(%struct.nfp_net* %70, i32 %71)
  %73 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %9, align 8
  %74 = getelementptr inbounds %struct.nfp_bpf_vnic, %struct.nfp_bpf_vnic* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %76 = load i32, i32* @NFP_NET_CFG_BPF_DONE, align 4
  %77 = call i8* @nn_readw(%struct.nfp_net* %75, i32 %76)
  %78 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %9, align 8
  %79 = getelementptr inbounds %struct.nfp_bpf_vnic, %struct.nfp_bpf_vnic* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  store i32 0, i32* %4, align 4
  br label %86

80:                                               ; preds = %68
  %81 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %82 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %81, i32 0, i32 0
  %83 = load %struct.nfp_bpf_vnic*, %struct.nfp_bpf_vnic** %82, align 8
  %84 = call i32 @kfree(%struct.nfp_bpf_vnic* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %80, %69, %55, %35, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @nfp_err(i32, i8*, ...) #1

declare dso_local %struct.nfp_bpf_vnic* @kzalloc(i32, i32) #1

declare dso_local i32 @nfp_app_nic_vnic_alloc(%struct.nfp_app*, %struct.nfp_net*, i32) #1

declare dso_local i8* @nn_readw(%struct.nfp_net*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_bpf_vnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
