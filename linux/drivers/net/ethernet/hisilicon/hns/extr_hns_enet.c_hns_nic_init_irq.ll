; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { %struct.TYPE_4__*, %struct.hns_nic_ring_data*, %struct.hnae_handle* }
%struct.TYPE_4__ = type { i8* }
%struct.hns_nic_ring_data = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i8*, i32 }
%struct.hnae_handle = type { i32 }

@RCB_IRQ_INITED = common dso_local global i64 0, align 8
@RCB_RING_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s-%s%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@hns_irq_handle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"request irq(%d) fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_priv*)* @hns_nic_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_init_irq(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca %struct.hns_nic_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %3, align 8
  %9 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %10 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %9, i32 0, i32 2
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  store %struct.hnae_handle* %11, %struct.hnae_handle** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %126, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %15 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %129

19:                                               ; preds = %12
  %20 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %21 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %20, i32 0, i32 1
  %22 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %22, i64 %24
  store %struct.hns_nic_ring_data* %25, %struct.hns_nic_ring_data** %5, align 8
  %26 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %27 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RCB_IRQ_INITED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %129

34:                                               ; preds = %19
  %35 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %36 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @RCB_RING_NAME_LEN, align 4
  %41 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %42 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %47 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i64 @is_tx_ring(%struct.TYPE_5__* %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %54 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %52, i32 %55)
  %57 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %58 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @RCB_RING_NAME_LEN, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %67 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @hns_irq_handle, align 4
  %72 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %73 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %78 = call i32 @request_irq(i32 %70, i32 %71, i32 0, i8* %76, %struct.hns_nic_ring_data* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %34
  %82 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %83 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %86 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @netdev_err(%struct.TYPE_4__* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %130

91:                                               ; preds = %34
  %92 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %93 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @disable_irq(i32 %96)
  %98 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %99 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %103 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %106 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %105, i32 0, i32 1
  %107 = call i32 @hns_nic_init_affinity_mask(i32 %100, i32 %101, %struct.TYPE_5__* %104, i32* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @cpu_online(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %91
  %112 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %113 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %118 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %117, i32 0, i32 1
  %119 = call i32 @irq_set_affinity_hint(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %111, %91
  %121 = load i64, i64* @RCB_IRQ_INITED, align 8
  %122 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %123 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %12

129:                                              ; preds = %33, %12
  store i32 0, i32* %2, align 4
  br label %137

130:                                              ; preds = %81
  %131 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %132 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %135 = call i32 @hns_nic_free_irq(i32 %133, %struct.hns_nic_priv* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %130, %129
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i64 @is_tx_ring(%struct.TYPE_5__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hns_nic_ring_data*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @hns_nic_init_affinity_mask(i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @hns_nic_free_irq(i32, %struct.hns_nic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
