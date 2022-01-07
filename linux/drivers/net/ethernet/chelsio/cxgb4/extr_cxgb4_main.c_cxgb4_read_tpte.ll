; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_read_tpte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_read_tpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MA_EDRAM0_BAR_A = common dso_local global i32 0, align 4
@MA_EDRAM1_BAR_A = common dso_local global i32 0, align 4
@MA_EXT_MEMORY0_BAR_A = common dso_local global i32 0, align 4
@MA_TARGET_MEM_ENABLE_A = common dso_local global i32 0, align 4
@HMA_MUX_F = common dso_local global i32 0, align 4
@MA_EXT_MEMORY1_BAR_A = common dso_local global i32 0, align 4
@MEM_EDC0 = common dso_local global i32 0, align 4
@MEM_EDC1 = common dso_local global i32 0, align 4
@MEM_HMA = common dso_local global i32 0, align 4
@MEM_MC0 = common dso_local global i32 0, align 4
@MEM_MC1 = common dso_local global i32 0, align 4
@T4_MEMORY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"stag %#x, offset %#x out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_read_tpte(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.adapter*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.adapter* @netdev2adap(%struct.net_device* %23)
  store %struct.adapter* %24, %struct.adapter** %20, align 8
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 8
  %27 = mul nsw i32 %26, 32
  %28 = load %struct.adapter*, %struct.adapter** %20, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %27, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.adapter*, %struct.adapter** %20, align 8
  %35 = load i32, i32* @MA_EDRAM0_BAR_A, align 4
  %36 = call i32 @t4_read_reg(%struct.adapter* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @EDRAM0_SIZE_G(i32 %37)
  %39 = shl i32 %38, 20
  store i32 %39, i32* %8, align 4
  %40 = load %struct.adapter*, %struct.adapter** %20, align 8
  %41 = load i32, i32* @MA_EDRAM1_BAR_A, align 4
  %42 = call i32 @t4_read_reg(%struct.adapter* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @EDRAM1_SIZE_G(i32 %43)
  %45 = shl i32 %44, 20
  store i32 %45, i32* %9, align 4
  %46 = load %struct.adapter*, %struct.adapter** %20, align 8
  %47 = load i32, i32* @MA_EXT_MEMORY0_BAR_A, align 4
  %48 = call i32 @t4_read_reg(%struct.adapter* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @EXT_MEM0_SIZE_G(i32 %49)
  %51 = shl i32 %50, 20
  store i32 %51, i32* %10, align 4
  %52 = load %struct.adapter*, %struct.adapter** %20, align 8
  %53 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %54 = call i32 @t4_read_reg(%struct.adapter* %52, i32 %53)
  %55 = load i32, i32* @HMA_MUX_F, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %3
  %59 = load %struct.adapter*, %struct.adapter** %20, align 8
  %60 = load i32, i32* @MA_EXT_MEMORY1_BAR_A, align 4
  %61 = call i32 @t4_read_reg(%struct.adapter* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @EXT_MEM1_SIZE_G(i32 %62)
  %64 = shl i32 %63, 20
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %58, %3
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @MEM_EDC0, align 4
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %19, align 4
  br label %143

79:                                               ; preds = %65
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* @MEM_EDC1, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %19, align 4
  br label %142

88:                                               ; preds = %79
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* @MEM_HMA, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %14, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %19, align 4
  br label %141

102:                                              ; preds = %91, %88
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* @MEM_MC0, align 4
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %19, align 4
  br label %140

111:                                              ; preds = %102
  %112 = load %struct.adapter*, %struct.adapter** %20, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @is_t5(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %111
  %119 = load %struct.adapter*, %struct.adapter** %20, align 8
  %120 = load i32, i32* @MA_EXT_MEMORY1_BAR_A, align 4
  %121 = call i32 @t4_read_reg(%struct.adapter* %119, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @EXT_MEM1_SIZE_G(i32 %122)
  %124 = shl i32 %123, 20
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %118
  %132 = load i32, i32* @MEM_MC1, align 4
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %19, align 4
  br label %137

136:                                              ; preds = %118
  br label %157

137:                                              ; preds = %131
  br label %139

138:                                              ; preds = %111
  br label %157

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139, %106
  br label %141

141:                                              ; preds = %140, %97
  br label %142

142:                                              ; preds = %141, %83
  br label %143

143:                                              ; preds = %142, %76
  %144 = load %struct.adapter*, %struct.adapter** %20, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 1
  %146 = call i32 @spin_lock(i32* %145)
  %147 = load %struct.adapter*, %struct.adapter** %20, align 8
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* @T4_MEMORY_READ, align 4
  %152 = call i32 @t4_memory_rw(%struct.adapter* %147, i32 0, i32 %148, i32 %149, i32 32, i32* %150, i32 %151)
  store i32 %152, i32* %22, align 4
  %153 = load %struct.adapter*, %struct.adapter** %20, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 1
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load i32, i32* %22, align 4
  store i32 %156, i32* %4, align 4
  br label %166

157:                                              ; preds = %138, %136
  %158 = load %struct.adapter*, %struct.adapter** %20, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %157, %143
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @EDRAM0_SIZE_G(i32) #1

declare dso_local i32 @EDRAM1_SIZE_G(i32) #1

declare dso_local i32 @EXT_MEM0_SIZE_G(i32) #1

declare dso_local i32 @EXT_MEM1_SIZE_G(i32) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
