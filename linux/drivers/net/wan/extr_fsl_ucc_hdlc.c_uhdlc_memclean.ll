; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_uhdlc_memclean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_uhdlc_memclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_hdlc_private = type { i64, i32*, i32, i64, i32*, i32*, i32*, i32*, i32*, i64, %struct.TYPE_2__*, i64, i32*, i64, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@RX_BD_RING_LEN = common dso_local global i32 0, align 4
@TX_BD_RING_LEN = common dso_local global i32 0, align 4
@MAX_RX_BUF_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucc_hdlc_private*)* @uhdlc_memclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhdlc_memclean(%struct.ucc_hdlc_private* %0) #0 {
  %2 = alloca %struct.ucc_hdlc_private*, align 8
  store %struct.ucc_hdlc_private* %0, %struct.ucc_hdlc_private** %2, align 8
  %3 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %4 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %3, i32 0, i32 10
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @qe_muram_free(i64 %7)
  %9 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %10 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %9, i32 0, i32 10
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @qe_muram_free(i64 %13)
  %15 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %16 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %15, i32 0, i32 14
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %21 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RX_BD_RING_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %28 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %27, i32 0, i32 14
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %31 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %30, i32 0, i32 13
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dma_free_coherent(i32 %22, i32 %26, i32* %29, i64 %32)
  %34 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %35 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %34, i32 0, i32 14
  store i32* null, i32** %35, align 8
  %36 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %37 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %36, i32 0, i32 13
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %19, %1
  %39 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %40 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %39, i32 0, i32 12
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %45 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TX_BD_RING_LEN, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %52 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %51, i32 0, i32 12
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %55 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %54, i32 0, i32 11
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dma_free_coherent(i32 %46, i32 %50, i32* %53, i64 %56)
  %58 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %59 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %58, i32 0, i32 12
  store i32* null, i32** %59, align 8
  %60 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %61 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %60, i32 0, i32 11
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %43, %38
  %63 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %64 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %63, i32 0, i32 10
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %69 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @qe_muram_free(i64 %70)
  %72 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %73 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %72, i32 0, i32 10
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %73, align 8
  %74 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %75 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %74, i32 0, i32 9
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %62
  %77 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %78 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %82 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %81, i32 0, i32 8
  store i32* null, i32** %82, align 8
  %83 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %84 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %88 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %87, i32 0, i32 7
  store i32* null, i32** %88, align 8
  %89 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %90 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %76
  %94 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %95 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @iounmap(i32* %96)
  %98 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %99 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %98, i32 0, i32 6
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %93, %76
  %101 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %102 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %107 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ucc_fast_free(i32* %108)
  %110 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %111 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %110, i32 0, i32 5
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %105, %100
  %113 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %114 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %119 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RX_BD_RING_LEN, align 4
  %122 = load i32, i32* @MAX_RX_BUF_LENGTH, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %125 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %128 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @dma_free_coherent(i32 %120, i32 %123, i32* %126, i64 %129)
  %131 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %132 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %131, i32 0, i32 4
  store i32* null, i32** %132, align 8
  %133 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %134 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %117, %112
  %136 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %137 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  %141 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %142 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TX_BD_RING_LEN, align 4
  %145 = load i32, i32* @MAX_RX_BUF_LENGTH, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %148 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %151 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @dma_free_coherent(i32 %143, i32 %146, i32* %149, i64 %152)
  %154 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %155 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %154, i32 0, i32 1
  store i32* null, i32** %155, align 8
  %156 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %157 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %140, %135
  ret void
}

declare dso_local i32 @qe_muram_free(i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @ucc_fast_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
