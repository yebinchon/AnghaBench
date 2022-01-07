; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_6__*, %struct.nfp_app_bpf* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.nfp_app_bpf = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"ctrl channel MTU below min required %u < %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*)* @nfp_bpf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_start(%struct.nfp_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.nfp_app_bpf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  %5 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %5, i32 0, i32 1
  %7 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %6, align 8
  store %struct.nfp_app_bpf* %7, %struct.nfp_app_bpf** %4, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %15 = call i64 @nfp_bpf_ctrl_cmsg_min_mtu(%struct.nfp_app_bpf* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %30 = call i64 @nfp_bpf_ctrl_cmsg_min_mtu(%struct.nfp_app_bpf* %29)
  %31 = call i32 @nfp_err(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %41 = call i32 @nfp_bpf_ctrl_cmsg_cache_cnt(%struct.nfp_app_bpf* %40)
  %42 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %43 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %47

44:                                               ; preds = %34
  %45 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %4, align 8
  %46 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @nfp_bpf_ctrl_cmsg_min_mtu(%struct.nfp_app_bpf*) #1

declare dso_local i32 @nfp_err(i32, i8*, i64, i64) #1

declare dso_local i32 @nfp_bpf_ctrl_cmsg_cache_cnt(%struct.nfp_app_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
