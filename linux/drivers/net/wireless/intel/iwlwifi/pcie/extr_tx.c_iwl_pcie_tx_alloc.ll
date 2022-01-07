; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_10__**, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Scheduler BC Table allocation failed\0A\00", align 1
@IWL_KW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Keep Warm allocation failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Not enough memory for txq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IWL_CMD_QUEUE_SIZE = common dso_local global i32 0, align 4
@IWL_DEFAULT_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Tx %d queue alloc failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_tx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_tx_alloc(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %7, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %25 = icmp sge i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i64 4, i64 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i64 @WARN_ON(%struct.TYPE_10__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %165

40:                                               ; preds = %1
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %42 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %42, i32 0, i32 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans* %41, i32* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %50 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %165

51:                                               ; preds = %40
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %53 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %53, i32 0, i32 3
  %55 = load i32, i32* @IWL_KW_SIZE, align 4
  %56 = call i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans* %52, i32* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %61 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %165

62:                                               ; preds = %51
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.TYPE_10__* @kcalloc(i32 %69, i32 4, i32 %70)
  %72 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %72, i32 0, i32 2
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %73, align 8
  %74 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %62
  %79 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %80 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %165

83:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %161, %83
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %85, %92
  br i1 %93, label %94, label %164

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %97 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load i32, i32* @u32, align 4
  %105 = load i32, i32* @IWL_CMD_QUEUE_SIZE, align 4
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @max_t(i32 %104, i32 %105, i32 %110)
  store i32 %111, i32* %6, align 4
  br label %121

112:                                              ; preds = %94
  %113 = load i32, i32* @u32, align 4
  %114 = load i32, i32* @IWL_DEFAULT_QUEUE_SIZE, align 4
  %115 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %116 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @max_t(i32 %113, i32 %114, i32 %119)
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %112, %103
  %122 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %123 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %122, i32 0, i32 2
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 %126
  %128 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %130, i64 %132
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %133, align 8
  %134 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %135 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %136 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %137, i64 %139
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @iwl_pcie_txq_alloc(%struct.iwl_trans* %134, %struct.TYPE_10__* %141, i32 %142, i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %121
  %148 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %165

151:                                              ; preds = %121
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %154 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %155, i64 %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store i32 %152, i32* %160, align 4
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %84

164:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %169

165:                                              ; preds = %147, %78, %59, %48, %37
  %166 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %167 = call i32 @iwl_pcie_tx_free(%struct.iwl_trans* %166)
  %168 = load i32, i32* %4, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(%struct.TYPE_10__*) #1

declare dso_local i32 @iwl_pcie_alloc_dma_ptr(%struct.iwl_trans*, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_alloc(%struct.iwl_trans*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @iwl_pcie_tx_free(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
