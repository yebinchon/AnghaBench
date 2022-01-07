; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_debug.c_ath9k_htc_init_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_debug.c_ath9k_htc_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tgt_int_stats\00", align 1
@fops_tgt_int_stats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tgt_tx_stats\00", align 1
@fops_tgt_tx_stats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"tgt_rx_stats\00", align 1
@fops_tgt_rx_stats = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"xmit\00", align 1
@fops_xmit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"skb_rx\00", align 1
@fops_skb_rx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@fops_slot = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@fops_queue = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@fops_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_htc_init_debug(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %11, %struct.ath9k_htc_priv** %5, align 8
  %12 = load i32, i32* @KBUILD_MODNAME, align 4
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @debugfs_create_dir(i32 %12, i32 %19)
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %120

32:                                               ; preds = %1
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 2
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ath9k_cmn_spectral_init_debug(i32* %34, i32 %38)
  %40 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 256, i32 %43, %struct.ath9k_htc_priv* %44, i32* @fops_tgt_int_stats)
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %51 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %49, %struct.ath9k_htc_priv* %50, i32* @fops_tgt_tx_stats)
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %57 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 256, i32 %55, %struct.ath9k_htc_priv* %56, i32* @fops_tgt_rx_stats)
  %58 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %59 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %63 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 256, i32 %61, %struct.ath9k_htc_priv* %62, i32* @fops_xmit)
  %64 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %65 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %69 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 256, i32 %67, %struct.ath9k_htc_priv* %68, i32* @fops_skb_rx)
  %70 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %71 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %75 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = call i32 @ath9k_cmn_debug_recv(i32 %73, i32* %76)
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %83 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = call i32 @ath9k_cmn_debug_phy_err(i32 %81, i32* %84)
  %86 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %87 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %91 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 256, i32 %89, %struct.ath9k_htc_priv* %90, i32* @fops_slot)
  %92 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %93 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %97 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 256, i32 %95, %struct.ath9k_htc_priv* %96, i32* @fops_queue)
  %98 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %99 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %103 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 384, i32 %101, %struct.ath9k_htc_priv* %102, i32* @fops_debug)
  %104 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %105 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %109 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ath9k_cmn_debug_base_eeprom(i32 %107, i32 %110)
  %112 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %113 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %117 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ath9k_cmn_debug_modal_eeprom(i32 %115, i32 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %32, %29
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @ath9k_cmn_spectral_init_debug(i32*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ath9k_htc_priv*, i32*) #1

declare dso_local i32 @ath9k_cmn_debug_recv(i32, i32*) #1

declare dso_local i32 @ath9k_cmn_debug_phy_err(i32, i32*) #1

declare dso_local i32 @ath9k_cmn_debug_base_eeprom(i32, i32) #1

declare dso_local i32 @ath9k_cmn_debug_modal_eeprom(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
