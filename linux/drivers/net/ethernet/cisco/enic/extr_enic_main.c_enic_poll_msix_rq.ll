; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_poll_msix_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_poll_msix_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.enic = type { i32*, i32*, %struct.TYPE_2__, i32*, %struct.napi_struct* }
%struct.TYPE_2__ = type { i64 }

@enic_rq_service = common dso_local global i32 0, align 4
@enic_rq_alloc_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @enic_poll_msix_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_poll_msix_rq(%struct.napi_struct* %0, i32 %1) #0 {
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
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %14 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.enic* @netdev_priv(%struct.net_device* %16)
  store %struct.enic* %17, %struct.enic** %6, align 8
  %18 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %19 = load %struct.enic*, %struct.enic** %6, align 8
  %20 = getelementptr inbounds %struct.enic, %struct.enic* %19, i32 0, i32 4
  %21 = load %struct.napi_struct*, %struct.napi_struct** %20, align 8
  %22 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %21, i64 0
  %23 = ptrtoint %struct.napi_struct* %18 to i64
  %24 = ptrtoint %struct.napi_struct* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.enic*, %struct.enic** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @enic_cq_rq(%struct.enic* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.enic*, %struct.enic** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @enic_msix_rq_intr(%struct.enic* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %2
  %38 = load %struct.enic*, %struct.enic** %6, align 8
  %39 = getelementptr inbounds %struct.enic, %struct.enic* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @enic_rq_service, align 4
  %46 = call i32 @vnic_cq_service(i32* %43, i32 %44, i32 %45, i32* null)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %37, %2
  %48 = load i32, i32* %11, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.enic*, %struct.enic** %6, align 8
  %52 = getelementptr inbounds %struct.enic, %struct.enic* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @vnic_intr_return_credits(i32* %56, i32 %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.enic*, %struct.enic** %6, align 8
  %61 = getelementptr inbounds %struct.enic, %struct.enic* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* @enic_rq_alloc_buf, align 4
  %67 = call i32 @vnic_rq_fill(i32* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %59
  %73 = load %struct.enic*, %struct.enic** %6, align 8
  %74 = getelementptr inbounds %struct.enic, %struct.enic* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.enic*, %struct.enic** %6, align 8
  %80 = load %struct.enic*, %struct.enic** %6, align 8
  %81 = getelementptr inbounds %struct.enic, %struct.enic* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @enic_calc_int_moderation(%struct.enic* %79, i32* %85)
  br label %87

87:                                               ; preds = %78, %72
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @napi_complete_done(%struct.napi_struct* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = load %struct.enic*, %struct.enic** %6, align 8
  %98 = getelementptr inbounds %struct.enic, %struct.enic* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.enic*, %struct.enic** %6, align 8
  %104 = load %struct.enic*, %struct.enic** %6, align 8
  %105 = getelementptr inbounds %struct.enic, %struct.enic* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @enic_set_int_moderation(%struct.enic* %103, i32* %109)
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.enic*, %struct.enic** %6, align 8
  %113 = getelementptr inbounds %struct.enic, %struct.enic* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @vnic_intr_unmask(i32* %117)
  br label %119

119:                                              ; preds = %111, %91, %87
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_cq_rq(%struct.enic*, i32) #1

declare dso_local i32 @enic_msix_rq_intr(%struct.enic*, i32) #1

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
