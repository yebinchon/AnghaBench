; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64 }
%struct.fm10k_intfc = type { i32, %struct.fm10k_q_vector**, i8*, i8* }
%struct.fm10k_q_vector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@FM10K_ITR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FM10K_ITR_ADAPTIVE = common dso_local global i32 0, align 4
@FM10K_TX_ITR_DEFAULT = common dso_local global i32 0, align 4
@FM10K_RX_ITR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @fm10k_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fm10k_q_vector*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %11)
  store %struct.fm10k_intfc* %12, %struct.fm10k_intfc** %6, align 8
  %13 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FM10K_ITR_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FM10K_ITR_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %18
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %7, align 8
  %32 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @FM10K_ITR_ADAPTIVE, align 4
  %42 = load i32, i32* @FM10K_TX_ITR_DEFAULT, align 4
  %43 = or i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %40, %27
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @FM10K_ITR_ADAPTIVE, align 4
  %53 = load i32, i32* @FM10K_RX_ITR_DEFAULT, align 4
  %54 = or i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %60 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %63 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %86, %57
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %67 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %72 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %71, i32 0, i32 1
  %73 = load %struct.fm10k_q_vector**, %struct.fm10k_q_vector*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %73, i64 %75
  %77 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %76, align 8
  store %struct.fm10k_q_vector* %77, %struct.fm10k_q_vector** %10, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %10, align 8
  %80 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %10, align 8
  %84 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %64

89:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
