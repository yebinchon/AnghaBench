; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_init_ring_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_init_ring_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { i32, %struct.hns_nic_ring_data*, i32, %struct.hnae_handle* }
%struct.hns_nic_ring_data = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.hnae_handle = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }

@NIC_MAX_Q_PER_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"too much queue (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hns_nic_tx_poll_one = common dso_local global i32 0, align 4
@hns_nic_tx_fini_pro = common dso_local global i32 0, align 4
@hns_nic_tx_fini_pro_v2 = common dso_local global i32 0, align 4
@hns_nic_common_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@RCB_IRQ_NOT_INITED = common dso_local global i8* null, align 8
@hns_nic_rx_poll_one = common dso_local global i32 0, align 4
@hns_nic_rx_up_pro = common dso_local global i32 0, align 4
@hns_nic_rx_fini_pro = common dso_local global i32 0, align 4
@hns_nic_rx_fini_pro_v2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_nic_priv*)* @hns_nic_init_ring_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_init_ring_data(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_nic_priv*, align 8
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca %struct.hns_nic_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %3, align 8
  %8 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %8, i32 0, i32 3
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  store %struct.hnae_handle* %10, %struct.hnae_handle** %4, align 8
  %11 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @AE_IS_VER1(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %16 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NIC_MAX_Q_PER_VF, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %25 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netdev_err(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %174

30:                                               ; preds = %1
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %32 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @array3_size(i32 %33, i32 32, i32 2)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.hns_nic_ring_data* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %38 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %37, i32 0, i32 1
  store %struct.hns_nic_ring_data* %36, %struct.hns_nic_ring_data** %38, align 8
  %39 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %40 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %39, i32 0, i32 1
  %41 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %40, align 8
  %42 = icmp ne %struct.hns_nic_ring_data* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %174

46:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %99, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %50 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %102

53:                                               ; preds = %47
  %54 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %55 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %54, i32 0, i32 1
  %56 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %56, i64 %58
  store %struct.hns_nic_ring_data* %59, %struct.hns_nic_ring_data** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %62 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %64 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %72 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %71, i32 0, i32 1
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %72, align 8
  %73 = load i32, i32* @hns_nic_tx_poll_one, align 4
  %74 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %75 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %53
  %79 = load i32, i32* @hns_nic_tx_fini_pro, align 4
  br label %82

80:                                               ; preds = %53
  %81 = load i32, i32* @hns_nic_tx_fini_pro_v2, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %85 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %87 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %90 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %89, i32 0, i32 2
  %91 = load i32, i32* @hns_nic_common_poll, align 4
  %92 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %93 = call i32 @netif_napi_add(i32 %88, i32* %90, i32 %91, i32 %92)
  %94 = load i8*, i8** @RCB_IRQ_NOT_INITED, align 8
  %95 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %96 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i8* %94, i8** %98, align 8
  br label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %47

102:                                              ; preds = %47
  %103 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %104 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %170, %102
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %109 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 2
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %173

113:                                              ; preds = %106
  %114 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %115 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %114, i32 0, i32 1
  %116 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %116, i64 %118
  store %struct.hns_nic_ring_data* %119, %struct.hns_nic_ring_data** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %122 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %120, %123
  %125 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %126 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %128 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %132 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %129, i64 %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %140 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %139, i32 0, i32 1
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %140, align 8
  %141 = load i32, i32* @hns_nic_rx_poll_one, align 4
  %142 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %143 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @hns_nic_rx_up_pro, align 4
  %145 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %146 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %113
  %150 = load i32, i32* @hns_nic_rx_fini_pro, align 4
  br label %153

151:                                              ; preds = %113
  %152 = load i32, i32* @hns_nic_rx_fini_pro_v2, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %156 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %3, align 8
  %158 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %161 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %160, i32 0, i32 2
  %162 = load i32, i32* @hns_nic_common_poll, align 4
  %163 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %164 = call i32 @netif_napi_add(i32 %159, i32* %161, i32 %162, i32 %163)
  %165 = load i8*, i8** @RCB_IRQ_NOT_INITED, align 8
  %166 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %5, align 8
  %167 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i8* %165, i8** %169, align 8
  br label %170

170:                                              ; preds = %153
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %106

173:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %43, %20
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local %struct.hns_nic_ring_data* @kzalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
