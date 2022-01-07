; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_try_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_try_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ant_comb = type { i32, i32, i32, i32, i32 }
%struct.ath_hw_antcomb_conf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*, i32, i32, i32)* @ath_ant_try_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_ant_try_scan(%struct.ath_ant_comb* %0, %struct.ath_hw_antcomb_conf* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_ant_comb*, align 8
  %7 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_ant_comb* %0, %struct.ath_ant_comb** %6, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %146 [
    i32 128, label %12
    i32 131, label %25
    i32 129, label %38
    i32 130, label %46
  ]

12:                                               ; preds = %5
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %15 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %18 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %20 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %19, i32 0, i32 2
  store i32 1, i32* %20, align 4
  %21 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %22 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %21, i32 0, i32 0
  store i32 131, i32* %22, align 4
  %23 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %24 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %23, i32 0, i32 1
  store i32 129, i32* %24, align 4
  br label %147

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %28 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %31 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %33 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %35 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %34, i32 0, i32 0
  store i32 128, i32* %35, align 4
  %36 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %37 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %36, i32 0, i32 1
  store i32 129, i32* %37, align 4
  br label %147

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %41 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %43 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %45 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %44, i32 0, i32 1
  store i32 130, i32* %45, align 4
  br label %147

46:                                               ; preds = %5
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %49 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %51 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %53 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %56 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %59 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = icmp sgt i32 %54, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %46
  %64 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %65 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %68 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %73 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %76 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %81 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %80, i32 0, i32 0
  store i32 128, i32* %81, align 4
  %82 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %83 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %82, i32 0, i32 1
  store i32 129, i32* %83, align 4
  br label %103

84:                                               ; preds = %71, %63
  %85 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %86 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %89 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %94 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %93, i32 0, i32 0
  store i32 128, i32* %94, align 4
  %95 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %96 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %95, i32 0, i32 1
  store i32 130, i32* %96, align 4
  br label %102

97:                                               ; preds = %84
  %98 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %99 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %98, i32 0, i32 0
  store i32 128, i32* %99, align 4
  %100 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %101 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %100, i32 0, i32 1
  store i32 131, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %79
  br label %145

104:                                              ; preds = %46
  %105 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %106 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %109 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %114 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %117 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %122 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %121, i32 0, i32 0
  store i32 131, i32* %122, align 4
  %123 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %124 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %123, i32 0, i32 1
  store i32 129, i32* %124, align 4
  br label %144

125:                                              ; preds = %112, %104
  %126 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %127 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %130 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %135 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %134, i32 0, i32 0
  store i32 131, i32* %135, align 4
  %136 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %137 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %136, i32 0, i32 1
  store i32 130, i32* %137, align 4
  br label %143

138:                                              ; preds = %125
  %139 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %140 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %139, i32 0, i32 0
  store i32 131, i32* %140, align 4
  %141 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %7, align 8
  %142 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %141, i32 0, i32 1
  store i32 128, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %120
  br label %145

145:                                              ; preds = %144, %103
  br label %147

146:                                              ; preds = %5
  br label %147

147:                                              ; preds = %146, %145, %38, %25, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
