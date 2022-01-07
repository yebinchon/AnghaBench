; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_check_cqe_rx_errs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_check_cqe_rx_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cqe_rx_t = type { i32, i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"RX error CQE err_level 0x%x err_opcode 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_check_cqe_rx_errs(%struct.nicvf* %0, %struct.cqe_rx_t* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.cqe_rx_t*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.cqe_rx_t* %1, %struct.cqe_rx_t** %4, align 8
  %5 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %6 = load i32, i32* @rx_err, align 4
  %7 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %8 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %4, align 8
  %11 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %4, align 8
  %14 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_err(%struct.nicvf* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %4, align 8
  %18 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %188 [
    i32 132, label %20
    i32 133, label %27
    i32 134, label %34
    i32 131, label %41
    i32 136, label %48
    i32 145, label %55
    i32 144, label %62
    i32 142, label %69
    i32 146, label %76
    i32 143, label %83
    i32 147, label %90
    i32 151, label %97
    i32 149, label %104
    i32 148, label %111
    i32 150, label %118
    i32 141, label %125
    i32 139, label %132
    i32 140, label %139
    i32 128, label %146
    i32 137, label %153
    i32 130, label %160
    i32 129, label %167
    i32 138, label %174
    i32 135, label %181
  ]

20:                                               ; preds = %2
  %21 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %22 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @this_cpu_inc(i32 %25)
  br label %188

27:                                               ; preds = %2
  %28 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %29 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 22
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @this_cpu_inc(i32 %32)
  br label %188

34:                                               ; preds = %2
  %35 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %36 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 21
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @this_cpu_inc(i32 %39)
  br label %188

41:                                               ; preds = %2
  %42 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %43 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @this_cpu_inc(i32 %46)
  br label %188

48:                                               ; preds = %2
  %49 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %50 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 19
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @this_cpu_inc(i32 %53)
  br label %188

55:                                               ; preds = %2
  %56 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %57 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 18
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @this_cpu_inc(i32 %60)
  br label %188

62:                                               ; preds = %2
  %63 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %64 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @this_cpu_inc(i32 %67)
  br label %188

69:                                               ; preds = %2
  %70 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %71 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @this_cpu_inc(i32 %74)
  br label %188

76:                                               ; preds = %2
  %77 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %78 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 15
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @this_cpu_inc(i32 %81)
  br label %188

83:                                               ; preds = %2
  %84 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %85 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @this_cpu_inc(i32 %88)
  br label %188

90:                                               ; preds = %2
  %91 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %92 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @this_cpu_inc(i32 %95)
  br label %188

97:                                               ; preds = %2
  %98 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %99 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @this_cpu_inc(i32 %102)
  br label %188

104:                                              ; preds = %2
  %105 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %106 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @this_cpu_inc(i32 %109)
  br label %188

111:                                              ; preds = %2
  %112 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %113 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @this_cpu_inc(i32 %116)
  br label %188

118:                                              ; preds = %2
  %119 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %120 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @this_cpu_inc(i32 %123)
  br label %188

125:                                              ; preds = %2
  %126 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %127 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @this_cpu_inc(i32 %130)
  br label %188

132:                                              ; preds = %2
  %133 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %134 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @this_cpu_inc(i32 %137)
  br label %188

139:                                              ; preds = %2
  %140 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %141 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @this_cpu_inc(i32 %144)
  br label %188

146:                                              ; preds = %2
  %147 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %148 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @this_cpu_inc(i32 %151)
  br label %188

153:                                              ; preds = %2
  %154 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %155 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @this_cpu_inc(i32 %158)
  br label %188

160:                                              ; preds = %2
  %161 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %162 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @this_cpu_inc(i32 %165)
  br label %188

167:                                              ; preds = %2
  %168 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %169 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @this_cpu_inc(i32 %172)
  br label %188

174:                                              ; preds = %2
  %175 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %176 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @this_cpu_inc(i32 %179)
  br label %188

181:                                              ; preds = %2
  %182 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %183 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @this_cpu_inc(i32 %186)
  br label %188

188:                                              ; preds = %2, %181, %174, %167, %160, %153, %146, %139, %132, %125, %118, %111, %104, %97, %90, %83, %76, %69, %62, %55, %48, %41, %34, %27, %20
  ret i32 1
}

declare dso_local i32 @netif_err(%struct.nicvf*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
