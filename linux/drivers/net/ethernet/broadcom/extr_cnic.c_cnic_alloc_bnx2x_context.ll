; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_bnx2x_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_bnx2x_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.TYPE_5__*, i32, %struct.cnic_local* }
%struct.TYPE_5__ = type { i32 }
%struct.cnic_local = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bnx2x = type { i32 }

@BNX2X_CONTEXT_MEM_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_alloc_bnx2x_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_bnx2x_context(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 2
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %4, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.bnx2x* @netdev_priv(i32 %15)
  store %struct.bnx2x* %16, %struct.bnx2x** %5, align 8
  %17 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 6
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @BNX2X_CONTEXT_MEM_SIZE, align 4
  %23 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %24 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = srem i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %1
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %40 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %39, i32 0, i32 6
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %166

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.TYPE_6__* @kcalloc(i32 %49, i32 4, i32 %50)
  %52 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %53 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %52, i32 0, i32 5
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp eq %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %166

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %64 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %67 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %69 = call i32 @CHIP_IS_E1(%struct.bnx2x* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %73 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %78

74:                                               ; preds = %61
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BNX2X_CONTEXT_MEM_SIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %83 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %162, %78
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %165

88:                                               ; preds = %84
  %89 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %90 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %94 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %97 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %96, i32 0, i32 5
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32* @dma_alloc_coherent(i32* %92, i32 %95, i32* %102, i32 %103)
  %105 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %106 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %105, i32 0, i32 5
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32* %104, i32** %111, align 8
  %112 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %113 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %112, i32 0, i32 5
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %88
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %166

124:                                              ; preds = %88
  %125 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %126 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %124
  %130 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %131 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %129
  %136 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %137 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %145 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = and i32 %143, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %135
  %151 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %152 = call i32 @cnic_free_context(%struct.cnic_dev* %151)
  %153 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %154 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %157 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 8
  store i32 -1, i32* %9, align 4
  br label %162

160:                                              ; preds = %135
  br label %161

161:                                              ; preds = %160, %129, %124
  br label %162

162:                                              ; preds = %161, %150
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %84

165:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %121, %58, %45
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local %struct.TYPE_6__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cnic_free_context(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
