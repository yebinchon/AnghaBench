; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.enic = type { i32*, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@ENIC_WQ_NAPI_BUDGET = common dso_local global i32 0, align 4
@enic_wq_service = common dso_local global i32 0, align 4
@enic_rq_service = common dso_local global i32 0, align 4
@enic_rq_alloc_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @enic_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.enic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %17 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.enic* @netdev_priv(%struct.net_device* %19)
  store %struct.enic* %20, %struct.enic** %6, align 8
  %21 = load %struct.enic*, %struct.enic** %6, align 8
  %22 = call i32 @enic_cq_rq(%struct.enic* %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.enic*, %struct.enic** %6, align 8
  %24 = call i32 @enic_cq_wq(%struct.enic* %23, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = call i32 (...) @enic_legacy_io_intr()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @ENIC_WQ_NAPI_BUDGET, align 4
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.enic*, %struct.enic** %6, align 8
  %29 = getelementptr inbounds %struct.enic, %struct.enic* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @enic_wq_service, align 4
  %36 = call i32 @vnic_cq_service(i32* %33, i32 %34, i32 %35, i32* null)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load %struct.enic*, %struct.enic** %6, align 8
  %41 = getelementptr inbounds %struct.enic, %struct.enic* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @enic_rq_service, align 4
  %48 = call i32 @vnic_cq_service(i32* %45, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %39, %2
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.enic*, %struct.enic** %6, align 8
  %57 = getelementptr inbounds %struct.enic, %struct.enic* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @vnic_intr_return_credits(i32* %61, i32 %62, i32 0, i32 0)
  br label %64

64:                                               ; preds = %55, %49
  %65 = load %struct.enic*, %struct.enic** %6, align 8
  %66 = getelementptr inbounds %struct.enic, %struct.enic* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* @enic_rq_alloc_buf, align 4
  %70 = call i32 @vnic_rq_fill(i32* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %64
  %76 = load %struct.enic*, %struct.enic** %6, align 8
  %77 = getelementptr inbounds %struct.enic, %struct.enic* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.enic*, %struct.enic** %6, align 8
  %83 = load %struct.enic*, %struct.enic** %6, align 8
  %84 = getelementptr inbounds %struct.enic, %struct.enic* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @enic_calc_int_moderation(%struct.enic* %82, i32* %86)
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %88
  %93 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i64 @napi_complete_done(%struct.napi_struct* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load %struct.enic*, %struct.enic** %6, align 8
  %99 = getelementptr inbounds %struct.enic, %struct.enic* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.enic*, %struct.enic** %6, align 8
  %105 = load %struct.enic*, %struct.enic** %6, align 8
  %106 = getelementptr inbounds %struct.enic, %struct.enic* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @enic_set_int_moderation(%struct.enic* %104, i32* %108)
  br label %110

110:                                              ; preds = %103, %97
  %111 = load %struct.enic*, %struct.enic** %6, align 8
  %112 = getelementptr inbounds %struct.enic, %struct.enic* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @vnic_intr_unmask(i32* %116)
  br label %118

118:                                              ; preds = %110, %92, %88
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_cq_rq(%struct.enic*, i32) #1

declare dso_local i32 @enic_cq_wq(%struct.enic*, i32) #1

declare dso_local i32 @enic_legacy_io_intr(...) #1

declare dso_local i32 @vnic_cq_service(i32*, i32, i32, i32*) #1

declare dso_local i32 @vnic_intr_return_credits(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_rq_fill(i32*, i32) #1

declare dso_local i32 @enic_calc_int_moderation(%struct.enic*, i32*) #1

declare dso_local i64 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @enic_set_int_moderation(%struct.enic*, i32*) #1

declare dso_local i32 @vnic_intr_unmask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
