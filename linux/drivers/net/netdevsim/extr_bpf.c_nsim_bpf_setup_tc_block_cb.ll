; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_setup_tc_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_setup_tc_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_cls_bpf_offload = type { i64, %struct.bpf_prog*, %struct.TYPE_4__, %struct.bpf_prog* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.bpf_prog = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.netdevsim = type { %struct.bpf_prog*, i32, i32, i32 }

@TC_SETUP_CLSBPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"only offload of BPF classifiers supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"only ETH_P_ALL supported as filter protocol\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"netdevsim configured to reject BPF TC offload\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"netdevsim configured to reject unbound programs\00", align 1
@TC_CLSBPF_OFFLOAD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"driver and netdev offload states mismatch\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_bpf_setup_tc_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_cls_bpf_offload*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.netdevsim*, align 8
  %11 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.tc_cls_bpf_offload*
  store %struct.tc_cls_bpf_offload* %13, %struct.tc_cls_bpf_offload** %8, align 8
  %14 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %15 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %14, i32 0, i32 1
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  store %struct.bpf_prog* %16, %struct.bpf_prog** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.netdevsim*
  store %struct.netdevsim* %18, %struct.netdevsim** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TC_SETUP_CLSBPF, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %24 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @NSIM_EA(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %138

30:                                               ; preds = %3
  %31 = load %struct.netdevsim*, %struct.netdevsim** %10, align 8
  %32 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %35 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %34, i32 0, i32 2
  %36 = call i32 @tc_cls_can_offload_and_chain0(i32 %33, %struct.TYPE_4__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %138

41:                                               ; preds = %30
  %42 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %43 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @ETH_P_ALL, align 4
  %47 = call i64 @htons(i32 %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %51 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @NSIM_EA(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %138

57:                                               ; preds = %41
  %58 = load %struct.netdevsim*, %struct.netdevsim** %10, align 8
  %59 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %64 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @NSIM_EA(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %138

70:                                               ; preds = %57
  %71 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %72 = icmp ne %struct.bpf_prog* %71, null
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %75 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %73
  %81 = load %struct.netdevsim*, %struct.netdevsim** %10, align 8
  %82 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %87 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @NSIM_EA(i32 %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %138

93:                                               ; preds = %80, %73, %70
  %94 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %95 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TC_CLSBPF_OFFLOAD, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %138

102:                                              ; preds = %93
  %103 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %104 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %103, i32 0, i32 3
  %105 = load %struct.bpf_prog*, %struct.bpf_prog** %104, align 8
  store %struct.bpf_prog* %105, %struct.bpf_prog** %11, align 8
  %106 = load %struct.netdevsim*, %struct.netdevsim** %10, align 8
  %107 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %106, i32 0, i32 0
  %108 = load %struct.bpf_prog*, %struct.bpf_prog** %107, align 8
  %109 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %110 = icmp ne %struct.bpf_prog* %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %102
  store %struct.bpf_prog* null, %struct.bpf_prog** %11, align 8
  %112 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %113 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %112, i32 0, i32 1
  %114 = load %struct.bpf_prog*, %struct.bpf_prog** %113, align 8
  %115 = icmp ne %struct.bpf_prog* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %138

117:                                              ; preds = %111
  %118 = load %struct.netdevsim*, %struct.netdevsim** %10, align 8
  %119 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %118, i32 0, i32 0
  %120 = load %struct.bpf_prog*, %struct.bpf_prog** %119, align 8
  %121 = icmp ne %struct.bpf_prog* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %124 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @NSIM_EA(i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %138

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %102
  %132 = load %struct.netdevsim*, %struct.netdevsim** %10, align 8
  %133 = load %struct.tc_cls_bpf_offload*, %struct.tc_cls_bpf_offload** %8, align 8
  %134 = getelementptr inbounds %struct.tc_cls_bpf_offload, %struct.tc_cls_bpf_offload* %133, i32 0, i32 1
  %135 = load %struct.bpf_prog*, %struct.bpf_prog** %134, align 8
  %136 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %137 = call i32 @nsim_bpf_offload(%struct.netdevsim* %132, %struct.bpf_prog* %135, %struct.bpf_prog* %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %131, %122, %116, %99, %85, %62, %49, %38, %22
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @NSIM_EA(i32, i8*) #1

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @nsim_bpf_offload(%struct.netdevsim*, %struct.bpf_prog*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
