; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, %struct.TYPE_8__**, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.hnae_ae_ops* }
%struct.hnae_ae_ops = type { i64 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*, i64*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"tx_queue%d_next_to_clean:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"tx_queue%d_next_to_use:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rx_queue%d_next_to_clean:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"rx_queue%d_next_to_use:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_priv*)* @hns_nic_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_dump(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca %struct.hns_nic_priv*, align 8
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca %struct.hnae_ae_ops*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %2, align 8
  %8 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %9 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %8, i32 0, i32 0
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  store %struct.hnae_handle* %10, %struct.hnae_handle** %3, align 8
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %12 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %14, align 8
  store %struct.hnae_ae_ops* %15, %struct.hnae_ae_ops** %4, align 8
  %16 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %4, align 8
  %17 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %16, i32 0, i32 0
  %18 = load i64 (%struct.hnae_handle*)*, i64 (%struct.hnae_handle*)** %17, align 8
  %19 = icmp ne i64 (%struct.hnae_handle*)* %18, null
  br i1 %19, label %20, label %83

20:                                               ; preds = %1
  %21 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %4, align 8
  %22 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %21, i32 0, i32 1
  %23 = load i32 (%struct.hnae_handle*, i64*)*, i32 (%struct.hnae_handle*, i64*)** %22, align 8
  %24 = icmp ne i32 (%struct.hnae_handle*, i64*)* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %20
  %26 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %4, align 8
  %27 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %26, i32 0, i32 0
  %28 = load i64 (%struct.hnae_handle*)*, i64 (%struct.hnae_handle*)** %27, align 8
  %29 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %30 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %29, i32 0, i32 0
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %30, align 8
  %32 = call i64 %28(%struct.hnae_handle* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 3
  %35 = and i64 %34, -4
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64* @kcalloc(i64 %36, i32 8, i32 %37)
  store i64* %38, i64** %5, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %82

41:                                               ; preds = %25
  %42 = load %struct.hnae_ae_ops*, %struct.hnae_ae_ops** %4, align 8
  %43 = getelementptr inbounds %struct.hnae_ae_ops, %struct.hnae_ae_ops* %42, i32 0, i32 1
  %44 = load i32 (%struct.hnae_handle*, i64*)*, i32 (%struct.hnae_handle*, i64*)** %43, align 8
  %45 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %46 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %45, i32 0, i32 0
  %47 = load %struct.hnae_handle*, %struct.hnae_handle** %46, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = call i32 %44(%struct.hnae_handle* %47, i64* %48)
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %76, %41
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 2
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 3
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %59, i64 %64, i64 %69, i64 %74)
  br label %76

76:                                               ; preds = %54
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %7, align 8
  br label %50

79:                                               ; preds = %50
  %80 = load i64*, i64** %5, align 8
  %81 = call i32 @kfree(i64* %80)
  br label %82

82:                                               ; preds = %79, %25
  br label %83

83:                                               ; preds = %82, %20, %1
  store i64 0, i64* %7, align 8
  br label %84

84:                                               ; preds = %139, %83
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %87 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %84
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %93 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %94, i64 %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %91, i64 %101)
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %105 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %106, i64 %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %113)
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %117 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %118, i64 %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %115, i64 %125)
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %129 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %130, i64 %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 (i8*, i64, i64, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %127, i64 %137)
  br label %139

139:                                              ; preds = %90
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %7, align 8
  br label %84

142:                                              ; preds = %84
  ret void
}

declare dso_local i64* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i64, ...) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
