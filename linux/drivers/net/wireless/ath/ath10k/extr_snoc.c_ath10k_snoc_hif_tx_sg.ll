; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_hif_tx_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_hif_tx_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_hif_sg_item = type { i32, i32, i32, i32 }
%struct.ath10k_snoc = type { %struct.ath10k_snoc_pipe* }
%struct.ath10k_snoc_pipe = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32 }
%struct.ath10k_ce = type { i32 }

@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"snoc tx item %d paddr %pad len %d n_items %d\0A\00", align 1
@CE_SEND_FLAG_GATHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i64, %struct.ath10k_hif_sg_item*, i32)* @ath10k_snoc_hif_tx_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_hif_tx_sg(%struct.ath10k* %0, i64 %1, %struct.ath10k_hif_sg_item* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath10k_hif_sg_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_snoc*, align 8
  %11 = alloca %struct.ath10k_ce*, align 8
  %12 = alloca %struct.ath10k_snoc_pipe*, align 8
  %13 = alloca %struct.ath10k_ce_pipe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ath10k_hif_sg_item* %2, %struct.ath10k_hif_sg_item** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %17 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %16)
  store %struct.ath10k_snoc* %17, %struct.ath10k_snoc** %10, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %19 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %18)
  store %struct.ath10k_ce* %19, %struct.ath10k_ce** %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %10, align 8
  %21 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %20, i32 0, i32 0
  %22 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %22, i64 %23
  store %struct.ath10k_snoc_pipe* %24, %struct.ath10k_snoc_pipe** %12, align 8
  %25 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %12, align 8
  %26 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %25, i32 0, i32 0
  %27 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %26, align 8
  store %struct.ath10k_ce_pipe* %27, %struct.ath10k_ce_pipe** %13, align 8
  %28 = load %struct.ath10k_ce*, %struct.ath10k_ce** %11, align 8
  %29 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %84, %4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %31
  %37 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %38 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %40, i64 %42
  %44 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %43, i32 0, i32 2
  %45 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %45, i64 %47
  %49 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ath10k_dbg(%struct.ath10k* %37, i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39, i32* %44, i32 %50, i32 %51)
  %53 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %54 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %54, i64 %56
  %58 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %60, i64 %62
  %64 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %66, i64 %68
  %70 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %72, i64 %74
  %76 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CE_SEND_FLAG_GATHER, align 4
  %79 = call i32 @ath10k_ce_send_nolock(%struct.ath10k_ce_pipe* %53, i32 %59, i32 %65, i32 %71, i32 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %36
  br label %137

83:                                               ; preds = %36
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %31

87:                                               ; preds = %31
  %88 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %89 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %91, i64 %93
  %95 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %94, i32 0, i32 2
  %96 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %96, i64 %98
  %100 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @ath10k_dbg(%struct.ath10k* %88, i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %90, i32* %95, i32 %101, i32 %102)
  %104 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %105 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %105, i64 %107
  %109 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %111, i64 %113
  %115 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %117, i64 %119
  %121 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %123, i64 %125
  %127 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ath10k_ce_send_nolock(%struct.ath10k_ce_pipe* %104, i32 %110, i32 %116, i32 %122, i32 %128, i32 0)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %87
  br label %137

133:                                              ; preds = %87
  %134 = load %struct.ath10k_ce*, %struct.ath10k_ce** %11, align 8
  %135 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock_bh(i32* %135)
  store i32 0, i32* %5, align 4
  br label %152

137:                                              ; preds = %132, %82
  br label %138

138:                                              ; preds = %144, %137
  %139 = load i32, i32* %15, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %13, align 8
  %143 = call i32 @__ath10k_ce_send_revert(%struct.ath10k_ce_pipe* %142)
  br label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %15, align 4
  br label %138

147:                                              ; preds = %138
  %148 = load %struct.ath10k_ce*, %struct.ath10k_ce** %11, align 8
  %149 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock_bh(i32* %149)
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %147, %133
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @ath10k_ce_send_nolock(%struct.ath10k_ce_pipe*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__ath10k_ce_send_revert(%struct.ath10k_ce_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
