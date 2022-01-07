; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_txq = type { i32, %struct.TYPE_8__*, i32, i8*, i8*, i32, %struct.iwl_trans_pcie*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.iwl_trans_pcie = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@iwl_pcie_txq_stuck_timer = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IWL_FIRST_TB_SIZE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_txq_alloc(%struct.iwl_trans* %0, %struct.iwl_txq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %15 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %14)
  store %struct.iwl_trans_pcie* %15, %struct.iwl_trans_pcie** %10, align 8
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %18, %25
  store i64 %26, i64* %11, align 8
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %4
  %32 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %31, %4
  %37 = phi i1 [ true, %4 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %201

44:                                               ; preds = %36
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %54, %56
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %60 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %59, i32 0, i32 7
  %61 = load i32, i32* @iwl_pcie_txq_stuck_timer, align 4
  %62 = call i32 @timer_setup(i32* %60, i32 %61, i32 0)
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %64 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %64, i32 0, i32 6
  store %struct.iwl_trans_pcie* %63, %struct.iwl_trans_pcie** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.TYPE_8__* @kcalloc(i32 %69, i32 4, i32 %70)
  %72 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %72, i32 0, i32 1
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %58
  br label %165

79:                                               ; preds = %58
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.TYPE_8__* @kmalloc(i32 4, i32 %88)
  %90 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %91 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %98 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %87
  br label %165

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %83

111:                                              ; preds = %83
  br label %112

112:                                              ; preds = %111, %79
  %113 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %114 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %118 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %117, i32 0, i32 2
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @dma_alloc_coherent(i32 %115, i64 %116, i32* %118, i32 %119)
  %121 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %122 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %124 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %112
  br label %165

128:                                              ; preds = %112
  %129 = load i32, i32* @IWL_FIRST_TB_SIZE_ALIGN, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ne i64 %130, 1
  %132 = zext i1 %131 to i32
  %133 = call i32 @BUILD_BUG_ON(i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 1, %135
  store i64 %136, i64* %12, align 8
  %137 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %138 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %142 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %141, i32 0, i32 5
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @dma_alloc_coherent(i32 %139, i64 %140, i32* %142, i32 %143)
  %145 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %146 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %148 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %128
  br label %153

152:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %201

153:                                              ; preds = %151
  %154 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %155 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %159 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %162 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dma_free_coherent(i32 %156, i64 %157, i8* %160, i32 %163)
  br label %165

165:                                              ; preds = %153, %127, %106, %78
  %166 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %167 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = icmp ne %struct.TYPE_8__* %168, null
  br i1 %169, label %170, label %192

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %170
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %188, %173
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %180 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %179, i32 0, i32 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = call i32 @kfree(%struct.TYPE_8__* %186)
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %174

191:                                              ; preds = %174
  br label %192

192:                                              ; preds = %191, %170, %165
  %193 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %194 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %193, i32 0, i32 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = call i32 @kfree(%struct.TYPE_8__* %195)
  %197 = load %struct.iwl_txq*, %struct.iwl_txq** %7, align 8
  %198 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %197, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %198, align 8
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %192, %152, %41
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
