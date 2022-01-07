; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_10__**, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FH_KW_MEM_ADDR_REG = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IWL_CMD_QUEUE_SIZE = common dso_local global i32 0, align 4
@IWL_DEFAULT_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Tx %d queue init failed\0A\00", align 1
@SCD_GP_CTRL = common dso_local global i32 0, align 4
@SCD_GP_CTRL_AUTO_ACTIVE_MODE = common dso_local global i32 0, align 4
@SCD_GP_CTRL_ENABLE_31_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_tx_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %18 = call i32 @iwl_pcie_tx_alloc(%struct.iwl_trans* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %133

22:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %28 = call i32 @iwl_scd_deactivate_fifos(%struct.iwl_trans* %27)
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %30 = load i32, i32* @FH_KW_MEM_ADDR_REG, align 4
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 4
  %36 = call i32 @iwl_write_direct32(%struct.iwl_trans* %29, i32 %30, i32 %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %111, %23
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %114

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32, i32* @u32, align 4
  %61 = load i32, i32* @IWL_CMD_QUEUE_SIZE, align 4
  %62 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %63 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @max_t(i32 %60, i32 %61, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %77

68:                                               ; preds = %50
  %69 = load i32, i32* @u32, align 4
  %70 = load i32, i32* @IWL_DEFAULT_QUEUE_SIZE, align 4
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @max_t(i32 %69, i32 %70, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68, %59
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %79 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %80 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %81, i64 %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @iwl_pcie_txq_init(%struct.iwl_trans* %78, %struct.TYPE_10__* %85, i32 %86, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @IWL_ERR(%struct.iwl_trans* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %133

95:                                               ; preds = %77
  %96 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %97 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @FH_MEM_CBBC_QUEUE(%struct.iwl_trans* %97, i32 %98)
  %100 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %102, i64 %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 8
  %110 = call i32 @iwl_write_direct32(%struct.iwl_trans* %96, i32 %99, i32 %109)
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %40

114:                                              ; preds = %40
  %115 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %116 = load i32, i32* @SCD_GP_CTRL, align 4
  %117 = load i32, i32* @SCD_GP_CTRL_AUTO_ACTIVE_MODE, align 4
  %118 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %115, i32 %116, i32 %117)
  %119 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %120 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 20
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %129 = load i32, i32* @SCD_GP_CTRL, align 4
  %130 = load i32, i32* @SCD_GP_CTRL_ENABLE_31_QUEUES, align 4
  %131 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %114
  store i32 0, i32* %2, align 4
  br label %141

133:                                              ; preds = %91, %21
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %138 = call i32 @iwl_pcie_tx_free(%struct.iwl_trans* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %132
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_tx_alloc(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_scd_deactivate_fifos(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_init(%struct.iwl_trans*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @FH_MEM_CBBC_QUEUE(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_tx_free(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
