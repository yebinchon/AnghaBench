; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_compatible_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_compatible_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }
%struct.libipw_network = type { i32*, i32*, i32, i32, i32 }
%struct.ipw_supported_rates = type { i32*, i64 }

@IPW_MAX_RATES = common dso_local global i32 0, align 4
@LIBIPW_BASIC_RATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Adding masked mandatory rate %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Rate %02X masked : 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.libipw_network*, %struct.ipw_supported_rates*)* @ipw_compatible_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_compatible_rates(%struct.ipw_priv* %0, %struct.libipw_network* %1, %struct.ipw_supported_rates* %2) #0 {
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.libipw_network*, align 8
  %6 = alloca %struct.ipw_supported_rates*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.libipw_network* %1, %struct.libipw_network** %5, align 8
  store %struct.ipw_supported_rates* %2, %struct.ipw_supported_rates** %6, align 8
  %9 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %10 = call i32 @memset(%struct.ipw_supported_rates* %9, i32 0, i32 16)
  %11 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %12 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IPW_MAX_RATES, align 4
  %15 = call i32 @min(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %17 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %99, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %102

22:                                               ; preds = %18
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %24 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %25 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %28 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ipw_is_rate_in_mask(%struct.ipw_priv* %23, i32 %26, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %83, label %36

36:                                               ; preds = %22
  %37 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %38 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LIBIPW_BASIC_RATE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %36
  %48 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %49 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %57 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %64 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %67 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %70, align 4
  br label %99

71:                                               ; preds = %36
  %72 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %73 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %80 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %81)
  br label %99

83:                                               ; preds = %22
  %84 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %85 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %92 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %95 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %90, i32* %98, align 4
  br label %99

99:                                               ; preds = %83, %71, %47
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %18

102:                                              ; preds = %18
  %103 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %104 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IPW_MAX_RATES, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @min(i32 %105, i32 %108)
  store i32 %109, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %191, %102
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %194

114:                                              ; preds = %110
  %115 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %116 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %117 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %120 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ipw_is_rate_in_mask(%struct.ipw_priv* %115, i32 %118, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %175, label %128

128:                                              ; preds = %114
  %129 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %130 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @LIBIPW_BASIC_RATE_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %128
  %140 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %141 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, ...) @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %149 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %156 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %159 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %154, i32* %162, align 4
  br label %191

163:                                              ; preds = %128
  %164 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %165 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %172 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i32, ...) @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %173)
  br label %191

175:                                              ; preds = %114
  %176 = load %struct.libipw_network*, %struct.libipw_network** %5, align 8
  %177 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %184 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %6, align 8
  %187 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %182, i32* %190, align 4
  br label %191

191:                                              ; preds = %175, %163, %139
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %110

194:                                              ; preds = %110
  ret i32 1
}

declare dso_local i32 @memset(%struct.ipw_supported_rates*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ipw_is_rate_in_mask(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_SCAN(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
